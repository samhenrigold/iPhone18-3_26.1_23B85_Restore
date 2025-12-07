uint64_t Collection<>.parallelCompactMap<A>(parallelism:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v12 = swift_task_alloc();
  v6[6] = v12;
  v13 = sub_22FE43744();
  v6[7] = v13;
  *v12 = v6;
  v12[1] = sub_22FE12938;

  return Collection<>.parallelMap<A>(parallelism:transform:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_22FE12938(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return MEMORY[0x2822009F8](sub_22FE12A88, 0, 0);
  }
}

uint64_t sub_22FE12A88()
{
  v1 = *(v0 + 24);
  *(v0 + 16) = *(v0 + 72);
  v2 = swift_task_alloc();
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_22FE43354();
  swift_getWitnessTable();
  v4 = sub_22FE431B4();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t Collection<>.parallelFilter(parallelism:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FE12C38, 0, 0);
}

uint64_t sub_22FE12C38()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[8] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v3;

  v6 = swift_task_alloc();
  v0[9] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v6 = v0;
  v6[1] = sub_22FE12D58;
  v8 = v0[6];
  v9 = v0[5];
  v10 = v0[2];

  return Collection<>.parallelCompactMap<A>(parallelism:transform:)(v10, &unk_22FE4ED68, v5, v9, AssociatedTypeWitness, v8);
}

uint64_t sub_22FE12D58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FE10E6C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_22FE12EB0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_22FE12FAC;

  return v10(a2);
}

uint64_t sub_22FE12FAC(char a1)
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
    *(v4 + 56) = a1 & 1;

    return MEMORY[0x2822009F8](sub_22FE130FC, 0, 0);
  }
}

uint64_t sub_22FE130FC()
{
  v1 = *(v0 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  if (v1 == 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(*(v0 + 16), *(v0 + 24), AssociatedTypeWitness);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  (*(v3 + 56))(*(v0 + 16), v4, 1, AssociatedTypeWitness);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22FE131FC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22FD8C738;

  return sub_22FE12EB0(a1, a2, v9, v8, v6, v7);
}

uint64_t Sequence.asyncCompactMap<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v9 = sub_22FE43744();
  v6[9] = v9;
  v6[10] = *(v9 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = *(a4 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v6[16] = *(AssociatedTypeWitness - 8);
  v6[17] = swift_task_alloc();
  sub_22FE43744();
  v6[18] = swift_task_alloc();
  v6[19] = *(a3 - 8);
  v6[20] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v6[21] = v11;
  v6[22] = *(v11 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE13574, 0, 0);
}

uint64_t sub_22FE13574()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_22FE42F34();
  (*(v2 + 16))(v1, v3, v4);
  sub_22FE43184();
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  swift_getAssociatedConformanceWitness();
  sub_22FE437A4();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    if (sub_22FE43424())
    {

      sub_22FE433B4();
      sub_22FE13F6C();
      swift_allocError();
      sub_22FE42F44();
      swift_willThrow();
      v12 = v0[22];
      v11 = v0[23];
      v13 = v0[21];
      (*(v0[16] + 8))(v0[17], v0[15]);
      (*(v12 + 8))(v11, v13);

      v14 = v0[1];

      return v14();
    }

    else
    {
      v18 = (v0[3] + *v0[3]);
      v15 = swift_task_alloc();
      v0[24] = v15;
      *v15 = v0;
      v15[1] = sub_22FE13908;
      v16 = v0[17];
      v17 = v0[11];

      return v18(v17, v16);
    }
  }
}

uint64_t sub_22FE13908()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_22FE13E6C;
  }

  else
  {
    v2 = sub_22FE13A24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FE13A24()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[6];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  if (v4 == 1)
  {
    v8 = v0[9];
    v9 = v0[10];
    (*(v6 + 8))(v0[17], v0[15]);
    (*(v9 + 8))(v1, v8);
  }

  else
  {
    v11 = v0[13];
    v10 = v0[14];
    (*(v2 + 32))(v10, v1, v3);
    (*(v2 + 16))(v11, v10, v3);
    sub_22FE43354();
    sub_22FE43324();
    (*(v2 + 8))(v10, v3);
    (*(v6 + 8))(v5, v7);
  }

  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  swift_getAssociatedConformanceWitness();
  sub_22FE437A4();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v15 = v0[2];

    v16 = v0[1];

    return v16(v15);
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    if (sub_22FE43424())
    {

      sub_22FE433B4();
      sub_22FE13F6C();
      swift_allocError();
      sub_22FE42F44();
      swift_willThrow();
      v19 = v0[22];
      v18 = v0[23];
      v20 = v0[21];
      (*(v0[16] + 8))(v0[17], v0[15]);
      (*(v19 + 8))(v18, v20);

      v21 = v0[1];

      return v21();
    }

    else
    {
      v25 = (v0[3] + *v0[3]);
      v22 = swift_task_alloc();
      v0[24] = v22;
      *v22 = v0;
      v22[1] = sub_22FE13908;
      v23 = v0[17];
      v24 = v0[11];

      return v25(v24, v23);
    }
  }
}

uint64_t sub_22FE13E6C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

unint64_t sub_22FE13F6C()
{
  result = qword_27DAE5110;
  if (!qword_27DAE5110)
  {
    sub_22FE433B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE5110);
  }

  return result;
}

uint64_t Sequence.asyncMap<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v6[11] = *(AssociatedTypeWitness - 8);
  v6[12] = swift_task_alloc();
  sub_22FE43744();
  v6[13] = swift_task_alloc();
  v6[14] = *(a3 - 8);
  v6[15] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE141D8, 0, 0);
}

uint64_t sub_22FE141D8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_22FE42F34();
  (*(v2 + 16))(v1, v3, v4);
  sub_22FE43184();
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_22FE437A4();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    if (sub_22FE43424())
    {

      sub_22FE433B4();
      sub_22FE13F6C();
      swift_allocError();
      sub_22FE42F44();
      swift_willThrow();
      v12 = v0[17];
      v11 = v0[18];
      v13 = v0[16];
      (*(v0[11] + 8))(v0[12], v0[10]);
      (*(v12 + 8))(v11, v13);

      v14 = v0[1];

      return v14();
    }

    else
    {
      v18 = (v0[3] + *v0[3]);
      v15 = swift_task_alloc();
      v0[19] = v15;
      *v15 = v0;
      v15[1] = sub_22FE14540;
      v16 = v0[12];
      v17 = v0[9];

      return v18(v17, v16);
    }
  }
}

uint64_t sub_22FE14540()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_22FE149B4;
  }

  else
  {
    v2 = sub_22FE1465C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FE1465C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_22FE43354();
  sub_22FE43324();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_22FE437A4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v7 = v0[2];

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    if (sub_22FE43424())
    {

      sub_22FE433B4();
      sub_22FE13F6C();
      swift_allocError();
      sub_22FE42F44();
      swift_willThrow();
      v11 = v0[17];
      v10 = v0[18];
      v12 = v0[16];
      (*(v0[11] + 8))(v0[12], v0[10]);
      (*(v11 + 8))(v10, v12);

      v13 = v0[1];

      return v13();
    }

    else
    {
      v17 = (v0[3] + *v0[3]);
      v14 = swift_task_alloc();
      v0[19] = v14;
      *v14 = v0;
      v14[1] = sub_22FE14540;
      v15 = v0[12];
      v16 = v0[9];

      return v17(v16, v15);
    }
  }
}

uint64_t sub_22FE149B4()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Set.asyncFilter(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v5[13] = *(a4 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  sub_22FE43744();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE14B9C, 0, 0);
}

uint64_t sub_22FE14B9C()
{
  v1 = v0[10];
  v0[7] = sub_22FE42F54();
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22FE43864();
    result = sub_22FE43544();
    v1 = v0[2];
    v3 = v0[3];
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[6];
  }

  else
  {
    v7 = -1 << *(v0[10] + 32);
    v8 = v0[10];
    v10 = *(v8 + 56);
    v3 = v8 + 56;
    v9 = v10;
    v5 = ~v7;
    v11 = -v7;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v6 = v12 & v9;

    v4 = 0;
  }

  v0[18] = v1;
  v0[19] = v3;
  v13 = v0[13];
  v0[21] = v4;
  v0[22] = v6;
  v0[20] = v5;
  if (v1 < 0)
  {
    if (sub_22FE43874())
    {
      sub_22FE43C94();
      swift_unknownObjectRelease();
LABEL_18:
      v0[23] = v4;
      v0[24] = v6;
      v17 = v0[16];
      v18 = v0[17];
      v19 = v0[13];
      v20 = v0[11];
      v21 = v0[8];
      (*(v19 + 56))(v18, 0, 1, v20);
      (*(v19 + 32))(v17, v18, v20);
      v26 = (v21 + *v21);
      v22 = swift_task_alloc();
      v0[25] = v22;
      *v22 = v0;
      v22[1] = sub_22FE14F0C;
      v23 = v0[16];

      return v26(v23);
    }

    v1 = v0[18];
    v13 = v0[13];
LABEL_22:
    (*(v13 + 56))(v0[17], 1, 1, v0[11]);
    sub_22FDAF1A8(v1);
    v24 = v0[7];

    v25 = v0[1];

    return v25(v24);
  }

  else
  {
    if (v6)
    {
      v14 = v4;
LABEL_17:
      v16 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      (*(v13 + 16))(v0[17], *(v1 + 48) + *(v13 + 72) * (v16 | (v14 << 6)), v0[11]);
      goto LABEL_18;
    }

    v15 = v4;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v14 >= ((v5 + 64) >> 6))
      {
        goto LABEL_22;
      }

      v6 = *(v3 + 8 * v14);
      ++v15;
      if (v6)
      {
        v4 = v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FE14F0C(char a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {

    v5 = sub_22FE153C8;
  }

  else
  {
    *(v4 + 216) = a1 & 1;
    v5 = sub_22FE15040;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FE15040()
{
  v1 = *(v0 + 128);
  if (*(v0 + 216))
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 104);
    v4 = *(v0 + 88);
    (*(v3 + 16))(*(v0 + 112), *(v0 + 128), v4);
    sub_22FE43554();
    sub_22FE43514();
    v5 = *(v3 + 8);
    v5(v2, v4);
    result = (v5)(v1, v4);
  }

  else
  {
    result = (*(*(v0 + 104) + 8))(*(v0 + 128), *(v0 + 88));
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 168) = v7;
  *(v0 + 176) = v8;
  v9 = *(v0 + 144);
  if (v9 < 0)
  {
    if (sub_22FE43874())
    {
      sub_22FE43C94();
      swift_unknownObjectRelease();
LABEL_15:
      *(v0 + 184) = v7;
      *(v0 + 192) = v8;
      v13 = *(v0 + 128);
      v14 = *(v0 + 136);
      v15 = *(v0 + 104);
      v16 = *(v0 + 88);
      v17 = *(v0 + 64);
      (*(v15 + 56))(v14, 0, 1, v16);
      (*(v15 + 32))(v13, v14, v16);
      v22 = (v17 + *v17);
      v18 = swift_task_alloc();
      *(v0 + 200) = v18;
      *v18 = v0;
      v18[1] = sub_22FE14F0C;
      v19 = *(v0 + 128);

      return v22(v19);
    }

    v9 = *(v0 + 144);
LABEL_19:
    (*(*(v0 + 104) + 56))(*(v0 + 136), 1, 1, *(v0 + 88));
    sub_22FDAF1A8(v9);
    v20 = *(v0 + 56);

    v21 = *(v0 + 8);

    return v21(v20);
  }

  else
  {
    if (v8)
    {
      v10 = v7;
LABEL_14:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      (*(*(v0 + 104) + 16))(*(v0 + 136), *(v9 + 48) + *(*(v0 + 104) + 72) * (v12 | (v10 << 6)), *(v0 + 88));
      goto LABEL_15;
    }

    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= ((*(v0 + 160) + 64) >> 6))
      {
        goto LABEL_19;
      }

      v8 = *(*(v0 + 152) + 8 * v10);
      ++v11;
      if (v8)
      {
        v7 = v10;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FE153C8()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[11];
  sub_22FDAF1A8(v0[18]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Dictionary.fetch(key:asyncDefault:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_22FE43744();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE15558, 0, 0);
}

uint64_t sub_22FE15558()
{
  v1 = v0[12];
  v2 = v0[8];
  sub_22FE42FB4();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    v9 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_22FE15734;
    v6 = v0[2];

    return v9(v6);
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[12], v0[8]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22FE15734()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FE15844(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[7];
  v8 = v1[8];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD73F54;

  return sub_22FE12334(a1, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_22FE15AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, void *, uint64_t, uint64_t))
{
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a1;
  v9[7] = a2;
  return a8(a7, v9, a3, a5);
}

uint64_t sub_22FE15AE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v23 - v18;
  v20(v17);
  if (!v8)
  {
    a3(a2);
    a4 = sub_22FE43004();
    v22 = *(v13 + 8);
    v22(v15, a6);
    v22(v19, a6);
  }

  return a4 & 1;
}

double Duration.timeInterval.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_22FE43E54();
  sub_22FE43E54();
  return v3 / 1.0e18 + v2;
}

uint64_t sub_22FE15D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t, uint64_t))
{
  v19[2] = a1;
  v20 = a6;
  v19[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  swift_getAssociatedConformanceWitness();
  sub_22FE43CF4();
  sub_22FE43CA4();
  sub_22FE43564();
  v16 = *(v9 + 8);
  v16(v12, a2);
  v17 = v20(v15, a2, a3);
  v16(v15, a2);
  return v17;
}

void _s10PhotosFace13TimeUtilitiesO12currentEpochSivgZ_0()
{
  v0 = sub_22FE42854();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDB1188(0x7961446465786946, 0xE800000000000000, 0, 1);
  if (v4)
  {
    sub_22FE42844();
    sub_22FE427F4();
    (*(v1 + 8))(v3, v0);
    sub_22FE43EB4();
    sub_22FDB13CC(0xD000000000000012, 0x800000022FE48A00, 0xC0DDD92E56000000);
    sub_22FE43E74();
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return;
      }

LABEL_8:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_22FE163F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22FE42D34();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_22FE42D24();
}

uint64_t sub_22FE16490@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_22FE42D34();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_22FE16560(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

id sub_22FE165F0@<X0>(void *a1@<X8>)
{
  result = sub_22FE16538(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_22FE1661C(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_22FE166F4(v5, *a2, *v2);
  v6[4] = v8;
  v6[5] = v7;
  return sub_22FE166AC;
}

void sub_22FE166AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t sub_22FE16760(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_22FE16858(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_22FE168E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_22FE16964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_22FE169C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_22FE16F70(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_22FE16A50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22FE16AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_22FE16B70()
{
  result = qword_27DAE5270;
  if (!qword_27DAE5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE5270);
  }

  return result;
}

uint64_t sub_22FE16CE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE5268, &qword_22FE4EEC8);
    sub_22FE16B70();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FE16DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_22FE43014();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FE16EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_22FE43014();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_22FE43674();
  result = sub_22FE43014();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

PhotosFace::Platform_optional __swiftcall Platform.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = PhotosFace_Platform_watch;
  }

  else
  {
    v1.value = PhotosFace_Platform_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22FE16FF4()
{
  result = qword_27DAE5288;
  if (!qword_27DAE5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE5288);
  }

  return result;
}

void *sub_22FE17048@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_22FE17078()
{
  result = qword_27DAE5290;
  if (!qword_27DAE5290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE5298, &qword_22FE4F100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE5290);
  }

  return result;
}

uint64_t CheckedContinuation.resume<>(success:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v4 = *(a3 + 24);
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v31 - v7;
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v11);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = sub_22FE43744();
  v36 = v4;
  v17 = sub_22FE43744();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19.n128_f64[0] = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v21 = &v31 - v20;
  v23 = *(v22 + 56);
  v24 = *(v16 - 8);
  (*(v24 + 16))(&v31 - v20, a1, v16, v19);
  v25 = *(v17 - 8);
  (*(v25 + 16))(&v21[v23], v37, v17);
  if ((*(v10 + 48))(v21, 1, v9) == 1)
  {
    v27 = v35;
    v26 = v36;
    if ((*(v35 + 48))(&v21[v23], 1, v36) == 1)
    {
      result = sub_22FE43A74();
      __break(1u);
    }

    else
    {
      v28 = &v21[v23];
      v29 = v34;
      (*(v27 + 32))(v34, v28, v26);
      (*(v27 + 16))(v33, v29, v26);
      sub_22FE43384();
      (*(v27 + 8))(v29, v26);
      return (*(v24 + 8))(v21, v16);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v21, v9);
    (*(v10 + 16))(v32, v15, v9);
    sub_22FE43394();
    (*(v10 + 8))(v15, v9);
    return (*(v25 + 8))(&v21[v23], v17);
  }

  return result;
}

uint64_t SeedableRandom.init(seed:bits:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v3 = a2 - 1;
    if (!__OFSUB__(a2, 1))
    {
      v4 = result;
      result = sub_22FE1765C(a2);
      *a3 = v4;
      a3[1] = v3;
      a3[2] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::UInt64 __swiftcall SeedableRandom.repeatingNext(upTo:)(Swift::UInt64 upTo)
{
  if (upTo)
  {
    v2 = *v1;
    do
    {
      v2 = ((vaddlv_u8(vcnt_s8((v2 & *(v1 + 16)))) & 1) << (*(v1 + 8) & 0x3F)) | (v2 >> 1);
    }

    while (v2 - 1 >= upTo);
    *v1 = v2;
    return v2 - 1;
  }

  else
  {
    __break(1u);
  }

  return upTo;
}

unint64_t SeedableRandom.init(bits:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_22FE177D0(0xFFFFFFFFFFFFFFFFLL);
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    *a1 = result + 1;
    *(a1 + 8) = xmmword_22FE4F150;
  }

  return result;
}

uint64_t sub_22FE1765C(uint64_t a1)
{
  if ((a1 - 1) < 0x40)
  {
    return qword_22FE4F1C8[a1 - 1];
  }

  result = sub_22FE43A74();
  __break(1u);
  return result;
}

Swift::UInt64 __swiftcall SeedableRandom.next()()
{
  result = ((vaddlv_u8(vcnt_s8((v0[2] & *v0))) & 1) << v0[1]) | (*v0 >> 1);
  *v0 = result;
  return result;
}

unint64_t SeedableRandom.repeatingNext<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[1] & 0x3F;
  do
  {
    v6 = ((vaddlv_u8(vcnt_s8((*v3 & v4))) & 1) << v5) | (*v3 >> 1);
    *v3 = v6;
  }

  while ((sub_22FE43244() & 1) == 0);
  return v6;
}

unint64_t sub_22FE1779C()
{
  result = ((vaddlv_u8(vcnt_s8((v0[2] & *v0))) & 1) << v0[1]) | (*v0 >> 1);
  *v0 = result;
  return result;
}

unint64_t sub_22FE177D0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x23190C390](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x23190C390](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SeedableRandom(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SeedableRandom(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t static SystemDirectory.folderURL(for:)()
{
  v0 = sub_22FE426C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22FE42774();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28148B788 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_28148B790);
  sub_22FE42704();
  v10[0] = sub_22FE42874();
  v10[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  sub_22FD750CC();
  sub_22FE42764();
  (*(v1 + 8))(v3, v0);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22FE17B08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_22FE426C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FE42774();
  __swift_allocate_value_buffer(v7, qword_28148B790);
  __swift_project_value_buffer(v7, qword_28148B790);
  v8 = swift_slowAlloc();
  started = sysdir_start_search_path_enumeration_private();
  MEMORY[0x23190C4B0](started, v8);
  sub_22FE43104();
  MEMORY[0x23190C380](v8, -1, -1);
  (*(v4 + 104))(v6, *MEMORY[0x277CC91C0], v3);
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_22FE42754();
}

uint64_t static SystemDirectory.library.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148B788 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42774();
  v3 = __swift_project_value_buffer(v2, qword_28148B790);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static SystemDirectory.photosFace.getter()
{
  if (qword_28148B788 != -1)
  {
    swift_once();
  }

  v0 = sub_22FE42774();
  __swift_project_value_buffer(v0, qword_28148B790);
  return sub_22FE42704();
}

uint64_t sub_22FE17E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE426C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FE42774();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28148B788 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_28148B790);
  sub_22FE42704();
  v13[0] = a1;
  v13[1] = a2;
  (*(v5 + 104))(v7, *MEMORY[0x277CC91D8], v4);
  sub_22FD750CC();
  sub_22FE42764();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void static SystemDirectory.tempFolder()()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22FE42774();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  if (qword_28148B788 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_28148B790);
  sub_22FE42704();
  v5 = sub_22FE426F4();
  (*(v1 + 8))(v3, v0);
  v10[0] = 0;
  v6 = [v4 URLForDirectory:99 inDomain:1 appropriateForURL:v5 create:1 error:v10];

  v7 = v10[0];
  if (v6)
  {
    sub_22FE42734();
    v8 = v7;
  }

  else
  {
    v9 = v10[0];
    sub_22FE426B4();

    swift_willThrow();
  }
}

uint64_t UUID.init(hash:)(uint64_t (*a1)(_BYTE *))
{
  v2 = sub_22FE42EF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22FE42F24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22FE42F14();
  a1(v9);
  sub_22FE42F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE44F8, &qword_22FE4B960);
  sub_22FE42EE4();
  sub_22FE42894();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

_OWORD *sub_22FE18490@<X0>(_OWORD *result@<X0>, _OWORD *a2@<X8>)
{
  if (result)
  {
    *a2 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_22FE184A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22FE430C4();
  v6 = xpc_copy_entitlement_for_token();

  if (!v6)
  {
    return 0;
  }

  v7 = MEMORY[0x23190C510](v6);
  v8 = v7 == sub_22FE42D44() && xpc_BOOL_get_value(v6);
  swift_unknownObjectRelease();
  return v8;
}

unint64_t sub_22FE18560(uint64_t a1)
{
  v2 = v1;
  v45 = type metadata accessor for FetchByDayResponseProto(0);
  MEMORY[0x28223BE20](v45);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v53 = MEMORY[0x277D84F90];
    sub_22FD92538(0, v6, 0);
    v48 = v53;
    v8 = a1 + 64;
    v9 = sub_22FE43834();
    v49 = *(a1 + 36);
    v10 = sub_22FDF197C();
    v11 = 0;
    v43 = v10;
    v44 = v5;
    v12 = *(v10 + 40);
    result = v10 + 40;
    v41 = v12;
    v42 = result;
    v38 = a1 + 72;
    v39 = v6;
    v40 = a1 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v15 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_29;
      }

      if (v49 != *(a1 + 36))
      {
        goto LABEL_30;
      }

      v47 = v11;
      v16 = *(*(a1 + 48) + 8 * v9);
      v17 = *(*(a1 + 56) + 8 * v9);
      v18 = qword_28148B410;

      if (v18 != -1)
      {
        swift_once();
      }

      type metadata accessor for CommunicationActor();
      sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
      sub_22FE43374();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v51 = v16;
      v52 = v17;
      v50 = 2;

      v19 = v44;
      v41(&v50, &type metadata for FetchByDayResponse, v43);
      if (v2)
      {

        return swift_bridgeObjectRelease_n();
      }

      sub_22FE292D4(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto, &protocol conformance descriptor for FetchByDayResponseProto);
      v20 = sub_22FE42BD4();
      v21 = v19;
      v22 = v20;
      v24 = v23;
      v46 = 0;
      v25 = a1;
      sub_22FE28D64(v21, type metadata accessor for FetchByDayResponseProto);

      v26 = v48;
      v53 = v48;
      v28 = *(v48 + 16);
      v27 = *(v48 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_22FD92538((v27 > 1), v28 + 1, 1);
        v26 = v53;
      }

      *(v26 + 16) = v28 + 1;
      v29 = v26 + 16 * v28;
      *(v29 + 32) = v22;
      *(v29 + 40) = v24;
      v13 = 1 << *(v25 + 32);
      if (v9 >= v13)
      {
        goto LABEL_31;
      }

      v8 = v40;
      v30 = *(v40 + 8 * v15);
      if ((v30 & (1 << v9)) == 0)
      {
        goto LABEL_32;
      }

      a1 = v25;
      v48 = v26;
      if (v49 != *(v25 + 36))
      {
        goto LABEL_33;
      }

      v31 = v30 & (-2 << (v9 & 0x3F));
      if (v31)
      {
        v13 = __clz(__rbit64(v31)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v2 = v46;
        v14 = v39;
      }

      else
      {
        v32 = v15 << 6;
        v33 = v15 + 1;
        v14 = v39;
        v34 = (v38 + 8 * v15);
        v2 = v46;
        while (v33 < (v13 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_22FD72BF8(v9, v49, 0);
            v13 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        result = sub_22FD72BF8(v9, v49, 0);
      }

LABEL_4:
      v11 = v47 + 1;
      v9 = v13;
      if (v47 + 1 == v14)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t PhotosXPCClient.__allocating_init(messageCenter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PhotosXPCClient.generatePhoto(request:)(uint64_t a1, uint64_t *a2)
{
  v3[4] = a1;
  v3[5] = v2;
  v3[6] = type metadata accessor for GeneratePhotoRequestProto(0);
  v5 = swift_task_alloc();
  v6 = *a2;
  v3[7] = v5;
  v3[8] = v6;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FE18B4C, v8, v7);
}

uint64_t sub_22FE18B4C()
{
  v11 = v0;
  v1 = *(v0[5] + 16);
  v0[2] = v0[8];
  v10[0] = 2;
  v2 = sub_22FDF1928();
  (*(v2 + 40))(v10, &type metadata for GeneratePhotoRequest, v2);
  sub_22FE292D4(&qword_27DAE4340, type metadata accessor for GeneratePhotoRequestProto, &protocol conformance descriptor for GeneratePhotoRequestProto);
  v4 = sub_22FE42BD4();
  v6 = v5;
  sub_22FE28D64(v0[7], type metadata accessor for GeneratePhotoRequestProto);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = 1;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;

  sub_22FDB4380(v4, v6);
  v8 = sub_22FE275DC(&unk_22FE4B8D8, v7);

  sub_22FD917D4(v4, v6);
  v0[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908, &protocol conformance descriptor for DestructableSequence<A>);
  sub_22FE43C54();

  v9 = v0[1];

  return v9();
}

uint64_t PhotosXPCClient.sendMessage(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_22FE430A4();
  v3[5] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = sub_22FE43374();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_22FE18EDC, v5, v4);
}

uint64_t sub_22FE18EDC()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 16);

  v4 = sub_22FDBF4C0(v2, v1);
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = 0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;

  sub_22FDB4380(v4, v6);
  v0[8] = sub_22FE275DC(&unk_22FE4F410, v7);

  sub_22FD917D4(v4, v6);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_22FE19024;

  return sub_22FE1C78C();
}

uint64_t sub_22FE19024(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 48);
    v8 = *(v3 + 56);

    return MEMORY[0x2822009F8](sub_22FE19190, v7, v8);
  }
}

uint64_t sub_22FE19190()
{
  v1 = *(v0 + 80);
  if (v1[2] == 1)
  {
    v3 = v1[4];
    v2 = v1[5];
    sub_22FDB4380(v3, v2);

    sub_22FE43094();
    result = sub_22FE43084();
    if (v5)
    {
      v6 = result;
      v7 = v5;
      sub_22FD917D4(v3, v2);

      v8 = *(v0 + 8);

      return v8(v6, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_22FDD4264();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  return result;
}

uint64_t PhotosXPCClient.trackFace<A>(type:request:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 64) = a2;
  *(v6 + 24) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FE193E4, v8, v7);
}

uint64_t sub_22FE193E4()
{
  v14 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(*(v0 + 56) + 16);
  v4 = *(v0 + 40);
  v13[0] = 2;
  v5 = 0x16080D03u >> (8 * v1);
  v6 = (*(*(v2 + 8) + 16))(v13, v4);
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;

  sub_22FDB4380(v6, v8);
  v10 = sub_22FE275DC(&unk_22FE4F428, v9);

  sub_22FD917D4(v6, v8);
  *(v0 + 16) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  type metadata accessor for StoredPhoto(0);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908, &protocol conformance descriptor for DestructableSequence<A>);
  sub_22FE43C54();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t PhotosXPCClient.untrackFace(type:request:)(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 32) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FE196B0, v5, v4);
}

uint64_t sub_22FE196B0()
{
  v10 = v0;
  v1 = *(*(v0 + 24) + 16);
  v2 = 0x17090E04u >> (8 * *(v0 + 32));
  v9 = 2;
  v3 = UUID.serialized(version:)(&v9);
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;

  sub_22FDB4380(v3, v5);
  sub_22FE275DC(&unk_22FE4F440, v6);

  sub_22FD917D4(v3, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t PhotosXPCClient.fetchFaceList<A>(type:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v6 = sub_22FE43374();
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_22FE198BC, v6, v5);
}

uint64_t sub_22FE198BC()
{
  v1 = *(*(v0 + 32) + 16);
  v2 = 0x180A0F05u >> (8 * *(v0 + 88));
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = xmmword_22FE4B510;

  *(v0 + 56) = sub_22FE275DC(&unk_22FE4F450, v3);

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_22FE199E0;

  return sub_22FE1C78C();
}

uint64_t sub_22FE199E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v3[5];
    v8 = v3[6];

    return MEMORY[0x2822009F8](sub_22FE19B44, v7, v8);
  }
}

uint64_t sub_22FE19B44()
{
  v13 = v0;
  v1 = v0[9];
  if (v1[2] == 1)
  {
    v2 = v0[10];
    v3 = v0[2];
    v4 = v0[3];
    v5 = v1[4];
    v6 = v1[5];
    sub_22FDB4380(v5, v6);

    v12[0] = 2;
    v7 = Array<A>.init(serialized:version:)(v5, v6, v12, v3, *(v4 + 8));
    if (!v2)
    {
      v8 = v0[1];

      return v8(v7);
    }
  }

  else
  {

    sub_22FDD4264();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
  }

  v11 = v0[1];

  return v11();
}

uint64_t PhotosXPCClient.fetchFace(type:request:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 64) = a2;
  *(v4 + 24) = a1;
  *(v4 + 48) = type metadata accessor for FetchFaceRequestProto(0);
  *(v4 + 56) = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v6 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FE19DA8, v6, v5);
}

uint64_t sub_22FE19DA8()
{
  v14 = v0;
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + 16);
  v13[0] = 2;
  v3 = sub_22FE292D4(&qword_27DAE4780, type metadata accessor for FetchFaceRequest, &protocol conformance descriptor for FetchFaceRequest);
  v4 = *(v3 + 40);
  FaceRequest = type metadata accessor for FetchFaceRequest(0);
  v4(v13, FaceRequest, v3);
  sub_22FE292D4(&qword_27DAE4310, type metadata accessor for FetchFaceRequestProto, &protocol conformance descriptor for FetchFaceRequestProto);
  LODWORD(v4) = 0x190B1006u >> (8 * v1);
  v7 = sub_22FE42BD4();
  v9 = v8;
  sub_22FE28D64(*(v0 + 56), type metadata accessor for FetchFaceRequestProto);
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v4;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;

  sub_22FDB4380(v7, v9);
  v11 = sub_22FE275DC(&unk_22FE4F460, v10);

  sub_22FD917D4(v7, v9);
  *(v0 + 16) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  type metadata accessor for StoredPhoto(0);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908, &protocol conformance descriptor for DestructableSequence<A>);
  sub_22FE43C54();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t PhotosXPCClient.provideAssetList<A>(type:id:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 96) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v7 = sub_22FE43374();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return MEMORY[0x2822009F8](sub_22FE1A154, v7, v6);
}

uint64_t sub_22FE1A154()
{
  v13 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);
  v3 = *(*(v0 + 40) + 16);
  v4 = *(v0 + 24);
  v12[0] = 2;
  v5 = v1 + 18;
  v6 = (*(*(v2 + 8) + 16))(v12, v4);
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;

  sub_22FDB4380(v6, v8);
  *(v0 + 64) = sub_22FE275DC(&unk_22FE4F478, v9);

  sub_22FD917D4(v6, v8);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_22FE1A300;

  return sub_22FE1C78C();
}

uint64_t sub_22FE1A300(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v3[6];
    v8 = v3[7];

    return MEMORY[0x2822009F8](sub_22FE1A464, v7, v8);
  }
}

uint64_t sub_22FE1A464()
{
  v1 = v0[10];
  if (v1[2] == 1)
  {
    v2 = v0[11];
    v4 = v1[4];
    v3 = v1[5];
    sub_22FDB4380(v4, v3);

    v5 = sub_22FE1B8B4(v4, v3, 2);
    if (!v2)
    {
      v6 = v0[1];

      return v6(v5);
    }
  }

  else
  {

    sub_22FDD4264();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t PhotosXPCClient.fetchFaceByDay(type:request:)(char a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  *(v3 + 104) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52A0, &qword_22FE4F488);
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v6 = sub_22FE43374();
  *(v3 + 64) = v6;
  *(v3 + 72) = v5;

  return MEMORY[0x2822009F8](sub_22FE1A6DC, v6, v5);
}

uint64_t sub_22FE1A6DC()
{
  v11 = v0;
  v1 = *(*(v0 + 32) + 16);
  v2 = 0x1A0C1107u >> (8 * *(v0 + 104));
  v10 = 2;
  v3 = UUID.serialized(version:)(&v10);
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;

  sub_22FDB4380(v3, v5);
  v7 = sub_22FE275DC(&unk_22FE4F490, v6);

  sub_22FD917D4(v3, v5);
  *(v0 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908, &protocol conformance descriptor for DestructableSequence<A>);
  sub_22FE43C54();
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_22FE1A8C0;

  return sub_22FE1CC14();
}

uint64_t sub_22FE1A8C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = a1;
  v4[12] = v1;

  (*(v3[6] + 8))(v3[7], v3[5]);
  v5 = v3[9];
  v6 = v3[8];
  if (v1)
  {
    v7 = sub_22FE1AC68;
  }

  else
  {
    v7 = sub_22FE1AA50;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_22FE1AA50()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_22FD9270C(0, v2, 0);
    v3 = v14;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_22FD9270C((v7 > 1), v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);

    if (*(v14 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4080, &qword_22FE4BEC0);
      v10 = sub_22FE43B04();
      goto LABEL_12;
    }
  }

  v10 = MEMORY[0x277D84F98];
LABEL_12:
  v11 = v0[12];
  v15 = v10;
  sub_22FE265D0(v3, 1, sub_22FE22674);
  if (v11)
  {
  }

  else
  {

    v13 = v0[1];

    return v13(v15);
  }
}

uint64_t sub_22FE1AC68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PhotosXPCClient.generateMask(identifier:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = sub_22FE43374();
  v2[4] = v4;
  v2[5] = v3;

  return MEMORY[0x2822009F8](sub_22FE1ADBC, v4, v3);
}

uint64_t sub_22FE1ADBC()
{
  v9 = v0;
  v1 = *(v0[3] + 16);
  v8 = 2;
  v2 = UUID.serialized(version:)(&v8);
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = 2;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;

  sub_22FDB4380(v2, v4);
  v0[6] = sub_22FE275DC(&unk_22FE4F4B0, v5);

  sub_22FD917D4(v2, v4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_22FE1AF00;

  return sub_22FE1C78C();
}

uint64_t sub_22FE1AF00(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);

    return MEMORY[0x2822009F8](sub_22FE1B064, v7, v8);
  }
}

uint64_t sub_22FE1B064()
{
  v1 = *(v0 + 64);
  if (v1[2] == 1)
  {
    v3 = v1[4];
    v2 = v1[5];
    sub_22FDB4380(v3, v2);

    v4 = *(v0 + 8);

    return v4(v3, v2);
  }

  else
  {

    sub_22FDD4264();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

char *sub_22FE1B164(uint64_t a1, unint64_t a2, int a3)
{
  v57 = a3;
  v55 = sub_22FE428C4();
  v61 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for AlbumIDProto(0);
  MEMORY[0x28223BE20](v59);
  v60 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v42 - v9;
  v10 = type metadata accessor for AlbumID(0);
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = sub_22FE42A74();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v20 = type metadata accessor for GenericListProto(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[0] = a1;
  v65[1] = a2;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FE292D4(&qword_27DAE4840, type metadata accessor for GenericListProto, &protocol conformance descriptor for GenericListProto);
  sub_22FE42BE4();
  if (v3)
  {
    sub_22FD917D4(a1, a2);
    return v18;
  }

  v52 = v18;
  v49 = v15;
  v50 = v12;
  v23 = *v22;
  v24 = *(*v22 + 16);
  if (!v24)
  {
    sub_22FD917D4(a1, a2);
    sub_22FE28D64(v22, type metadata accessor for GenericListProto);
    return MEMORY[0x277D84F90];
  }

  v43 = v22;
  v44 = a1;
  v45 = a2;
  v66 = MEMORY[0x277D84F90];
  result = sub_22FD926C8(0, v24, 0);
  v26 = 0;
  v18 = v66;
  v51 = v23 + 32;
  v46 = (v61 + 32);
  v27 = v60;
  v48 = v23;
  v47 = v24;
  while (v26 < *(v23 + 16))
  {
    *v65 = *(v51 + 16 * v26);
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v28 = v65[1];
    v29 = v65[0];
    sub_22FDB4380(v65[0], v65[1]);
    sub_22FDB4380(v29, v28);
    sub_22FDB4380(v29, v28);
    sub_22FE42A64();
    sub_22FE292D4(&qword_27DAE44C8, type metadata accessor for AlbumIDProto, "i3=RЙ");
    v30 = v58;
    sub_22FE42BE4();
    v61 = v18;
    sub_22FE28F94(v30, v27, type metadata accessor for AlbumIDProto);
    v31 = v27[2];
    v32 = v27[3];
    LOBYTE(v62) = v57;
    sub_22FDB4380(v31, v32);
    v33 = v56;
    UUID.init(serialized:version:)(v31, v32);
    sub_22FD917D4(v29, v28);
    sub_22FE28D64(v30, type metadata accessor for AlbumIDProto);
    v34 = v27;
    v35 = *v27;
    v36 = *(v34 + 8);

    sub_22FE28D64(v34, type metadata accessor for AlbumIDProto);
    v37 = v50;
    (*v46)(v50, v33, v55);
    v38 = (v37 + *(v54 + 20));
    *v38 = v35;
    v38[1] = v36;
    v39 = v49;
    sub_22FE28DC4(v37, v49, type metadata accessor for AlbumID);
    sub_22FD917D4(v29, v28);
    v18 = v61;
    v66 = v61;
    v41 = *(v61 + 2);
    v40 = *(v61 + 3);
    if (v41 >= v40 >> 1)
    {
      sub_22FD926C8((v40 > 1), v41 + 1, 1);
      v18 = v66;
    }

    ++v26;
    *(v18 + 2) = v41 + 1;
    result = sub_22FE28DC4(v39, &v18[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v41], type metadata accessor for AlbumID);
    v27 = v60;
    v23 = v48;
    if (v47 == v26)
    {
      sub_22FD917D4(v44, v45);
      sub_22FE28D64(v43, type metadata accessor for GenericListProto);
      return v18;
    }
  }

  __break(1u);
  return result;
}

void *sub_22FE1B8B4(uint64_t a1, unint64_t a2, int a3)
{
  v37 = a3;
  v6 = sub_22FE428C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FE42A74();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for GenericListProto(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v36 = a2;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FE292D4(&qword_27DAE4840, type metadata accessor for GenericListProto, &protocol conformance descriptor for GenericListProto);
  v14 = v11;
  sub_22FE42BE4();
  if (v3)
  {
    sub_22FD917D4(a1, a2);
    return v14;
  }

  v16 = *v13;
  v17 = *(*v13 + 16);
  if (!v17)
  {
    sub_22FD917D4(a1, a2);
    sub_22FE28D64(v13, type metadata accessor for GenericListProto);
    return MEMORY[0x277D84F90];
  }

  v26 = v13;
  v27 = a1;
  v28 = a2;
  v31 = v17;
  *&v32 = MEMORY[0x277D84F90];
  result = sub_22FD922C4(0, v17, 0);
  v18 = 0;
  v14 = v32;
  v29 = v7 + 32;
  v30 = v16;
  v19 = (v16 + 40);
  while (v18 < *(v30 + 16))
  {
    v20 = v6;
    v21 = *(v19 - 1);
    v22 = *v19;
    LOBYTE(v35) = v37;
    sub_22FDB4380(v21, v22);
    sub_22FDB4380(v21, v22);
    UUID.init(serialized:version:)(v21, v22);
    sub_22FD917D4(v21, v22);
    *&v32 = v14;
    v24 = *(v14 + 16);
    v23 = *(v14 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_22FD922C4((v23 > 1), v24 + 1, 1);
      v14 = v32;
    }

    ++v18;
    *(v14 + 16) = v24 + 1;
    v25 = v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24;
    v6 = v20;
    result = (*(v7 + 32))(v25, v9, v20);
    v19 += 2;
    if (v31 == v18)
    {
      sub_22FD917D4(v27, v28);
      sub_22FE28D64(v26, type metadata accessor for GenericListProto);
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE1BC8C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ShuffleID(0);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FE42A74();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for GenericListProto(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v42 = a2;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FE292D4(&qword_27DAE4840, type metadata accessor for GenericListProto, &protocol conformance descriptor for GenericListProto);
  sub_22FE42BE4();
  if (v3)
  {
    v14 = v3;
    sub_22FD917D4(a1, a2);
    return v14;
  }

  v36 = v9;
  v16 = *v13;
  v17 = *(*v13 + 16);
  if (!v17)
  {
    sub_22FD917D4(a1, a2);
    sub_22FE28D64(v13, type metadata accessor for GenericListProto);
    return MEMORY[0x277D84F90];
  }

  v43 = 0;
  v32 = v13;
  v33 = a1;
  v34 = a2;
  *&v38 = MEMORY[0x277D84F90];
  v35 = v17;
  result = sub_22FD9246C(0, v17, 0);
  v18 = 0;
  v14 = v38;
  v19 = (v16 + 40);
  v20 = v36;
  while (v18 < *(v16 + 16))
  {
    v21 = a3;
    v23 = *(v19 - 1);
    v22 = *v19;
    sub_22FDB4380(v23, *v19);
    sub_22FDB4380(v23, v22);
    v24 = v20;
    v25 = v7;
    v26 = v21;
    v27 = v21;
    v28 = v25;
    v29 = v43;
    sub_22FDED93C(v23, v22, v27, v24);
    if (v29)
    {
      sub_22FD917D4(v33, v34);
      sub_22FE28D64(v32, type metadata accessor for GenericListProto);
      sub_22FD917D4(v23, v22);

      return v14;
    }

    v43 = 0;
    sub_22FD917D4(v23, v22);
    *&v38 = v14;
    v31 = *(v14 + 16);
    v30 = *(v14 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_22FD9246C((v30 > 1), v31 + 1, 1);
      v14 = v38;
    }

    ++v18;
    *(v14 + 16) = v31 + 1;
    v20 = v36;
    result = sub_22FE28DC4(v36, v14 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31, type metadata accessor for ShuffleID);
    v19 += 2;
    a3 = v26;
    v7 = v28;
    if (v35 == v18)
    {
      sub_22FD917D4(v33, v34);
      sub_22FE28D64(v32, type metadata accessor for GenericListProto);
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE1C084(uint64_t a1, unint64_t a2, int a3)
{
  v53 = a3;
  v51 = sub_22FE428C4();
  v57 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v52 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DailyIDProto(0);
  MEMORY[0x28223BE20](v55);
  v56 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v54 = &v40 - v9;
  v10 = type metadata accessor for DailyID(0);
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = sub_22FE42A74();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v20 = type metadata accessor for GenericListProto(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61[0] = a1;
  v61[1] = a2;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FE292D4(&qword_27DAE4840, type metadata accessor for GenericListProto, &protocol conformance descriptor for GenericListProto);
  v23 = v20;
  sub_22FE42BE4();
  if (v3)
  {
    sub_22FD917D4(a1, a2);
    return v23;
  }

  v49 = v18;
  v46 = v15;
  v47 = v12;
  v24 = *v22;
  v25 = *(*v22 + 16);
  if (!v25)
  {
    sub_22FD917D4(a1, a2);
    sub_22FE28D64(v22, type metadata accessor for GenericListProto);
    return MEMORY[0x277D84F90];
  }

  v40 = v22;
  v41 = a1;
  v42 = a2;
  v62 = MEMORY[0x277D84F90];
  result = sub_22FD9272C(0, v25, 0);
  v27 = 0;
  v23 = v62;
  v48 = v24 + 32;
  v43 = (v57 + 32);
  v28 = v56;
  v45 = v24;
  v44 = v25;
  while (v27 < *(v24 + 16))
  {
    v57 = v23;
    *v61 = *(v48 + 16 * v27);
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v29 = v61[1];
    v30 = v61[0];
    sub_22FDB4380(v61[0], v61[1]);
    sub_22FDB4380(v30, v29);
    sub_22FDB4380(v30, v29);
    sub_22FE42A64();
    sub_22FE292D4(&qword_27DAE44D0, type metadata accessor for DailyIDProto, &protocol conformance descriptor for DailyIDProto);
    v31 = v54;
    sub_22FE42BE4();
    sub_22FE28F94(v31, v28, type metadata accessor for DailyIDProto);
    v32 = *v28;
    v33 = v28[1];
    LOBYTE(v58) = v53;
    sub_22FDB4380(v32, v33);
    v34 = v28;
    v35 = v52;
    UUID.init(serialized:version:)(v32, v33);
    sub_22FD917D4(v30, v29);
    sub_22FE28D64(v34, type metadata accessor for DailyIDProto);
    sub_22FE28D64(v31, type metadata accessor for DailyIDProto);
    v36 = v47;
    (*v43)(v47, v35, v51);
    v37 = v46;
    sub_22FE28DC4(v36, v46, type metadata accessor for DailyID);
    sub_22FD917D4(v30, v29);
    v23 = v57;
    v62 = v57;
    v39 = *(v57 + 16);
    v38 = *(v57 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_22FD9272C((v38 > 1), v39 + 1, 1);
      v23 = v62;
    }

    ++v27;
    *(v23 + 16) = v39 + 1;
    result = sub_22FE28DC4(v37, v23 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v39, type metadata accessor for DailyID);
    v28 = v56;
    v24 = v45;
    if (v44 == v27)
    {
      sub_22FD917D4(v41, v42);
      sub_22FE28D64(v40, type metadata accessor for GenericListProto);
      return v23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE1C7AC()
{
  v1 = *(v0[4] + 16);
  v0[5] = *(v1 + 16);
  v2 = *(v1 + 24);
  v3 = MEMORY[0x277D84F90];
  v0[6] = v2;
  v0[7] = v3;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_22FE1C890;
  v5 = v0[5];
  v6 = v0[6];

  return sub_22FE2A68C((v0 + 2), v5, v6);
}

uint64_t sub_22FE1C890()
{
  *(*v1 + 72) = v0;

  if (v0)
  {

    v2 = sub_22FE1CB9C;
  }

  else
  {
    v2 = sub_22FE1C9AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FE1C9AC()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if ((atomic_exchange((*(**(v0[4] + 24) + 136))(), 1u) & 1) == 0)
    {
      (*(v0[4] + 32))();
    }

    v1 = v0[3];
    if (v1 >> 60 == 15)
    {

      v2 = v0[1];
      v3 = v0[7];

      return v2(v3);
    }

    v5 = v0[2];
  }

  else
  {
    v5 = v0[2];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0[7];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_22FD91EA8(0, *(v7 + 2) + 1, 1, v7);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_22FD91EA8((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = v5;
  *(v10 + 5) = v1;
  v0[7] = v7;
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_22FE1C890;
  v12 = v0[5];
  v13 = v0[6];

  return sub_22FE2A68C((v0 + 2), v12, v13);
}

uint64_t sub_22FE1CB9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE1CC14()
{
  v1[4] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52A0, &qword_22FE4F488);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5310, &qword_22FE4F7A0);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE1CD48, 0, 0);
}

uint64_t sub_22FE1CD48()
{
  (*(v0[6] + 16))(v0[7], v0[4], v0[5]);
  sub_22FDBC930(&qword_27DAE5318, &qword_27DAE52A0, &qword_22FE4F488, MEMORY[0x277D85A00]);
  sub_22FE43464();
  v0[11] = MEMORY[0x277D84F90];
  v1 = sub_22FDBC930(&qword_27DAE5320, &qword_27DAE5310, &qword_22FE4F7A0, MEMORY[0x277D859F8]);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_22FE1CE9C;
  v3 = v0[8];

  return MEMORY[0x282200308](v0 + 2, v3, v1);
}

uint64_t sub_22FE1CE9C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v3 = sub_22FE1D194;
  }

  else
  {
    v3 = sub_22FE1CFD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FE1CFD0()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v0[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_22FD91FB4(0, *(v4 + 2) + 1, 1, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_22FD91FB4((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = v2;
    *(v7 + 5) = v1;
    v0[11] = v4;
    v8 = sub_22FDBC930(&qword_27DAE5320, &qword_27DAE5310, &qword_22FE4F7A0, MEMORY[0x277D859F8]);
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_22FE1CE9C;
    v10 = v0[8];

    return MEMORY[0x282200308](v0 + 2, v10, v8);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v11 = v0[1];
    v12 = v0[11];

    return v11(v12);
  }
}

uint64_t sub_22FE1D194()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE1D204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_22FE1D228, 0, 0);
}

uint64_t sub_22FE1D228()
{
  v4 = (v0[3] + *v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22FE1D328;
  v2 = v0[5];

  return v4(&unk_22FE4F7D0, v2);
}

uint64_t sub_22FE1D328()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22FE1D4A4;
  }

  else
  {
    v2 = sub_22FE1D43C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FE1D43C()
{
  sub_22FE3FFE4(0, *(*(v0 + 40) + 16));
  v1 = *(v0 + 8);

  return v1();
}

id sub_22FE1D4A4()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 40) + 16);
  os_unfair_lock_lock(v2 + 16);
  v3 = sub_22FE2B768(v1);
  v5 = v4;
  os_unfair_lock_unlock(v2 + 16);
  if (!v3)
  {
    v9 = *(v0 + 56);
LABEL_19:

    v20 = *(v0 + 8);

    return v20();
  }

  v6 = *(v3 + 2);
  if (v6)
  {
    v7 = v3 + 32;

    do
    {
      if (*v7++)
      {
        swift_continuation_throwingResume();
      }

      --v6;
    }

    while (v6);
  }

  else
  {
  }

  v10 = *(v5 + 16);
  result = *(v0 + 56);
  if (!v10)
  {
LABEL_18:
    v9 = *(v0 + 56);
    sub_22FD8C47C(v3, v5);

    goto LABEL_19;
  }

  v12 = 0;
  while (v12 < *(v5 + 16))
  {
    if (*(v5 + 32 + 8 * v12))
    {
      v15 = *(v0 + 56);
      *(v0 + 16) = v15;
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
      v17 = sub_22FE43C64();
      v18 = *(v0 + 56);
      if (v17)
      {
        v13 = v17;
      }

      else
      {
        v13 = swift_allocError();
        *v19 = v18;
      }

      swift_allocError();
      *v14 = v13;
      result = swift_continuation_throwingResumeWithError();
    }

    if (v10 == ++v12)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE1D694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_22FE1D6B8, 0, 0);
}

uint64_t sub_22FE1D6B8()
{
  v4 = (v0[3] + *v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22FE1D7B8;
  v2 = v0[5];

  return v4(&unk_22FE4F7F0, v2);
}

uint64_t sub_22FE1D7B8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22FE1D934;
  }

  else
  {
    v2 = sub_22FE1D8CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FE1D8CC()
{
  sub_22FE402C0(0, *(*(v0 + 40) + 16));
  v1 = *(v0 + 8);

  return v1();
}

id sub_22FE1D934()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 40) + 16);
  os_unfair_lock_lock(v2 + 16);
  v3 = sub_22FE2BA64(v1);
  v5 = v4;
  os_unfair_lock_unlock(v2 + 16);
  if (!v3)
  {
    v9 = *(v0 + 56);
LABEL_19:

    v20 = *(v0 + 8);

    return v20();
  }

  v6 = *(v3 + 2);
  if (v6)
  {
    v7 = v3 + 32;

    do
    {
      if (*v7++)
      {
        swift_continuation_throwingResume();
      }

      --v6;
    }

    while (v6);
  }

  else
  {
  }

  v10 = *(v5 + 16);
  result = *(v0 + 56);
  if (!v10)
  {
LABEL_18:
    v9 = *(v0 + 56);
    sub_22FD8C47C(v3, v5);

    goto LABEL_19;
  }

  v12 = 0;
  while (v12 < *(v5 + 16))
  {
    if (*(v5 + 32 + 8 * v12))
    {
      v15 = *(v0 + 56);
      *(v0 + 16) = v15;
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
      v17 = sub_22FE43C64();
      v18 = *(v0 + 56);
      if (v17)
      {
        v13 = v17;
      }

      else
      {
        v13 = swift_allocError();
        *v19 = v18;
      }

      swift_allocError();
      *v14 = v13;
      result = swift_continuation_throwingResumeWithError();
    }

    if (v10 == ++v12)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE1DB24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22FE1DB44, 0, 0);
}

uint64_t sub_22FE1DB44()
{
  v1 = v0[3];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_22FE1DC00;
  v5 = v0[2];

  return sub_22FE29E64(v5, v3, v2);
}

uint64_t sub_22FE1DC00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

PhotosFace::XPCRequestType_optional __swiftcall XPCRequestType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 9;
  switch(rawValue)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v2 = 1;
      goto LABEL_23;
    case 2:
      v2 = 2;
      goto LABEL_23;
    case 10:
      v2 = 3;
      goto LABEL_23;
    case 11:
      v2 = 4;
      goto LABEL_23;
    case 12:
      v2 = 5;
      goto LABEL_23;
    case 13:
      v2 = 6;
      goto LABEL_23;
    case 14:
      v2 = 7;
      goto LABEL_23;
    case 21:
      v2 = 8;
LABEL_23:
      v3 = v2;
      goto LABEL_24;
    case 22:
LABEL_24:
      *v1 = v3;
      break;
    case 23:
      *v1 = 10;
      break;
    case 24:
      *v1 = 11;
      break;
    case 25:
      *v1 = 12;
      break;
    case 31:
      *v1 = 13;
      break;
    case 32:
      *v1 = 14;
      break;
    case 33:
      *v1 = 15;
      break;
    case 34:
      *v1 = 16;
      break;
    case 35:
      *v1 = 17;
      break;
    case 36:
      *v1 = 18;
      break;
    case 37:
      *v1 = 19;
      break;
    case 38:
      *v1 = 20;
      break;
    case 39:
      *v1 = 21;
      break;
    case 51:
      *v1 = 22;
      break;
    case 52:
      *v1 = 23;
      break;
    case 53:
      *v1 = 24;
      break;
    case 54:
      *v1 = 25;
      break;
    case 55:
      *v1 = 26;
      break;
    default:
      *v1 = 27;
      break;
  }

  return rawValue;
}

uint64_t sub_22FE1DE84()
{
  v1 = *v0;
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](qword_22FE4F808[v1]);
  return sub_22FE43E04();
}

uint64_t sub_22FE1DF0C(uint64_t a1)
{
  v2 = *v1;
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](qword_22FE4F808[v2]);
  return sub_22FE43E04();
}

uint64_t PhotosXPCServer.activate()()
{
  *(v1 + 16) = v0;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v3 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FE1E068, v3, v2);
}

uint64_t sub_22FE1E068()
{
  sub_22FE1E0CC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE1E0CC()
{
  v1 = sub_22FE42DD4();
  MEMORY[0x28223BE20](v1);
  v2 = qword_28148B420;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28148B428;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52B8, &unk_22FE4F940);
  *(swift_allocObject() + 16) = xmmword_22FE49F60;
  v4 = v3;
  sub_22FE42DC4();
  sub_22FE292D4(qword_28148AE90, MEMORY[0x277D855D8], MEMORY[0x277D855E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52C0, &qword_22FE4F740);
  sub_22FDBC930(&qword_28148AE70, &qword_27DAE52C0, &qword_22FE4F740, MEMORY[0x277D83970]);
  sub_22FE43824();
  swift_allocObject();
  swift_weakInit();
  sub_22FE42E44();
  swift_allocObject();
  *(v0 + 32) = sub_22FE42E24();

  if (*(v0 + 32))
  {

    sub_22FE42E34();
  }

  return result;
}

uint64_t PhotosXPCClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PhotosXPCServer.registerGeneratePhoto<A>(callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 1;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = sub_22FE43C44();

  WitnessTable = swift_getWitnessTable();
  XPCMessageCenter.Server.registerData<A>(request:callback:)(&v12, &unk_22FE4F4C8, v8, v9, WitnessTable);
}

uint64_t sub_22FE1E4CC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  *(v8 + 88) = *(a7 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 144) = *a4;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v11 = sub_22FE43374();
  *(v8 + 112) = v11;
  *(v8 + 120) = v10;

  return MEMORY[0x2822009F8](sub_22FE1E630, v11, v10);
}

uint64_t sub_22FE1E630()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 144);
  sub_22FDB4380(v1, v2);
  sub_22FDEEF30(v1, v2, v3, (v0 + 16));
  v4 = *(v0 + 56);
  *(v0 + 24) = *(v0 + 16);
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_22FE1E7B4;
  v6 = *(v0 + 104);

  return v8(v6, v0 + 24);
}

uint64_t sub_22FE1E7B4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_22FE1E9FC;
  }

  else
  {
    v5 = sub_22FE1E8D8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_22FE1E8D8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  (*(v3 + 16))(*(v0 + 96), v2, v4);
  *(swift_allocObject() + 16) = v1;
  sub_22FE43474();

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22FE1E9FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE1EA68(uint64_t a1, uint64_t *a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = type metadata accessor for GeneratePhotoResponseProto(0);
  v5 = swift_task_alloc();
  v6 = *a2;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;

  return MEMORY[0x2822009F8](sub_22FE1EB08, 0, 0);
}

uint64_t sub_22FE1EB08()
{
  v9 = v0;
  *(v0 + 16) = *(v0 + 48);
  v8[0] = *(v0 + 56);
  v1 = sub_22FDF18D4();
  (*(v1 + 40))(v8, &type metadata for GeneratePhotoResponse, v1);
  sub_22FE292D4(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto, &protocol conformance descriptor for GeneratePhotoResponseProto);
  v2 = sub_22FE42BD4();
  v5 = v4;
  v6 = *(v0 + 24);
  sub_22FE28D64(*(v0 + 40), type metadata accessor for GeneratePhotoResponseProto);
  *v6 = v2;
  v6[1] = v5;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t PhotosXPCServer.registerGenerateMask(callback:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_22FE4F4D8;
  *(v7 + 24) = v6;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v5 + 40);
  *(v5 + 40) = 0x8000000000000000;
  sub_22FDDFC34(&unk_22FE4F4E8, v7, 2, isUniquelyReferenced_nonNull_native);
  *(v5 + 40) = v10;
  swift_endAccess();
}

uint64_t sub_22FE1ED78(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a4;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FE1EE78, v8, v7);
}

uint64_t sub_22FE1EE78()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v1;

  sub_22FDB4380(v5, v4);
  v8 = sub_22FE275DC(&unk_22FE4F728, v7);

  *v6 = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22FE1EF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 145) = a7;
  *(v7 + 64) = a5;
  *(v7 + 72) = a6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = sub_22FE428C4();
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE1F02C, 0, 0);
}

uint64_t sub_22FE1F02C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  sub_22FDB4380(v2, v1);
  UUID.init(serialized:version:)(v2, v1);
  v3 = *(v0 + 48);
  *(v0 + 144) = *(v0 + 145);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_22FE1F1B0;
  v5 = *(v0 + 96);

  return v7(v5, v0 + 144);
}

uint64_t sub_22FE1F1B0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[14] = a1;
  v6[15] = a2;
  v6[16] = v2;

  if (v2)
  {
    (*(v6[11] + 8))(v6[12], v6[10]);

    return MEMORY[0x2822009F8](sub_22FE1F530, 0, 0);
  }

  else
  {
    v7 = v6[4];
    (*(v6[11] + 8))(v6[12], v6[10]);
    v6[2] = a1;
    v6[3] = a2;
    v10 = (v7 + *v7);
    v8 = swift_task_alloc();
    v6[17] = v8;
    *v8 = v6;
    v8[1] = sub_22FE1F3D0;

    return v10(v6 + 2);
  }
}

uint64_t sub_22FE1F3D0()
{
  v1 = *v0;
  v2 = *v0;

  sub_22FD917D4(*(v1 + 112), *(v1 + 120));

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_22FE1F530()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE1F594(uint64_t a1, _OWORD *a2)
{
  *(v2 + 32) = a1;
  sub_22FE42A74();
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = type metadata accessor for GeneratePhotoResponseProto(0);
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a2;

  return MEMORY[0x2822009F8](sub_22FE1F66C, 0, 0);
}

uint64_t sub_22FE1F66C()
{
  v9 = v0;
  v1 = v0[9];
  v0[2] = v1;
  v2 = v0[10];
  v0[3] = v2;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_22FDB4380(v1, v2);
  sub_22FE42A64();
  sub_22FE292D4(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto, &protocol conformance descriptor for GeneratePhotoResponseProto);
  sub_22FE42BE4();
  v3 = v0[7];
  v4 = v0[4];
  sub_22FE28F94(v0[8], v3, type metadata accessor for GeneratePhotoResponseProto);
  LOBYTE(v7[0]) = 2;
  GeneratePhotoResponse.init(protobuf:version:)(v3, v7, v4);
  sub_22FE28D64(v0[8], type metadata accessor for GeneratePhotoResponseProto);

  v6 = v0[1];

  return v6();
}

uint64_t PhotosXPCServer.registerTrackFace<A, B>(type:callback:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = 0x16080D03u >> (8 * a1);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v14 = sub_22FE43C44();

  WitnessTable = swift_getWitnessTable();
  XPCMessageCenter.Server.registerData<A>(request:callback:)(&v17, &unk_22FE4F4F8, v13, v14, WitnessTable);
}

uint64_t sub_22FE1F944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v13;
  v8[10] = v14;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v8[11] = *(a7 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v10 = sub_22FE43374();
  v8[14] = v10;
  v8[15] = v9;

  return MEMORY[0x2822009F8](sub_22FE1FAC4, v10, v9);
}

uint64_t sub_22FE1FAC4()
{
  v13 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  v12[0] = 2;
  v5 = *(v1 + 8);
  v6 = *(v5 + 8);
  sub_22FDB4380(v4, v3);
  v6(v4, v3, v12, v2, v5);
  v11 = (v0[5] + *v0[5]);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_22FE1FC80;
  v9 = v0[12];
  v8 = v0[13];

  return v11(v8, v9);
}

uint64_t sub_22FE1FC80()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 56);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_22FE1E9FC;
  }

  else
  {
    v8 = sub_22FE1FE18;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_22FE1FE18()
{
  sub_22FE43474();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE1FEB8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for StoredPhotoProto(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE29330, 0, 0);
}

uint64_t PhotosXPCServer.registerUntrackFace(type:callback:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = 0x17090E04u >> (8 * a1);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_22FE4F508;
  *(v9 + 24) = v8;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v6 + 40);
  *(v6 + 40) = 0x8000000000000000;
  sub_22FDDFC34(&unk_22FE4F518, v9, v7, isUniquelyReferenced_nonNull_native);
  *(v6 + 40) = v12;
  swift_endAccess();
}

uint64_t sub_22FE20064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v7 = sub_22FE428C4();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = sub_22FE43374();
  v6[10] = v9;
  v6[11] = v8;

  return MEMORY[0x2822009F8](sub_22FE201B8, v9, v8);
}

uint64_t sub_22FE201B8()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_22FDB4380(v2, v1);
  UUID.init(serialized:version:)(v2, v1);
  v6 = (v0[5] + *v0[5]);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_22FE2032C;
  v4 = v0[9];

  return v6(v4);
}

uint64_t sub_22FE2032C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_22FE29334;
  }

  else
  {
    v8 = sub_22FE204C4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_22FE204C4()
{
  **(v0 + 16) = MEMORY[0x277D84F90];

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PhotosXPCServer.registerFetchFaceList<A>(type:callback:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 16);
  v11 = 0x180A0F05u >> (8 * a1);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_22FE4F528;
  *(v13 + 24) = v12;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v10 + 40);
  *(v10 + 40) = 0x8000000000000000;
  sub_22FDDFC34(&unk_22FE4F530, v13, v11, isUniquelyReferenced_nonNull_native);
  *(v10 + 40) = v16;
  swift_endAccess();
}

uint64_t sub_22FE20664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v10 = sub_22FE43374();
  v8[7] = v10;
  v8[8] = v9;

  return MEMORY[0x2822009F8](sub_22FE2075C, v10, v9);
}

uint64_t sub_22FE2075C()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40A0, &qword_22FE4A0D0);
  v2 = swift_allocObject();
  v0[9] = v2;
  *(v2 + 16) = xmmword_22FE49F60;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_22FE20878;

  return v5();
}

uint64_t sub_22FE20878(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_22FE20A6C;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_22FE209A0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_22FE209A0()
{
  v13 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[5];
  v4 = v0[6];
  v12[0] = 2;
  v5 = Array<A>.serialized(version:)(v12, v2, v3, *(v4 + 8));
  v7 = v6;

  if (v1)
  {
    *(v0[9] + 16) = 0;
  }

  else
  {
    v9 = v0[9];
    v10 = v0[2];
    *(v9 + 32) = v5;
    *(v9 + 40) = v7;
    *v10 = v9;
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_22FE20A6C()
{
  *(*(v0 + 72) + 16) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PhotosXPCServer.registerFetchFace<A>(type:callback:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0x190B1006u >> (8 * a1);
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v10 = sub_22FE43C44();

  WitnessTable = swift_getWitnessTable();
  XPCMessageCenter.Server.registerData<A>(request:callback:)(&v13, &unk_22FE4F540, v9, v10, WitnessTable);
}

uint64_t sub_22FE20BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  type metadata accessor for FetchFaceRequest(0);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v10 = sub_22FE43374();
  v8[11] = v10;
  v8[12] = v9;

  return MEMORY[0x2822009F8](sub_22FE20D14, v10, v9);
}

uint64_t sub_22FE20D14()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  sub_22FDB4380(v3, v2);
  sub_22FDEF16C(v3, v2, 2, v1);
  v8 = (v0[5] + *v0[5]);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_22FE20E88;
  v6 = v0[9];
  v5 = v0[10];

  return v8(v5, v6);
}

uint64_t sub_22FE20E88()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  *(*v1 + 112) = v0;

  sub_22FE28D64(v3, type metadata accessor for FetchFaceRequest);
  v4 = *(v2 + 96);
  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_22FE21090;
  }

  else
  {
    v6 = sub_22FE20FF4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_22FE20FF4()
{
  sub_22FE43474();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE21090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE210FC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for StoredPhotoProto(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE21190, 0, 0);
}

uint64_t sub_22FE21190()
{
  v11 = v0;
  v10[0] = 2;
  v1 = sub_22FE292D4(&qword_27DAE4650, type metadata accessor for StoredPhoto, &protocol conformance descriptor for StoredPhoto);
  v2 = *(v1 + 40);
  v3 = type metadata accessor for StoredPhoto(0);
  v2(v10, v3, v1);
  sub_22FE292D4(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);
  v5 = sub_22FE42BD4();
  v7 = v6;
  v8 = v0[2];
  sub_22FE28D64(v0[5], type metadata accessor for StoredPhotoProto);
  *v8 = v5;
  v8[1] = v7;

  v9 = v0[1];

  return v9();
}

uint64_t PhotosXPCServer.registerFetchFaceByDay(type:callback:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = 0x1A0C1107u >> (8 * a1);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_22FE4F550;
  *(v9 + 24) = v8;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v6 + 40);
  *(v6 + 40) = 0x8000000000000000;
  sub_22FDDFC34(&unk_22FE4F558, v9, v7, isUniquelyReferenced_nonNull_native);
  *(v6 + 40) = v12;
  swift_endAccess();
}

uint64_t sub_22FE21450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v7 = sub_22FE428C4();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = sub_22FE43374();
  v6[10] = v9;
  v6[11] = v8;

  return MEMORY[0x2822009F8](sub_22FE215A4, v9, v8);
}

uint64_t sub_22FE215A4()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_22FDB4380(v2, v1);
  UUID.init(serialized:version:)(v2, v1);
  v6 = (v0[5] + *v0[5]);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_22FE21718;
  v4 = v0[9];

  return v6(v4);
}

uint64_t sub_22FE21718(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 56);
  *(*v2 + 104) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = v4[10];
    v9 = v4[11];
    v10 = sub_22FE2194C;
  }

  else
  {
    v4[14] = a1;
    v8 = v4[10];
    v9 = v4[11];
    v10 = sub_22FE218A4;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_22FE218A4()
{
  v1 = *(v0 + 104);
  v2 = sub_22FE18560(*(v0 + 112));

  if (!v1)
  {
    **(v0 + 16) = v2;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FE2194C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PhotosXPCServer.registerProvideAssetList<A>(type:callback:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_22FE4F568;
  *(v13 + 24) = v12;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v11 + 40);
  *(v11 + 40) = 0x8000000000000000;
  sub_22FDDFC34(&unk_22FE4F570, v13, (a1 + 18), isUniquelyReferenced_nonNull_native);
  *(v11 + 40) = v16;
  swift_endAccess();
}

uint64_t sub_22FE21ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v8[9] = *(a7 - 8);
  v8[10] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v10 = sub_22FE43374();
  v8[11] = v10;
  v8[12] = v9;

  return MEMORY[0x2822009F8](sub_22FE21C18, v10, v9);
}

uint64_t sub_22FE21C18()
{
  v14 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v13[0] = 2;
  v5 = *(v1 + 8);
  v6 = *(v5 + 8);
  sub_22FDB4380(v4, v3);
  v6(v4, v3, v13, v2, v5);
  v7 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40A0, &qword_22FE4A0D0);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = xmmword_22FE49F60;
  v12 = (v7 + *v7);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_22FE21DF8;
  v10 = v0[10];

  return v12(v10);
}

uint64_t sub_22FE21DF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 88);
  if (v1)
  {
    v7 = sub_22FE2204C;
  }

  else
  {
    v7 = sub_22FE21F3C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_22FE21F3C()
{
  v1 = v0[16];
  v2 = sub_22FE283A8(v0[15]);
  if (v1)
  {
    (*(v0[9] + 8))(v0[10], v0[7]);

    *(v0[13] + 16) = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v7 = v0[13];
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[7];
    v11 = v0[2];

    *(v7 + 32) = v5;
    *(v7 + 40) = v6;
    (*(v9 + 8))(v8, v10);
    *v11 = v7;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FE2204C()
{
  (*(v0[9] + 8))(v0[10], v0[7]);
  *(v0[13] + 16) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FE220D4(uint64_t a1, _OWORD *a2)
{
  *(v2 + 32) = a1;
  sub_22FE42A74();
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = type metadata accessor for StoredPhotoProto(0);
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a2;

  return MEMORY[0x2822009F8](sub_22FE221AC, 0, 0);
}

uint64_t sub_22FE221AC()
{
  v9 = v0;
  v1 = v0[9];
  v0[2] = v1;
  v2 = v0[10];
  v0[3] = v2;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_22FDB4380(v1, v2);
  sub_22FE42A64();
  sub_22FE292D4(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);
  sub_22FE42BE4();
  v3 = v0[7];
  v4 = v0[4];
  sub_22FE28F94(v0[8], v3, type metadata accessor for StoredPhotoProto);
  LOBYTE(v7[0]) = 2;
  StoredPhoto.init(protobuf:version:)(v3, v7, v4);
  sub_22FE28D64(v0[8], type metadata accessor for StoredPhotoProto);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22FE22380(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x2822009F8](sub_22FE223A8, 0, 0);
}

uint64_t sub_22FE223A8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_22FDB4380(v1, v2);
  sub_22FDF1AE0(v1, v2, 2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_22FE22444(uint64_t a1, _OWORD *a2)
{
  *(v2 + 32) = a1;
  sub_22FE42A74();
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = type metadata accessor for FetchByDayResponseProto(0);
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = *a2;

  return MEMORY[0x2822009F8](sub_22FE22510, 0, 0);
}

uint64_t sub_22FE22510()
{
  v9 = v0;
  v1 = v0[8];
  v0[2] = v1;
  v2 = v0[9];
  v0[3] = v2;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_22FDB4380(v1, v2);
  sub_22FE42A64();
  sub_22FE292D4(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto, &protocol conformance descriptor for FetchByDayResponseProto);
  sub_22FE42BE4();
  v3 = v0[7];
  v4 = v0[4];
  LOBYTE(v7[0]) = 2;
  FetchByDayResponse.init(protobuf:version:)(v3, v7, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22FE22674@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v6 = *a1;

  result = sub_22FDADA54(v4);
  *a3 = v6;
  return result;
}

uint64_t PhotosXPCServer.registerSendMessage(callback:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_22FE4F580;
  *(v7 + 24) = v6;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v5 + 40);
  *(v5 + 40) = 0x8000000000000000;
  sub_22FDDFC34(&unk_22FE4F588, v7, 0, isUniquelyReferenced_nonNull_native);
  *(v5 + 40) = v10;
  swift_endAccess();
}

uint64_t sub_22FE227D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  sub_22FE430A4();
  v6[7] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = sub_22FE43374();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x2822009F8](sub_22FE228F4, v8, v7);
}

uint64_t sub_22FE228F4(uint64_t a1)
{
  sub_22FE43094();
  result = sub_22FE43084();
  v1[10] = v3;
  if (v3)
  {
    v4 = result;
    v5 = v3;
    v7 = (v1[5] + *v1[5]);
    v6 = swift_task_alloc();
    v1[11] = v6;
    *v6 = v1;
    v6[1] = sub_22FE22A24;

    return v7(v4, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22FE22A24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_22FE22C18;
  }

  else
  {

    v6[13] = a2;
    v6[14] = a1;
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_22FE22B60;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_22FE22B60()
{
  v1 = v0[2];
  v2 = sub_22FDBF4C0(v0[14], v0[13]);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40A0, &qword_22FE4A0D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22FE49F60;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  *v1 = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_22FE22C18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE22C88()
{
  v2 = v1;
  v3 = sub_22FE42D84();
  MEMORY[0x28223BE20](v3 - 8);
  if (*(v0 + 32))
  {
    v4 = *(v0 + 32);
LABEL_3:

    return v4;
  }

  sub_22FE42DB4();
  v5 = qword_28148B420;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_28148B428;
  swift_allocObject();
  v7 = v0;
  swift_weakInit();
  v8 = v6;

  sub_22FE42D74();
  v4 = sub_22FE42D64();

  if (!v2)
  {
    *(v7 + 32) = v4;

    goto LABEL_3;
  }

  return v4;
}

uint64_t sub_22FE22E1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_22FE42E54();
    sub_22FE292D4(&qword_27DAE5358, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 16))(v6, a2, v4);
    sub_22FE22F2C(v5);
  }

  return result;
}

uint64_t sub_22FE22F2C(void *a1)
{
  v2 = v1;
  if (qword_28148B100 != -1)
  {
    swift_once();
  }

  v4 = sub_22FE42D34();
  __swift_project_value_buffer(v4, qword_28148B108);
  v5 = a1;
  v6 = sub_22FE42D14();
  v7 = sub_22FE436A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22FD6D000, v6, v7, "Session Cancelled: %@", v8, 0xCu);
    sub_22FD93E6C(v9, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  *(v2 + 32) = 0;
}

uint64_t sub_22FE23094(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 168) = a5;
  *(v6 + 176) = a6;
  *(v6 + 41) = a4;
  *(v6 + 152) = a2;
  *(v6 + 160) = a3;
  *(v6 + 144) = a1;
  return MEMORY[0x2822009F8](sub_22FE230C0, 0, 0);
}

uint64_t sub_22FE230C0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  *(v0 + 16) = qword_22FE4F808[*(v0 + 41)];
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  sub_22FDB4380(v1, v2);
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  *(v0 + 184) = off_28148B418;
  type metadata accessor for CommunicationActor();
  *(v0 + 192) = sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = sub_22FE43374();
  *(v0 + 200) = v4;
  *(v0 + 208) = v3;

  return MEMORY[0x2822009F8](sub_22FE231D8, v4, v3);
}

uint64_t sub_22FE231D8()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  v4 = swift_task_alloc();
  v0[27] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v0 + 2;
  v5 = swift_task_alloc();
  v0[28] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F8, &qword_22FE4F788);
  v0[29] = v6;
  *v5 = v0;
  v5[1] = sub_22FE232FC;

  return MEMORY[0x2822008A0](v0 + 10, v1, v2, 0x73656D28646E6573, 0xEE00293A65676173, sub_22FE291B8, v4, v6);
}

uint64_t sub_22FE232FC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_22FE23594;
  }

  else
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_22FE23418;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_22FE23418()
{
  sub_22FD917D4(*(v0 + 168), *(v0 + 176));
  *(v0 + 248) = *(v0 + 80);
  *(v0 + 42) = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_22FE23490, 0, 0);
}

uint64_t sub_22FE23490()
{
  v1 = *(v0 + 42);
  if (v1)
  {
    v3 = *(v0 + 248);
    v2 = *(v0 + 256);
    sub_22FDD4264();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    sub_22FE28D40(v3, v2, v1);
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 248);
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 48) = v7;
    *(v0 + 72) = 1;
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);

    return MEMORY[0x2822009F8](sub_22FE23604, v8, v9);
  }
}

uint64_t sub_22FE23594()
{
  sub_22FD917D4(v0[21], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FE23604()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  v4 = swift_task_alloc();
  v0[33] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v0 + 6;
  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  v5[1] = sub_22FE23710;
  v6 = v0[29];

  return MEMORY[0x2822008A0](v0 + 13, v1, v2, 0x73656D28646E6573, 0xEE00293A65676173, sub_22FE2933C, v4, v6);
}

uint64_t sub_22FE23710()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_22FE23A98;
  }

  else
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_22FE2382C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_22FE2382C()
{
  *(v0 + 288) = *(v0 + 104);
  *(v0 + 43) = *(v0 + 120);
  return MEMORY[0x2822009F8](sub_22FE23858, 0, 0);
}

uint64_t sub_22FE23858()
{
  if (*(v0 + 43) > 1u)
  {
    if (*(v0 + 43) != 2)
    {
      sub_22FE28D40(*(v0 + 248), *(v0 + 256), 0);
      v7 = *(v0 + 8);
      goto LABEL_11;
    }

    v5 = *(v0 + 288);
    v4 = *(v0 + 296);
    v2 = *(v0 + 248);
    v1 = *(v0 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52D8, &qword_22FE4F750);
    sub_22FDBC930(&qword_27DAE5338, &qword_27DAE52D8, &qword_22FE4F750, &unk_22FE4FEF0);
    swift_allocError();
    *v6 = v5;
    v6[1] = v4;
LABEL_6:
    swift_willThrow();
    sub_22FE28D40(v2, v1, 0);
    v7 = *(v0 + 8);
LABEL_11:

    return v7();
  }

  if (!*(v0 + 43))
  {
    v2 = *(v0 + 248);
    v1 = *(v0 + 256);
    sub_22FDD4264();
    swift_allocError();
    *v3 = 1;
    goto LABEL_6;
  }

  v8 = *(v0 + 288);
  v9 = *(v0 + 296);
  v10 = *(v0 + 144);
  *(v0 + 128) = v8;
  *(v0 + 136) = v9;
  sub_22FDB4380(v8, v9);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v0 + 304) = v11;
  *v11 = v0;
  v11[1] = sub_22FE23B68;

  return v13(v0 + 128);
}

uint64_t sub_22FE23A98()
{

  return MEMORY[0x2822009F8](sub_22FE23B00, 0, 0);
}

uint64_t sub_22FE23B00()
{
  sub_22FE28D40(v0[31], v0[32], 0);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22FE23B68()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_22FE23D18;
  }

  else
  {
    v2 = sub_22FE23C7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FE23C7C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  sub_22FE28D40(v1, v2, 1);
  sub_22FE28D40(v1, v2, 1);
  v3 = *(v0 + 248);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = v3;
  *(v0 + 72) = 1;
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_22FE23604, v4, v5);
}

uint64_t sub_22FE23D18()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[31];
  v3 = v0[32];
  sub_22FE28D40(v1, v2, 1);
  sub_22FE28D40(v1, v2, 1);
  sub_22FE28D40(v4, v3, 0);
  v5 = v0[1];

  return v5();
}

uint64_t sub_22FE23DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5340, &qword_22FE4F800);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - v13;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v20 = a6 & 1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_22FE22C88();
  v15 = *(v12 + 16);
  v19[1] = a1;
  v15(v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52C8, &qword_22FE4F748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F8, &qword_22FE4F788);
  sub_22FDBC930(&qword_27DAE5348, &qword_27DAE52C8, &qword_22FE4F748, &unk_22FE4FEC8);
  sub_22FDBC930(&qword_27DAE5350, &qword_27DAE52F8, &qword_22FE4F788, &unk_22FE4FEA0);
  sub_22FE42D94();
}

uint64_t sub_22FE240C0(uint64_t a1, uint64_t a2)
{
  sub_22FE42DE4();
  if (v3 != 1)
  {
    return sub_22FE42E04();
  }

  sub_22FE42DF4();
}

uint64_t sub_22FE24190(uint64_t a1)
{
  v2 = sub_22FE42E84();
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  MEMORY[0x28223BE20](v8);
  v10 = (&v51 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52C8, &qword_22FE4F748);
  sub_22FDBC930(&qword_27DAE52D0, &qword_27DAE52C8, &qword_22FE4F748, &unk_22FE4FE78);
  sub_22FE42E74();
  v51 = v3;
  v52 = v8;
  v11 = v55;
  v53 = v10;
  v54 = v7;
  v12 = v60;
  v13 = v61;
  v14 = v62;
  if (v63)
  {
    v15 = sub_22FE43404();
    v16 = v54;
    (*(*(v15 - 8) + 56))(v54, 1, 1, v15);
    v17 = v2;
    (*(v11 + 16))(v4, a1, v2);
    sub_22FE289E8(v12, v13, v14, 1);
    v18 = qword_28148B410;
    v19 = v56;

    v20 = v12;
    if (v18 != -1)
    {
      swift_once();
    }

    v21 = off_28148B418;
    v22 = sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v23 = v11;
    v24 = (*(v11 + 80) + 44) & ~*(v11 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = v22;
    *(v25 + 32) = v19;
    *(v25 + 40) = v20;
    (*(v23 + 32))(v25 + v24, v4, v17);

    sub_22FE0BBD0(0, 0, v16, &unk_22FE4F760, v25);
  }

  else
  {
    v55 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52E8, &qword_22FE4F768);
    v26 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE3EB0, &unk_22FE4FB70);
    v27 = swift_allocObject();
    *(v27 + 24) = 0;
    *(v27 + 16) = 0;
    sub_22FE289E8(v12, v13, v14, 0);
    v28 = MEMORY[0x277D84F90];
    sub_22FE38DB0(MEMORY[0x277D84F90]);
    v30 = v29;
    v32 = v31;
    sub_22FE38C7C(v28);
    v34 = v33;
    v51 = v12;
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F0, &qword_22FE4F770);
    v37 = swift_allocObject();
    *(v37 + 64) = 0;
    *(v37 + 16) = v30;
    *(v37 + 24) = v32;
    v38 = MEMORY[0x277D84FA0];
    *(v37 + 32) = MEMORY[0x277D84FA0];
    *(v37 + 40) = v34;
    *(v37 + 48) = v36;
    *(v37 + 56) = v38;
    *(v26 + 16) = v37;
    *(v26 + 24) = v27;
    v39 = v14;
    v40 = v56;

    v41 = v53;
    sub_22FE2C7E4(v26, v53);

    v42 = v13;
    v43 = *(v41 + *(v52 + 32));
    v44 = sub_22FE43404();
    v45 = v54;
    (*(*(v44 - 8) + 56))(v54, 1, 1, v44);

    sub_22FDB4380(v42, v39);
    v46 = qword_28148B410;

    if (v46 != -1)
    {
      swift_once();
    }

    v47 = off_28148B418;
    v48 = sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
    v49 = swift_allocObject();
    *(v49 + 16) = v47;
    *(v49 + 24) = v48;
    *(v49 + 32) = v51;
    *(v49 + 40) = v43;
    *(v49 + 48) = v40;
    *(v49 + 56) = v42;
    *(v49 + 64) = v39;
    *(v49 + 72) = v26;

    sub_22FE0BBD0(0, 0, v45, &unk_22FE4F780, v49);

    v57 = v43;
    v58 = 0;
    v59 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F8, &qword_22FE4F788);
    sub_22FDBC930(&qword_27DAE5300, &qword_27DAE52F8, &qword_22FE4F788, &unk_22FE4FE28);
    sub_22FE42E64();

    sub_22FD917D4(v42, v39);
    sub_22FD93E6C(v41, &qword_27DAE2CA8, &unk_22FE4BE90);
  }

  return sub_22FE28B04(v60, v61, v62, v63);
}

uint64_t sub_22FE2487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = a8;
  *(v8 + 352) = v13;
  *(v8 + 328) = a6;
  *(v8 + 336) = a7;
  *(v8 + 68) = a5;
  *(v8 + 320) = a4;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  *(v8 + 360) = off_28148B418;
  type metadata accessor for CommunicationActor();
  *(v8 + 368) = sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v10 = sub_22FE43374();
  *(v8 + 376) = v10;
  *(v8 + 384) = v9;

  return MEMORY[0x2822009F8](sub_22FE24988, v10, v9);
}

uint64_t sub_22FE24988()
{
  v63 = v0;
  v1 = v0;
  XPCRequestType.init(rawValue:)(*(v0 + 320));
  v2 = v62[0];
  if (LOBYTE(v62[0]) == 27)
  {
    if (qword_28148B100 != -1)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v3 = sub_22FE42D34();
      __swift_project_value_buffer(v3, qword_28148B108);
      v4 = sub_22FE42D14();
      v5 = sub_22FE436A4();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = *(v1 + 68);
        v7 = *(v1 + 320);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v62[0] = v9;
        *v8 = 67109378;
        *(v8 + 4) = v6;
        *(v8 + 8) = 2080;
        *(v1 + 304) = v7;
        v10 = sub_22FE430B4();
        v12 = sub_22FD98218(v10, v11, v62);

        *(v8 + 10) = v12;
        _os_log_impl(&dword_22FD6D000, v4, v5, "XPC %u: Invalid message type: %s", v8, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x23190C380](v9, -1, -1);
        MEMORY[0x23190C380](v8, -1, -1);
      }

      v13 = 1;
LABEL_20:
      sub_22FE28C14();
      v41 = swift_allocError();
      *v42 = v13;
      swift_willThrow();
      v43 = *(*(v1 + 352) + 16);
      os_unfair_lock_lock(v43 + 16);
      v44 = sub_22FE2BA64(v41);
      v46 = v45;
      os_unfair_lock_unlock(v43 + 16);
      if (!v44)
      {
        break;
      }

      v47 = *(v44 + 2);
      v61 = v44;
      if (v47)
      {
        v48 = v44 + 32;

        do
        {
          if (*v48++)
          {
            swift_continuation_throwingResume();
          }

          --v47;
        }

        while (v47);
      }

      else
      {
      }

      v50 = *(v46 + 16);
      v51 = v41;
      if (!v50)
      {
LABEL_36:
        sub_22FD8C47C(v61, v46);

        break;
      }

      v52 = 0;
      while (v52 < *(v46 + 16))
      {
        if (*(v46 + 32 + 8 * v52))
        {
          *(v1 + 296) = v41;
          v55 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
          v56 = v1;
          v57 = sub_22FE43C64();
          if (v57)
          {
            v53 = v57;
          }

          else
          {
            v53 = swift_allocError();
            *v58 = v41;
          }

          swift_allocError();
          *v54 = v53;
          swift_continuation_throwingResumeWithError();
          v1 = v56;
        }

        if (v50 == ++v52)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_41:
      swift_once();
    }

    v59 = *(v1 + 8);

    return v59();
  }

  else
  {
    v14 = *(v0 + 328);
    swift_beginAccess();
    v15 = *(v14 + 40);
    if (!*(v15 + 16) || (v16 = sub_22FD74930(LOBYTE(v62[0])), (v17 & 1) == 0))
    {
      swift_endAccess();
      if (qword_28148B100 != -1)
      {
        swift_once();
      }

      v32 = sub_22FE42D34();
      __swift_project_value_buffer(v32, qword_28148B108);
      v33 = sub_22FE42D14();
      v34 = sub_22FE436A4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = *(v0 + 68);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v62[0] = v37;
        *v36 = 67109378;
        *(v36 + 4) = v35;
        *(v36 + 8) = 2080;
        *(v1 + 65) = v2;
        v38 = sub_22FE430B4();
        v40 = sub_22FD98218(v38, v39, v62);

        *(v36 + 10) = v40;
        _os_log_impl(&dword_22FD6D000, v33, v34, "XPC %u: Couldn't find a registry for type: %s", v36, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x23190C380](v37, -1, -1);
        MEMORY[0x23190C380](v36, -1, -1);
      }

      v13 = 2;
      goto LABEL_20;
    }

    v18 = *(v15 + 56) + 16 * v16;
    v19 = *v18;
    *(v0 + 392) = *(v18 + 8);
    swift_endAccess();
    v20 = qword_28148B100;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_22FE42D34();
    *(v0 + 400) = __swift_project_value_buffer(v21, qword_28148B108);
    v22 = sub_22FE42D14();
    v23 = sub_22FE43694();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 68);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v62[0] = v26;
      *v25 = 67109378;
      *(v25 + 4) = v24;
      *(v25 + 8) = 2080;
      *(v1 + 66) = v2;
      v27 = sub_22FE430B4();
      v29 = sub_22FD98218(v27, v28, v62);

      *(v25 + 10) = v29;
      _os_log_impl(&dword_22FD6D000, v22, v23, "XPC %u: Starting to process request %s", v25, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23190C380](v26, -1, -1);
      MEMORY[0x23190C380](v25, -1, -1);
    }

    *(v1 + 232) = *(v1 + 336);
    v60 = (v19 + *v19);
    v30 = swift_task_alloc();
    *(v1 + 408) = v30;
    *v30 = v1;
    v30[1] = sub_22FE25084;

    return v60(v1 + 128, v1 + 232);
  }
}

uint64_t sub_22FE25084()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 384);
  v4 = *(v2 + 376);
  if (v0)
  {
    v5 = sub_22FE253A0;
  }

  else
  {
    v5 = sub_22FE251D8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_22FE251D8()
{
  v1 = v0[19];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 16, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[24] = swift_getAssociatedTypeWitness();
  v0[25] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 21);
  sub_22FE43464();

  v0[53] = 0;
  v5 = v0[45];
  v6 = v0[46];
  v7 = v0[24];
  v8 = v0[25];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 21), v7);
  v9 = swift_task_alloc();
  v0[54] = v9;
  *v9 = v0;
  v9[1] = sub_22FE25580;

  return MEMORY[0x282200310](v0 + 31, v5, v6, v0 + 39, v7, v8);
}

unint64_t *sub_22FE253A0()
{
  v1 = v0[52];
  v2 = *(v0[44] + 16);
  os_unfair_lock_lock(v2 + 16);
  v3 = sub_22FE2BA64(v1);
  v5 = v4;
  os_unfair_lock_unlock(v2 + 16);
  if (!v3)
  {
LABEL_18:

    v17 = v0[1];

    return v17();
  }

  v6 = *(v3 + 2);
  v18 = v3;
  if (v6)
  {
    v7 = v3 + 32;

    do
    {
      if (*v7++)
      {
        swift_continuation_throwingResume();
      }

      --v6;
    }

    while (v6);
  }

  else
  {
  }

  v9 = *(v5 + 16);
  result = v1;
  if (!v9)
  {
LABEL_17:
    sub_22FD8C47C(v18, v5);

    goto LABEL_18;
  }

  v11 = 0;
  while (v11 < *(v5 + 16))
  {
    if (*(v5 + 32 + 8 * v11))
    {
      v0[37] = v1;
      v14 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
      v15 = sub_22FE43C64();
      if (v15)
      {
        v12 = v15;
      }

      else
      {
        v12 = swift_allocError();
        *v16 = v1;
      }

      swift_allocError();
      *v13 = v12;
      result = swift_continuation_throwingResumeWithError();
    }

    if (v9 == ++v11)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE25580()
{
  v2 = *v1;

  v3 = *(v2 + 376);
  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_22FE25810;
  }

  else
  {
    v5 = sub_22FE25690;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_22FE25690(uint64_t a1)
{
  v2 = *(v1 + 256);
  *(v1 + 440) = *(v1 + 248);
  *(v1 + 448) = v2;
  if (v2 >> 60 == 15)
  {
    v3 = *(v1 + 352);
    __swift_destroy_boxed_opaque_existential_0((v1 + 168));
    sub_22FE402C0(0, *(v3 + 16));
    __swift_destroy_boxed_opaque_existential_0((v1 + 128));
    v4 = *(v1 + 8);

    return v4();
  }

  else
  {
    v6 = sub_22FE42D14();
    v7 = sub_22FE43694();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v1 + 424);
      v9 = *(v1 + 68);
      v10 = swift_slowAlloc();
      *v10 = 67109376;
      *(v10 + 4) = v9;
      *(v10 + 8) = 2048;
      *(v10 + 10) = v8;
      _os_log_impl(&dword_22FD6D000, v6, v7, "XPC %u: Enqueuing message %ld", v10, 0x12u);
      MEMORY[0x23190C380](v10, -1, -1);
    }

    v11 = *(v1 + 424);

    *(v1 + 456) = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = sub_22FE25A00;
      v13 = 0;
      v14 = 0;
    }

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

unint64_t *sub_22FE25810()
{
  v1 = v0[39];
  __swift_destroy_boxed_opaque_existential_0(v0 + 21);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v2 = *(v0[44] + 16);
  os_unfair_lock_lock(v2 + 16);
  v3 = sub_22FE2BA64(v1);
  v5 = v4;
  os_unfair_lock_unlock(v2 + 16);
  if (!v3)
  {
LABEL_18:

    v17 = v0[1];

    return v17();
  }

  v6 = *(v3 + 2);
  v18 = v3;
  if (v6)
  {
    v7 = v3 + 32;

    do
    {
      if (*v7++)
      {
        swift_continuation_throwingResume();
      }

      --v6;
    }

    while (v6);
  }

  else
  {
  }

  v9 = *(v5 + 16);
  result = v1;
  if (!v9)
  {
LABEL_17:
    sub_22FD8C47C(v18, v5);

    goto LABEL_18;
  }

  v11 = 0;
  while (v11 < *(v5 + 16))
  {
    if (*(v5 + 32 + 8 * v11))
    {
      v0[37] = v1;
      v14 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
      v15 = sub_22FE43C64();
      if (v15)
      {
        v12 = v15;
      }

      else
      {
        v12 = swift_allocError();
        *v16 = v1;
      }

      swift_allocError();
      *v13 = v12;
      result = swift_continuation_throwingResumeWithError();
    }

    if (v9 == ++v11)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE25A00()
{
  v1 = *(v0 + 352);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v0 + 264) = *(v0 + 440);
  os_unfair_lock_lock((v2 + 64));
  v4 = *(v2 + 48);
  if (v4 < 0)
  {
    os_unfair_lock_unlock((v2 + 64));
  }

  else
  {
    if (!*(v4 + 16))
    {
      os_unfair_lock_unlock((v2 + 64));
      goto LABEL_17;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = *(v2 + 32);
    v7 = *(v2 + 40);
    v9 = *(v2 + 56);
    *(v0 + 280) = v7;
    *(v0 + 288) = v4;
    if (v7)
    {
      v38 = v8;
      v10 = v5;
      v11 = *(v4 + 32);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v11);
      v12 = sub_22FE43E04();
      v14 = 1 << *(v7 + 16);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v15)
      {
        __break(1u);
        return MEMORY[0x282200830](v12, v13);
      }

      v17 = v16 & v12;
      v18 = sub_22FE42924();
      *(v0 + 72) = v7 + 16;
      *(v0 + 80) = v7 + 32;
      *(v0 + 88) = v17;
      *(v0 + 96) = v18;
      *(v0 + 104) = v19;
      *(v0 + 112) = v20;
      *(v0 + 120) = 0;
      v5 = v10;
      v8 = v38;
      if (v18)
      {
        goto LABEL_8;
      }

      do
      {
LABEL_6:
        __break(1u);
        do
        {
          sub_22FE42974();
          if (!*(v0 + 96))
          {
            goto LABEL_6;
          }

LABEL_8:
          v21 = *(v0 + 88);
          *(v0 + 16) = *(v0 + 72);
          *(v0 + 32) = v21;
          *(v0 + 48) = *(v0 + 104);
          *(v0 + 64) = *(v0 + 120);
          v22 = sub_22FE42954();
        }

        while ((v23 & 1) != 0 || v22);
      }

      while (!*(v0 + 40));
      v24 = *(v0 + 88);
    }

    else
    {
      v24 = 0;
    }

    sub_22FE3B720(0, v24);
    v26 = v25;
    v27 = *(v0 + 280);
    v28 = *(v0 + 288);
    *(v2 + 16) = v5;
    *(v2 + 24) = v6;
    *(v2 + 32) = v8;
    *(v2 + 40) = v27;
    *(v2 + 48) = v28;
    *(v2 + 56) = v9;
    os_unfair_lock_unlock((v2 + 64));
    if (v26)
    {
      if (v26 == 1)
      {
LABEL_17:
        os_unfair_lock_lock((v3 + 24));
        v29 = *(v3 + 16);
        *(v3 + 16) = v29 + 1;
        os_unfair_lock_unlock((v3 + 24));
        v30 = swift_task_alloc();
        *(v0 + 464) = v30;
        v30[2] = v2;
        v30[3] = v3;
        v30[4] = v0 + 264;
        v30[5] = v29;
        v31 = swift_task_alloc();
        *(v0 + 472) = v31;
        v31[2] = v2;
        v31[3] = v3;
        v31[4] = v29;
        v12 = swift_task_alloc();
        *(v0 + 480) = v12;
        *v12 = v0;
        *(v12 + 8) = sub_22FE25D1C;
        v13 = &unk_22FE4F798;

        return MEMORY[0x282200830](v12, v13);
      }

      v32 = *(v0 + 264);
      v33 = *(v0 + 272);
      sub_22FDB4380(v32, v33);
      v34 = *(*(v26 + 64) + 40);
      *v34 = v32;
      v34[1] = v33;
      swift_continuation_throwingResume();
    }
  }

  v35 = *(v0 + 376);
  v36 = *(v0 + 384);

  return MEMORY[0x2822009F8](sub_22FE25E78, v35, v36);
}

void sub_22FE25D1C()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_22FE25E60, 0, 0);
  }
}

uint64_t sub_22FE25E78()
{
  sub_22FDC27F0(v0[55], v0[56]);
  v0[53] = v0[57];
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[24];
  v4 = v0[25];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 21), v3);
  v5 = swift_task_alloc();
  v0[54] = v5;
  *v5 = v0;
  v5[1] = sub_22FE25580;

  return MEMORY[0x282200310](v0 + 31, v1, v2, v0 + 39, v3, v4);
}

uint64_t sub_22FE25F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *(v6 + 60) = a5;
  *(v6 + 136) = a4;
  *(v6 + 144) = a6;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v8 = sub_22FE43374();
  *(v6 + 152) = v8;
  *(v6 + 160) = v7;

  return MEMORY[0x2822009F8](sub_22FE26054, v8, v7);
}

uint64_t sub_22FE26054()
{
  v1 = *(v0 + 60);
  v2 = *(v0 + 136);

  v3 = sub_22FE2CA74(v1);

  if (qword_28148B100 != -1)
  {
    swift_once();
  }

  v4 = sub_22FE42D34();
  __swift_project_value_buffer(v4, qword_28148B108);
  v5 = sub_22FE42D14();
  v6 = sub_22FE43694();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 60);
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    *(v8 + 4) = v7;
    *(v8 + 8) = 2048;
    *(v8 + 10) = v3;
    _os_log_impl(&dword_22FD6D000, v5, v6, "XPC %u: Reading message %ld", v8, 0x12u);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  *(v0 + 168) = *(v2 + 48);

  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  *v9 = v0;
  v9[1] = sub_22FE26224;
  v10 = *(v0 + 60);

  return sub_22FE2CC8C(v0 + 112, v10);
}

uint64_t sub_22FE26224()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_22FE264A0;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_22FE26340;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_22FE26340()
{
  v1 = *(v0 + 120);
  if (v1 >> 60 == 15)
  {
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F8, &qword_22FE4F788);
    sub_22FDBC930(&qword_27DAE5300, &qword_27DAE52F8, &qword_22FE4F788, &unk_22FE4FE28);
    sub_22FE42E64();
  }

  else
  {
    *(v0 + 88) = *(v0 + 112);
    *(v0 + 96) = v1;
    *(v0 + 104) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F8, &qword_22FE4F788);
    sub_22FDBC930(&qword_27DAE5300, &qword_27DAE52F8, &qword_22FE4F788, &unk_22FE4FE28);
    sub_22FE42E64();
    sub_22FE28D40(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FE264A0()
{
  v1 = *(v0 + 184);

  swift_getErrorValue();
  sub_22FE43C74();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F8, &qword_22FE4F788);
  sub_22FDBC930(&qword_27DAE5300, &qword_27DAE52F8, &qword_22FE4F788, &unk_22FE4FE28);
  sub_22FE42E64();

  sub_22FE28D40(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 8);

  return v2();
}

void sub_22FE265D0(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, id *, uint64_t *))
{
  v27 = *(a1 + 16);
  if (!v27)
  {
LABEL_17:

    return;
  }

  v5 = 0;
  v6 = (a1 + 40);
  while (1)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_22FE43D14();
      __break(1u);
      goto LABEL_25;
    }

    v8 = *(v6 - 1);
    v7 = *v6;
    v32[2] = v8;
    v32[0] = v7;
    v9 = *v29;
    v10 = sub_22FD74718(v8);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_22;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_22FDDEF00();
      if (v16)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v21 = *v29;
    *(*v29 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v21[6] + 8 * v15) = v8;
    *(v21[7] + 8 * v15) = v7;
    v22 = v21[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_23;
    }

    v21[2] = v24;
LABEL_3:
    ++v5;
    v6 += 2;
    a2 = 1;
    if (v27 == v5)
    {
      goto LABEL_17;
    }
  }

  sub_22FDDDFB4(v14, a2 & 1);
  v18 = sub_22FD74718(v8);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_24;
  }

  v15 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v20 = *v29;
  v31 = *(*(*v29 + 56) + 8 * v15);

  a3(v30, &v31, v32);
  if (!v28)
  {

    *(v20[7] + 8 * v15) = v30[0];

    goto LABEL_3;
  }

  v31 = v28;
  v25 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_25:
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD00000000000001BLL, 0x800000022FE484A0);
  sub_22FE43A44();
  MEMORY[0x23190ACF0](39, 0xE100000000000000);
  sub_22FE43A74();
  __break(1u);
}

uint64_t sub_22FE268E0(_OWORD *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  return MEMORY[0x2822009F8](sub_22FE26908, 0, 0);
}

uint64_t sub_22FE26908()
{
  v1 = v0[2];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22FE269C4;
  v6 = v0[3];
  v5 = v0[4];

  return sub_22FE2A308(v6, v5, v3, v2);
}

uint64_t sub_22FE269C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FE26ABC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FD73F54;

  return sub_22FE23094(a1, a2, a3, v12, a5, a6);
}

uint64_t sub_22FE26B88(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 17) == 1)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5340, &qword_22FE4F800);
    return sub_22FE43384();
  }

  else
  {
    sub_22FE2924C(v2, *(a1 + 8), *(a1 + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5340, &qword_22FE4F800);
    return sub_22FE43394();
  }
}

uint64_t sub_22FE26C24@<X0>(uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v6 = result;
  if (result)
  {
    sub_22FE24190(a2);
  }

  *a3 = v6 == 0;
  return result;
}

uint64_t sub_22FE26CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a4;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_22FD73F54;

  return sub_22FE2487C(a1, a2, a3, v16, a5, a6, a7, a8);
}

uint64_t sub_22FE26DA0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a2;
  return MEMORY[0x2822009F8](sub_22FE26DCC, 0, 0);
}

uint64_t sub_22FE26DCC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 72) = 2;
  *(v2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  *(v2 + 32) = sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908, &protocol conformance descriptor for DestructableSequence<A>);
  v8 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_22FE26F30;
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return v8(v6, v4, v5, v0 + 72);
}

uint64_t sub_22FE26F30()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FE27064, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22FE27064()
{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE270C8(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a2;
  return MEMORY[0x2822009F8](sub_22FE270F4, 0, 0);
}

uint64_t sub_22FE270F4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 72) = 2;
  *(v2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52A8, &qword_22FE4F710);
  *(v2 + 32) = sub_22FDBC930(&qword_27DAE52B0, &qword_27DAE52A8, &qword_22FE4F710, &protocol conformance descriptor for MakeThrowingSequence<A>);
  v8 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_22FE27258;
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return v8(v6, v4, v5, v0 + 72);
}

uint64_t sub_22FE27258()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FE29324, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void *sub_22FE2738C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5328, &qword_22FE4F7A8);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE3EB0, &unk_22FE4FB70);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = 0;

  v9 = MEMORY[0x277D84F90];
  sub_22FE38B64(MEMORY[0x277D84F90]);
  v11 = v10;
  v13 = v12;
  sub_22FE38B28(v9);
  v15 = v14;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5330, &qword_22FE4F7B0);
  v18 = swift_allocObject();
  *(v18 + 64) = 0;
  *(v18 + 16) = v11;
  *(v18 + 24) = v13;
  v19 = MEMORY[0x277D84FA0];
  *(v18 + 32) = MEMORY[0x277D84FA0];
  *(v18 + 40) = v15;
  *(v18 + 48) = v17;
  *(v18 + 56) = v19;
  *(v7 + 16) = v18;
  *(v7 + 24) = v8;
  v20 = sub_22FE43404();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = v7;

  v22 = sub_22FE0BBD0(0, 0, v6, &unk_22FE4F7C0, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4538, &unk_22FE4B8B8);
  v23 = swift_allocObject();
  v23[2] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE4E00, &qword_22FE4E720);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v23[3] = v24;
  v23[4] = sub_22FE28EF4;
  v23[5] = v22;
  return v23;
}

void *sub_22FE275DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52E8, &qword_22FE4F768);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE3EB0, &unk_22FE4FB70);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = 0;

  v9 = MEMORY[0x277D84F90];
  sub_22FE38DB0(MEMORY[0x277D84F90]);
  v11 = v10;
  v13 = v12;
  sub_22FE38C7C(v9);
  v15 = v14;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F0, &qword_22FE4F770);
  v18 = swift_allocObject();
  *(v18 + 64) = 0;
  *(v18 + 16) = v11;
  *(v18 + 24) = v13;
  v19 = MEMORY[0x277D84FA0];
  *(v18 + 32) = MEMORY[0x277D84FA0];
  *(v18 + 40) = v15;
  *(v18 + 48) = v17;
  *(v18 + 56) = v19;
  *(v7 + 16) = v18;
  *(v7 + 24) = v8;
  v20 = sub_22FE43404();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = v7;

  v22 = sub_22FE0BBD0(0, 0, v6, &unk_22FE4F7E0, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  v23 = swift_allocObject();
  v23[2] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE4E00, &qword_22FE4E720);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v23[3] = v24;
  v23[4] = sub_22FE2932C;
  v23[5] = v22;
  return v23;
}

uint64_t sub_22FE2782C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v13 = v4[4];
  v12 = v4[5];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_22FD8C738;

  return sub_22FE1E4CC(a1, a2, a3, a4, v13, v12, v10, v11);
}

uint64_t sub_22FE2790C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22FD8C738;

  return sub_22FE1ED78(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22FE279D8(uint64_t a1, _OWORD *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22FD8C738;

  return sub_22FE26DA0(a1, a2, v7, v6);
}

uint64_t sub_22FE27AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v12 = v4[6];
  v11 = v4[7];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_22FD8C738;

  return sub_22FE1F944(a1, a2, a3, a4, v12, v11, v9, v10);
}

uint64_t sub_22FE27B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22FD8C738;

  return sub_22FE20064(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22FE27C60(uint64_t a1, _OWORD *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22FD8C738;

  return sub_22FE270C8(a1, a2, v7, v6);
}

uint64_t sub_22FE27D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v13 = v4[4];
  v12 = v4[5];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_22FD8C738;

  return sub_22FE20664(a1, a2, a3, a4, v13, v12, v10, v11);
}

uint64_t sub_22FE27E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v13 = v4[4];
  v12 = v4[5];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_22FD73F54;

  return sub_22FE20BC4(a1, a2, a3, a4, v13, v12, v10, v11);
}

uint64_t sub_22FE27EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22FD8C738;

  return sub_22FE21450(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22FE27FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v13 = v4[4];
  v12 = v4[5];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_22FD8C738;

  return sub_22FE21ACC(a1, a2, a3, a4, v13, v12, v10, v11);
}

uint64_t sub_22FE28094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22FD8C738;

  return sub_22FE227D0(a1, a2, a3, a4, v11, v10);
}

unint64_t sub_22FE28164()
{
  result = qword_28148BA10;
  if (!qword_28148BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148BA10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCRequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCRequestType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22FE283A8(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v36 = sub_22FE428C4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for GenericListProto(0);
  MEMORY[0x28223BE20](v32);
  v31 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v30[1] = v1;
    v46 = MEMORY[0x277D84F90];
    sub_22FD92538(0, v8, 0);
    v9 = v46;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v34 = *(v10 + 56);
    v35 = v11;
    v33 = (v10 - 8);
    do
    {
      v13 = v36;
      v14 = v10;
      v35(v5, v12, v36);
      v37 = sub_22FE428A4();
      v38 = v15;
      v39 = v16;
      v40 = v17;
      v41 = v18;
      v42 = v19;
      v43 = v20;
      v44 = v21;
      v45 = v22;
      sub_22FE428A4();
      sub_22FE42694();
      swift_allocObject();
      v23 = sub_22FE42644();
      v6 = (*v33)(v5, v13);
      v46 = v9;
      v25 = *(v9 + 16);
      v24 = *(v9 + 24);
      if (v25 >= v24 >> 1)
      {
        v6 = sub_22FD92538((v24 > 1), v25 + 1, 1);
        v9 = v46;
      }

      *(v9 + 16) = v25 + 1;
      v26 = v9 + 16 * v25;
      *(v26 + 32) = 0x1000000000;
      *(v26 + 40) = v23 | 0x4000000000000000;
      v12 += v34;
      --v8;
      v10 = v14;
    }

    while (v8);
  }

  MEMORY[0x28223BE20](v6);
  v30[-2] = v9;
  sub_22FE292D4(&qword_27DAE4840, type metadata accessor for GenericListProto, &protocol conformance descriptor for GenericListProto);
  v27 = v31;
  sub_22FE42C14();

  v28 = sub_22FE42BD4();
  sub_22FE28D64(v27, type metadata accessor for GenericListProto);
  return v28;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x23190C380);
  }

  return result;
}

uint64_t sub_22FE287E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22FD8C738;

  return sub_22FE1EF60(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_22FE288B4(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD8C738;

  return sub_22FE1EA68(a1, a2, v6);
}

double sub_22FE2896C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[3] = a1;
  sub_22FE29564(sub_22FE289CC, v4);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_22FE289E8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return sub_22FDB4380(a2, a3);
  }

  return result;
}

uint64_t sub_22FE289FC(uint64_t a1)
{
  v4 = *(sub_22FE42E84() - 8);
  v5 = (*(v4 + 80) + 44) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD73F54;

  return sub_22FE25F60(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_22FE28B04(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return sub_22FD917D4(a2, a3);
  }

  return result;
}

void sub_22FE28B18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FD8C738;

  JUMPOUT(0x22FE26CA8);
}

unint64_t sub_22FE28C14()
{
  result = qword_27DAE5308;
  if (!qword_27DAE5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE5308);
  }

  return result;
}

uint64_t sub_22FE28C68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22FD8C738;

  return sub_22FE3FDEC(a1, v4, v5, v7, v6);
}

uint64_t sub_22FE28D40(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return sub_22FD917D4(result, a2);
  }

  return result;
}

uint64_t sub_22FE28D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FE28DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FE28E2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FD8C738;

  return sub_22FE1D204(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22FE28EFC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FD8C738;

  return sub_22FE1DB24(a1, v1);
}

uint64_t sub_22FE28F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_190Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_22FE29044(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FD8C738;

  return sub_22FE1D694(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22FE2910C(_OWORD *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FD8C738;

  return sub_22FE268E0(a1, v1);
}

uint64_t sub_22FE291D0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5340, &qword_22FE4F800);

  return sub_22FE26B88(a1);
}

uint64_t sub_22FE2924C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return sub_22FDB4380(result, a2);
  }

  return result;
}

uint64_t sub_22FE292D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FE29370(uint64_t a1, uint64_t a2)
{
  v5 = sub_22FE42EB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  v9 = *(off_28148B418 + 2);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_22FE42EC4();
  result = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  sub_22FE29DEC();

  if (v2)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FE29564(uint64_t a1, uint64_t a2)
{
  v5 = sub_22FE42EB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  v9 = *(off_28148B418 + 2);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_22FE42EC4();
  result = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  sub_22FE29E14(&v16);

  if (v2)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return isEscapingClosureAtFileLocation;
    }

    goto LABEL_10;
  }

  isEscapingClosureAtFileLocation = v16;
  v14 = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    return isEscapingClosureAtFileLocation;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t XPCEventStream.__allocating_init()()
{
  v0 = swift_allocObject();
  if (qword_28148B420 != -1)
  {
    swift_once();
  }

  v1 = qword_28148B428;
  v4[4] = sub_22FE29B94;
  v4[5] = v0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_22FE29CEC;
  v4[3] = &block_descriptor;
  v2 = _Block_copy(v4);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v1, v2);
  _Block_release(v2);
  return v0;
}

uint64_t XPCEventStream.init()()
{
  if (qword_28148B420 != -1)
  {
    swift_once();
  }

  v1 = qword_28148B428;
  v4[4] = sub_22FE29E60;
  v4[5] = v0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_22FE29CEC;
  v4[3] = &block_descriptor_4;
  v2 = _Block_copy(v4);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v1, v2);
  _Block_release(v2);
  return v0;
}

void sub_22FE2997C(void *a1, uint64_t a2)
{
  v4 = sub_22FE42D54();
  if (xpc_dictionary_get_string(a1, v4))
  {
    v5 = sub_22FE43104();
    v7 = v6;
    MEMORY[0x28223BE20](v5);
    v16[2] = a2;
    v16[3] = v8;
    v16[4] = v7;
    sub_22FE29370(sub_22FE29DCC, v16);
  }

  else
  {
    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v9 = sub_22FE42D34();
    __swift_project_value_buffer(v9, qword_28148B108);
    swift_unknownObjectRetain();
    v17 = sub_22FE42D14();
    v10 = sub_22FE436A4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      swift_getObjectType();
      v18 = a1;
      swift_unknownObjectRetain();
      v13 = sub_22FE430B4();
      v15 = sub_22FD98218(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_22FD6D000, v17, v10, "Unknown name for field: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x23190C380](v12, -1, -1);
      MEMORY[0x23190C380](v11, -1, -1);
    }

    else
    {
    }
  }
}

void sub_22FE29B9C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_28148B100 != -1)
  {
    swift_once();
  }

  v5 = sub_22FE42D34();
  __swift_project_value_buffer(v5, qword_28148B108);

  v6 = sub_22FE42D14();
  v7 = sub_22FE436C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_22FD98218(a2, a3, &v10);
    _os_log_impl(&dword_22FD6D000, v6, v7, "Got XPC Event Stream with object %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }
}

uint64_t sub_22FE29CEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_22FE29E14@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_22FE29E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4580, &qword_22FE4B9C0);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE29F04, 0, 0);
}

uint64_t sub_22FE29F04()
{
  v1 = v0[3];
  os_unfair_lock_lock((v1 + 64));
  v2 = sub_22FE2C064((v1 + 16), sub_22FE3CEEC);
  os_unfair_lock_unlock((v1 + 64));
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = v0[3];
      v3 = v0[4];
      v5 = v0[2];
      os_unfair_lock_lock((v3 + 24));
      v6 = *(v3 + 16);
      *(v3 + 16) = v6 + 1;
      os_unfair_lock_unlock((v3 + 24));
      v7 = swift_task_alloc();
      v0[6] = v7;
      v7[2] = v4;
      v7[3] = v3;
      v7[4] = v5;
      v7[5] = v6;
      v8 = swift_task_alloc();
      v0[7] = v8;
      v8[2] = v4;
      v8[3] = v3;
      v8[4] = v6;
      v9 = swift_task_alloc();
      v0[8] = v9;
      *v9 = v0;
      v9[1] = sub_22FE2A164;

      return MEMORY[0x282200830](v9, &unk_22FE4FC50);
    }

    v10 = v0[5];
    sub_22FE41BB0(v0[2], v10);
    v11 = type metadata accessor for StoredPhoto(0);
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
    sub_22FD93E04(v10, *(*(v2 + 64) + 40), &qword_27DAE4580, &qword_22FE4B9C0);
    swift_continuation_throwingResume();
  }

  v12 = v0[1];

  return v12();
}

void sub_22FE2A164()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_22FE2A2A8, 0, 0);
  }
}

uint64_t sub_22FE2A2A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE2A308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22FE2A330, 0, 0);
}

uint64_t sub_22FE2A330()
{
  v1 = v0[6];
  os_unfair_lock_lock((v1 + 64));
  v2 = sub_22FE2C064((v1 + 16), sub_22FE3CF14);
  os_unfair_lock_unlock((v1 + 64));
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = v0[6];
      v3 = v0[7];
      os_unfair_lock_lock((v3 + 24));
      v5 = *(v3 + 16);
      *(v3 + 16) = v5 + 1;
      os_unfair_lock_unlock((v3 + 24));
      v6 = swift_task_alloc();
      v0[8] = v6;
      v6[2] = v4;
      v6[3] = v3;
      v6[4] = v0 + 2;
      v6[5] = v5;
      v7 = swift_task_alloc();
      v0[9] = v7;
      v7[2] = v4;
      v7[3] = v3;
      v7[4] = v5;
      v8 = swift_task_alloc();
      v0[10] = v8;
      *v8 = v0;
      v8[1] = sub_22FE2A534;

      return MEMORY[0x282200830](v8, &unk_22FE4FBB8);
    }

    v10 = v0[4];
    v9 = v0[5];
    sub_22FDB4380(v10, v9);
    v11 = *(*(v2 + 64) + 40);
    *v11 = v10;
    v11[1] = v9;
    swift_continuation_throwingResume();
  }

  v12 = v0[1];

  return v12();
}

void sub_22FE2A534()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_22FE2A678, 0, 0);
  }
}

uint64_t sub_22FE2A68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_22FE2A6B0, 0, 0);
}

uint64_t sub_22FE2A6B0()
{
  v1 = *(v0 + 72);
  os_unfair_lock_lock(v1 + 16);
  sub_22FE2BD0C(v0 + 16);
  os_unfair_lock_unlock(v1 + 16);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  *(v0 + 88) = v2;
  *(v0 + 96) = v4;
  v5 = *(v0 + 40);
  *(v0 + 41) = v5;
  if (v3)
  {
    if (v3 == 1)
    {
      v7 = *(v0 + 72);
      v6 = *(v0 + 80);
      sub_22FE419B4(1, v2, v4, v5);
      os_unfair_lock_lock((v6 + 24));
      v8 = *(v6 + 16);
      *(v6 + 16) = v8 + 1;
      os_unfair_lock_unlock((v6 + 24));
      v9 = swift_task_alloc();
      *(v0 + 104) = v9;
      v9[2] = v7;
      v9[3] = v6;
      v9[4] = v8;
      v10 = swift_task_alloc();
      *(v0 + 112) = v10;
      v10[2] = v7;
      v10[3] = v6;
      v10[4] = v8;
      v11 = swift_task_alloc();
      *(v0 + 120) = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5408, &qword_22FE4FC28);
      *v11 = v0;
      v11[1] = sub_22FE2A9A4;
      v12 = *(v0 + 64);

      return MEMORY[0x282200830](v12, &unk_22FE4FC20);
    }

    sub_22FE419B4(v3, v2, v4, v5);
    swift_continuation_throwingResume();
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_7:
    *(v0 + 48) = v2;
    v13 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    swift_willThrowTypedImpl();
    *(v0 + 56) = v2;
    if (sub_22FE43C64())
    {
      sub_22FE41A00(v2, v4, 1);
      v14 = v4;
      v15 = v2;
    }

    else
    {
      swift_allocError();
      *v18 = v2;
      v3 = *(v0 + 16);
      v15 = *(v0 + 24);
      v14 = *(v0 + 32);
      v5 = *(v0 + 40);
    }

    sub_22FE419E0(v3, v15, v14, v5);
    sub_22FE41A00(v2, v4, 1);
    v17 = *(v0 + 8);
    goto LABEL_13;
  }

  sub_22FE419B4(0, v2, v4, v5);
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_10:
  v16 = *(v0 + 64);
  *v16 = v2;
  v16[1] = v4;
  sub_22FE419E0(v3, *(v0 + 88), *(v0 + 96), *(v0 + 41));
  v17 = *(v0 + 8);
LABEL_13:

  return v17();
}

uint64_t sub_22FE2A9A4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_22FE2AB64;
  }

  else
  {
    v2 = sub_22FE2AAF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FE2AAF8()
{
  sub_22FE419E0(1, *(v0 + 88), *(v0 + 96), *(v0 + 41));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE2AB64()
{
  sub_22FE419E0(1, *(v0 + 88), *(v0 + 96), *(v0 + 41));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE2ABD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5420, &qword_22FE4FC58);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  MEMORY[0x28223BE20](v11);
  v13 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v55 - v17);
  v19 = v4[4];
  if (v19 < 0)
  {
    return 1;
  }

  v20 = v4[1];
  v21 = v4[5];
  v57 = *v4;
  v58 = v21;
  v22 = v4[2];
  v23 = v4[3];
  v64 = v57;
  v65 = v20;
  v62 = v19;
  v63 = v22;
  v61 = v23;
  v59 = v16;
  v60 = a3;
  v24 = *(v15 + 48);
  v25 = v15;
  v56 = v19;
  sub_22FE41BB0(a2, v18 + v24);
  v26 = type metadata accessor for StoredPhoto(0);
  v27 = v18 + v24;
  v28 = v59;
  (*(*(v26 - 8) + 56))(v27, 0, 1, v26);
  *v18 = v60;
  v18[1] = a1;
  sub_22FE3CF28(v18, v10);
  if ((*(v28 + 48))(v10, 1, v25) != 1)
  {
    sub_22FD93E6C(v18, &qword_27DAE4130, &qword_22FE4A140);
    sub_22FD93E6C(v10, &qword_27DAE5420, &qword_22FE4FC58);
    v32 = v63;
    *v4 = v57;
    v4[1] = v20;
    v4[2] = v32;
    v4[3] = v23;
    v33 = v58;
    v4[4] = v56;
    v4[5] = v33;
    return 1;
  }

  v29 = v57;
  v55 = v23;
  sub_22FD93E6C(v10, &qword_27DAE5420, &qword_22FE4FC58);
  if (!*(v56 + 16))
  {
    v35 = v20 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v36 = *(v20 + 16);
    if (v29)
    {
      v37 = v29;
      v38 = v56;

      sub_22FE3A674(v18, v35, v36, (v37 + 16), v37 + 32);
      v40 = v39;
      v42 = v41;

      if ((v40 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = v56;
      if (v36)
      {
        v49 = *(v59 + 72);
        do
        {
          sub_22FD764B4(v35, v13, &qword_27DAE4130, &qword_22FE4A140);
          v50 = *v13;
          sub_22FD93E6C(v13, &qword_27DAE4130, &qword_22FE4A140);
          if (v50 == v60)
          {
            goto LABEL_19;
          }

          v35 += v49;
        }

        while (--v36);
      }

      v42 = 0;
    }

    sub_22FE39904(v18, v42);
LABEL_19:
    sub_22FD93E6C(v18, &qword_27DAE4130, &qword_22FE4A140);
    v51 = v65;
    v52 = v63;
    *v4 = v64;
    v4[1] = v51;
    v53 = v55;
    v4[2] = v52;
    v4[3] = v53;
    v54 = v58;
    v4[4] = v38;
    v4[5] = v54;
    return 2;
  }

  v30 = v29;
  if (v55)
  {
    v31 = sub_22FE3FECC(v55 + 16, v55 + 32, v56, 0);
  }

  else
  {
    v31 = 0;
  }

  v43 = v58;
  sub_22FE3B738(0, v31, sub_22FE3CEEC);
  v45 = v44;
  sub_22FD93E6C(v18, &qword_27DAE4130, &qword_22FE4A140);
  result = v45;
  v47 = v62;
  v46 = v63;
  v48 = v61;
  *v4 = v30;
  v4[1] = v20;
  v4[2] = v46;
  v4[3] = v48;
  v4[4] = v47;
  v4[5] = v43;
  return result;
}

uint64_t sub_22FE2AFE0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  if (v5 < 0)
  {
    return 1;
  }

  v6 = v4;
  v11 = *v4;
  v12 = v4[1];
  v26 = v4[5];
  v13 = v4[2];
  v14 = v4[3];
  v34 = *v4;
  v35 = v12;
  v32 = v5;
  v33 = v13;
  v31 = v14;
  sub_22FDB4380(a2, a3);
  sub_22FE3D154(a4, &v27);
  v15 = v28;
  if (v28 != 1)
  {
    sub_22FDC27F0(a2, a3);
    sub_22FE4186C(v27, v15, v29, v30);
    v17 = v33;
    *v6 = v11;
    v6[1] = v12;
    v6[2] = v17;
    v6[3] = v14;
    v6[4] = v5;
    v6[5] = v26;
    return 1;
  }

  sub_22FE4186C(v27, 1, v29, v30);
  if (*(v5 + 16))
  {
    if (v14)
    {
      v16 = sub_22FE3FECC(v14 + 16, v14 + 32, v5, 0);
    }

    else
    {
      v16 = 0;
    }

    sub_22FE3B738(0, v16, sub_22FE3CF14);
    v22 = v21;
    sub_22FDC27F0(a2, a3);
    result = v22;
    v24 = v32;
    v23 = v33;
    v25 = v31;
    *v6 = v11;
    v6[1] = v12;
    v6[2] = v23;
    v6[3] = v25;
    v6[4] = v24;
    v6[5] = v26;
  }

  else
  {
    sub_22FE39794(a4, a1, a2, a3);
    sub_22FDC27F0(a2, a3);
    v19 = v35;
    v20 = v33;
    *v6 = v34;
    v6[1] = v19;
    v6[2] = v20;
    v6[3] = v14;
    v6[4] = v5;
    v6[5] = v26;
    return 2;
  }

  return result;
}

uint64_t sub_22FE2B198(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5420, &qword_22FE4FC58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v18 = &v49 - v17;
  v19 = v2[4];
  if (v19 < 0)
  {
    return 1;
  }

  v50 = v16;
  v51 = v15;
  v54 = v6;
  v59 = v19;
  v21 = *v2;
  v20 = v2[1];
  v22 = v2[3];
  v56 = v2[2];
  v57 = v22;
  v58 = v2[5];
  v61 = v21;
  v62 = v20;
  v23 = *(v14 + 48);
  v24 = type metadata accessor for StoredPhoto(0);
  (*(*(v24 - 8) + 56))(&v18[v23], 1, 1, v24);
  *v18 = a1;
  *(v18 + 1) = 0;
  v25 = v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v52 = v20;
  v53 = v21;
  v26 = *(v20 + 16);
  v55 = v18;
  if (!v21)
  {
    if (v26)
    {
      v27 = 0;
      v32 = *(v8 + 72);
      while (1)
      {
        sub_22FD764B4(v25, v10, &qword_27DAE4130, &qword_22FE4A140);
        v33 = *v10;
        sub_22FD93E6C(v10, &qword_27DAE4130, &qword_22FE4A140);
        if (v33 == a1)
        {
          break;
        }

        ++v27;
        v25 += v32;
        if (v26 == v27)
        {
          goto LABEL_9;
        }
      }

      v31 = 0;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v27 = sub_22FE3A674(v18, v25, v26, (v21 + 16), v21 + 32);
  v29 = v28;
  v31 = v30;

  if (v29)
  {
LABEL_9:
    v34 = v55;
    sub_22FD764B4(v55, v10, &qword_27DAE4130, &qword_22FE4A140);
    v35 = v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v35;
    v37 = v54;
    sub_22FE3F3BC(v10, isUniquelyReferenced_nonNull_native, v54);
    sub_22FD93E6C(v37, &qword_27DAE5420, &qword_22FE4FC58);
    sub_22FD93E6C(v34, &qword_27DAE4130, &qword_22FE4A140);
    v38 = v60;
    v39 = v52;
    *v2 = v53;
    v2[1] = v39;
    v40 = v57;
    v2[2] = v38;
    v2[3] = v40;
    v41 = v58;
    v2[4] = v59;
    v2[5] = v41;
    return 1;
  }

LABEL_12:
  v43 = v50;
  sub_22FE3B454(v27, v31, v50);
  sub_22FD93E6C(v55, &qword_27DAE4130, &qword_22FE4A140);
  v44 = v51;
  sub_22FD93E04(v43, v51, &qword_27DAE4130, &qword_22FE4A140);
  v45 = v62;
  *v2 = v61;
  v2[1] = v45;
  v46 = v57;
  v2[2] = v56;
  v2[3] = v46;
  v47 = v58;
  v2[4] = v59;
  v2[5] = v47;
  v48 = *(v44 + 8);
  sub_22FD93E6C(v44, &qword_27DAE4130, &qword_22FE4A140);
  return v48;
}

uint64_t sub_22FE2B560(uint64_t a1)
{
  v2 = v1[4];
  if (v2 < 0)
  {
    return 1;
  }

  v3 = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[5];
  v25 = v5;
  v26 = v6;
  v10 = (v6 + 32);
  v11 = *(v6 + 16);
  if (v5)
  {
    v12 = sub_22FE3A88C(a1, 0, 0, 0xF000000000000000, v10, v11, (v5 + 16), v5 + 32);
    if ((v14 & 1) == 0)
    {
LABEL_12:
      sub_22FE3B5CC(v12, v13, &v22);
      v19 = *(&v22 + 1);
      v18 = v23;
      v20 = v24;
      sub_22FDC27F0(0, 0xF000000000000000);
      sub_22FDC27F0(v18, v20);
      result = v19;
      v21 = v26;
      *v3 = v25;
      v3[1] = v21;
      v3[2] = v7;
      v3[3] = v8;
      goto LABEL_13;
    }
  }

  else if (v11)
  {
    v12 = 0;
    while (1)
    {
      v16 = *v10;
      v10 += 4;
      if (v16 == a1)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_10;
      }
    }

    v13 = 0;
    goto LABEL_12;
  }

LABEL_10:
  sub_22FDE65C8(0, 0xF000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22FE3F77C(a1, 0, 0, 0xF000000000000000, isUniquelyReferenced_nonNull_native, &v22);
  sub_22FE4186C(v22, *(&v22 + 1), v23, v24);
  sub_22FDC27F0(0, 0xF000000000000000);
  *v1 = v5;
  v1[1] = v6;
  v1[2] = v7;
  v1[3] = v8;
  result = 1;
LABEL_13:
  v3[4] = v2;
  v3[5] = v9;
  return result;
}

uint64_t sub_22FE2B6C8(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = (v4 + 32);
  v6 = *(v4 + 16);
  if (!*v2)
  {
    if (v6)
    {
      v7 = 0;
      while (1)
      {
        v10 = *v5;
        v5 += 2;
        if (v10 == a1)
        {
          break;
        }

        if (v6 == ++v7)
        {
          return 0;
        }
      }

      v8 = 0;
      return sub_22FE3B738(v7, v8, sub_22FE3CF14);
    }

    return 0;
  }

  v7 = sub_22FE3A9A8(a1, a2, v5, v6, (*v2 + 16), *v2 + 32);
  if (v9)
  {
    return 0;
  }

  return sub_22FE3B738(v7, v8, sub_22FE3CF14);
}

char *sub_22FE2B768(unint64_t *a1)
{
  v2 = v1[4];
  if (v2 < 0)
  {
    return 0;
  }

  v4 = v1[1];

  if (a1 && !*(v2 + 16))
  {
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    v7 = sub_22FE43C64();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = swift_allocError();
      *v9 = a1;
    }

    *v1 = v8;
    v1[1] = 0;
    v1[2] = 0;
    v1[3] = 0;
  }

  else
  {
    *v1 = 0u;
    *(v1 + 1) = 0u;
  }

  *(v1 + 2) = xmmword_22FE49940;
  v10 = *(v4 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v28 = MEMORY[0x277D84F90];
    sub_22FD925A8(0, v10, 0);
    v5 = v28;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
    v13 = 0;
    v16 = *(v12 - 8);
    result = (v12 - 8);
    v15 = v16;
    v17 = v4 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + 8;
    do
    {
      if (v13 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v18 = *(v17 + *(v15 + 72) * v13);
      v29 = v5;
      v20 = *(v5 + 16);
      v19 = *(v5 + 24);
      if (v20 >= v19 >> 1)
      {
        v21 = v15;
        result = sub_22FD925A8((v19 > 1), v20 + 1, 1);
        v15 = v21;
        v5 = v29;
      }

      ++v13;
      *(v5 + 16) = v20 + 1;
      *(v5 + 8 * v20 + 32) = v18;
    }

    while (v10 != v13);
    v11 = MEMORY[0x277D84F90];
    v22 = *(v2 + 16);
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  v5 = MEMORY[0x277D84F90];
  v22 = *(v2 + 16);
  if (!v22)
  {
LABEL_24:

    return v5;
  }

LABEL_17:
  v30 = v11;
  result = sub_22FD92578(0, v22, 0);
  v23 = 0;
  v24 = 40;
  while (v23 < *(v2 + 16))
  {
    v25 = *(v2 + v24);
    v27 = *(v30 + 16);
    v26 = *(v30 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_22FD92578((v26 > 1), v27 + 1, 1);
    }

    ++v23;
    *(v30 + 16) = v27 + 1;
    *(v30 + 8 * v27 + 32) = v25;
    v24 += 16;
    if (v22 == v23)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

char *sub_22FE2BA64(unint64_t *a1)
{
  v2 = v1[4];
  if (v2 < 0)
  {
    return 0;
  }

  v4 = v1[1];

  if (a1 && !*(v2 + 16))
  {
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    v7 = sub_22FE43C64();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = swift_allocError();
      *v9 = a1;
    }

    *v1 = v8;
    v1[1] = 0;
    v1[2] = 0;
    v1[3] = 0;
  }

  else
  {
    *v1 = 0u;
    *(v1 + 1) = 0u;
  }

  *(v1 + 2) = xmmword_22FE49940;
  v10 = *(v4 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v24 = MEMORY[0x277D84F90];
    result = sub_22FD925A8(0, v10, 0);
    v13 = 0;
    v5 = v24;
    v14 = (v4 + 40);
    do
    {
      if (v13 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v15 = *v14;
      v17 = *(v24 + 16);
      v16 = *(v24 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_22FD925A8((v16 > 1), v17 + 1, 1);
      }

      ++v13;
      *(v24 + 16) = v17 + 1;
      *(v24 + 8 * v17 + 32) = v15;
      v14 += 4;
    }

    while (v10 != v13);
    v11 = MEMORY[0x277D84F90];
    v18 = *(v2 + 16);
    if (!v18)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  v5 = MEMORY[0x277D84F90];
  v18 = *(v2 + 16);
  if (!v18)
  {
LABEL_24:

    return v5;
  }

LABEL_17:
  v25 = v11;
  result = sub_22FD92648(0, v18, 0);
  v19 = 0;
  v20 = 40;
  while (v19 < *(v2 + 16))
  {
    v21 = *(v2 + v20);
    v23 = *(v25 + 16);
    v22 = *(v25 + 24);
    if (v23 >= v22 >> 1)
    {
      result = sub_22FD92648((v22 > 1), v23 + 1, 1);
    }

    ++v19;
    *(v25 + 16) = v23 + 1;
    *(v25 + 8 * v23 + 32) = v21;
    v20 += 16;
    if (v18 == v19)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_22FE2BD0C(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v1[4] < 0)
  {
    if (v3)
    {
      *v1 = 0u;
      *(v1 + 1) = 0u;
      *(v1 + 2) = xmmword_22FE49940;
      *a1 = 0;
      *(a1 + 8) = v3;
      *(a1 + 16) = 0;
      *(a1 + 24) = 1;
      return;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    v7 = 0xF000000000000000;
    goto LABEL_11;
  }

  v4 = v1[1];
  if (*(v4 + 16))
  {
    v8 = *(v1 + 1);
    v9 = *(v1 + 2);
    v13 = *v1;
    v14 = v4;
    if (v3)
    {
      v5 = sub_22FE40500(v3 + 16, v3 + 32, v4, 0);
    }

    else
    {
      v5 = 0;
    }

    sub_22FE3B5CC(0, v5, &v10);
    v6 = v14;
    *v1 = v13;
    v1[1] = v6;
    *(v1 + 1) = v8;
    *(v1 + 2) = v9;
    v7 = v12;
    *a1 = v11;
LABEL_11:
    *(a1 + 16) = v7;
    goto LABEL_12;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 1;
LABEL_12:
  *(a1 + 24) = 0;
}

void *sub_22FE2BE28@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = v3[4];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = result;
    v8 = v3[1];
    v9 = v3[2];
    v10 = v3[3];
    v11 = v3[5];
    v29 = *v3;
    v30 = v8;
    v27 = v10;
    v28 = v6;
    v26 = v11;
    result = sub_22FE3D270(a2);
    if (v13 == 1)
    {
      if (*(v8 + 16))
      {
        if (v5)
        {
          v14 = sub_22FE40500(v5 + 16, v5 + 32, v8, 0);
        }

        else
        {
          v14 = 0;
        }

        result = sub_22FE3B5CC(0, v14, &v23);
        v20 = v30;
        v21 = v26;
        *v3 = v29;
        v3[1] = v20;
        v3[2] = v9;
        v3[3] = v10;
        v3[4] = v6;
        v3[5] = v21;
        v22 = v25;
        *a3 = v24;
        *(a3 + 16) = v22;
        v15 = 2;
      }

      else
      {
        result = sub_22FE39850(a2, v7);
        v17 = v27;
        v18 = v28;
        v19 = v26;
        *v3 = v5;
        v3[1] = v8;
        v3[2] = v9;
        v3[3] = v17;
        v3[4] = v18;
        v3[5] = v19;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *a3 = 0;
        v15 = -1;
      }

      goto LABEL_13;
    }

    v16 = v26;
    *v3 = v5;
    v3[1] = v8;
    v3[2] = v9;
    v3[3] = v10;
    v3[4] = v6;
    v3[5] = v16;
LABEL_9:
    *a3 = xmmword_22FE4BA20;
    *(a3 + 24) = 0;
    return result;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = xmmword_22FE49940;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = v5;
  v15 = 1;
LABEL_13:
  *(a3 + 24) = v15;
  return result;
}

uint64_t sub_22FE2BFA4(uint64_t a1)
{
  if (v1[4] < 0)
  {
    return 1;
  }

  v3 = *v1;
  v2 = v1[1];
  v4 = v1[5];
  v5 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  sub_22FE2B6C8(a1, 0);
  if (v7 == 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22FE3F9E8(a1, 0, isUniquelyReferenced_nonNull_native);
    *v1 = v3;
    v1[1] = v2;
    v1[2] = v5;
    v1[3] = v10;
    v1[4] = v11;
    v1[5] = v4;
    return 1;
  }

  result = v7;
  *v1 = v3;
  v1[1] = v2;
  v1[2] = v5;
  v1[3] = v10;
  v1[4] = v11;
  v1[5] = v4;
  return result;
}

uint64_t sub_22FE2C064(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v2 = a1[4];
  if (v2 < 0)
  {
    return 0;
  }

  v4 = *a1;
  v5 = a1[3];
  if (*(v2 + 16))
  {
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[5];
    v13 = a1[3];
    if (v5)
    {
      v10 = sub_22FE3FECC(v5 + 16, v5 + 32, v2, 0);
    }

    else
    {
      v10 = 0;
    }

    sub_22FE3B738(0, v10, a2);
    result = v12;
    *a1 = v4;
    a1[1] = v7;
    a1[2] = v8;
    a1[3] = v13;
    a1[4] = v2;
    a1[5] = v9;
  }

  else
  {

    return 1;
  }

  return result;
}

uint64_t sub_22FE2C164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a2;
  return MEMORY[0x2822009F8](sub_22FE2C188, 0, 0);
}

uint64_t sub_22FE2C188()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[3] = sub_22FE42604;
  v4 = swift_continuation_init();
  sub_22FE40618(v4, v3, v2, v1);

  return MEMORY[0x282200938](v0 + 2);
}

void sub_22FE2C24C(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  os_unfair_lock_lock(a1 + 16);
  v7 = a4(a3);
  os_unfair_lock_unlock(a1 + 16);
  if (v7 >= 2)
  {

    swift_continuation_throwingResume();
  }
}

uint64_t sub_22FE2C2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a4;
  v4[12] = a1;
  return MEMORY[0x2822009F8](sub_22FE2C2F0, 0, 0);
}

uint64_t sub_22FE2C2F0()
{
  v2 = v0[13];
  v1 = v0[14];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_22FE2C39C;
  v3 = swift_continuation_init();
  sub_22FE40878(v3, v2, v1);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22FE2C39C(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  else
  {
    **(*v1 + 96) = *(*v1 + 80);
  }

  v3 = *(v2 + 8);

  return v3();
}

void sub_22FE2C4B0(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 16);
  v5 = sub_22FE2BFA4(a3);
  os_unfair_lock_unlock(a1 + 16);
  if (v5 >= 2)
  {
    **(*(v5 + 64) + 40) = xmmword_22FE4BA20;

    swift_continuation_throwingResume();
  }
}

void *XPCMessageCenter.Client.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[3] = a2;
  result[4] = 0;
  result[2] = a1;
  return result;
}

uint64_t sub_22FE2C590(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5400, &qword_22FE4FBC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_22FD93E6C(a1, &qword_27DAE5400, &qword_22FE4FBC0);
    v14 = sub_22FD748E8(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22FDDF060();
        v18 = v22;
      }

      sub_22FD93E04(*(v18 + 56) + *(v10 + 72) * v16, v8, &qword_27DAE2CA8, &unk_22FE4BE90);
      sub_22FE3FC24(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_22FD93E6C(v8, &qword_27DAE5400, &qword_22FE4FBC0);
  }

  else
  {
    sub_22FD93E04(a1, v13, &qword_27DAE2CA8, &unk_22FE4BE90);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_22FDDFAD8(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

void sub_22FE2C7E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5400, &qword_22FE4FBC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-1] - v7;
  v9 = *(v3 + 32);
  if (v9 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 32) = v9 + 1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
    sub_22FE439E4();
    v11 = (a2 + v10[9]);
    *v11 = 0;
    v11[1] = 0;
    *(a2 + v10[10]) = 0;
    *a2 = a1;
    *(a2 + v10[8]) = v9;
    sub_22FD764B4(a2, v8, &qword_27DAE2CA8, &unk_22FE4BE90);
    (*(*(v10 - 1) + 56))(v8, 0, 1, v10);
    swift_beginAccess();

    sub_22FE2C590(v8, v9);
    swift_endAccess();
    if (qword_28148B0E0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v12 = sub_22FE42D34();
  __swift_project_value_buffer(v12, qword_28148B0E8);

  v13 = sub_22FE42D14();
  v14 = sub_22FE43694();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_22FD98218(*(v3 + 16), *(v3 + 24), v18);
    *(v15 + 12) = 1024;
    *(v15 + 14) = v9;
    _os_log_impl(&dword_22FD6D000, v13, v14, "%s: Inserted request %u", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190C380](v16, -1, -1);
    MEMORY[0x23190C380](v15, -1, -1);
  }

  sub_22FE2E130();
}

uint64_t sub_22FE2CA74(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5400, &qword_22FE4FBC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  swift_beginAccess();
  v10 = *(v1 + 40);
  if (*(v10 + 16) && (v11 = sub_22FD748E8(a1), (v12 & 1) != 0))
  {
    sub_22FD764B4(*(v10 + 56) + *(v4 + 72) * v11, v9, &qword_27DAE2CA8, &unk_22FE4BE90);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  (*(v4 + 56))(v9, v13, 1, v3);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_22FD93E6C(v9, &qword_27DAE5400, &qword_22FE4FBC0);
    return 0;
  }

  else
  {
    sub_22FD764B4(v9, v6, &qword_27DAE2CA8, &unk_22FE4BE90);
    sub_22FD93E6C(v9, &qword_27DAE5400, &qword_22FE4FBC0);
    v14 = *&v6[*(v3 + 40)];
    sub_22FD93E6C(v6, &qword_27DAE2CA8, &unk_22FE4BE90);
  }

  return v14;
}

uint64_t sub_22FE2CC8C(uint64_t a1, int a2)
{
  *(v3 + 200) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5400, &qword_22FE4FBC0);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = sub_22FE43374();
  *(v3 + 144) = v5;
  *(v3 + 152) = v4;

  return MEMORY[0x2822009F8](sub_22FE2CDD0, v5, v4);
}

uint64_t sub_22FE2CDD0()
{
  v32 = v0;
  v1 = *(v0 + 112);
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (*(v2 + 16))
  {
    v3 = sub_22FD748E8(*(v0 + 200));
    v4 = *(v0 + 136);
    if (v5)
    {
      v6 = v3;
      v7 = *(v2 + 56);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
      v9 = *(v8 - 8);
      sub_22FD764B4(v7 + *(v9 + 72) * v6, v4, &qword_27DAE2CA8, &unk_22FE4BE90);
      (*(v9 + 56))(v4, 0, 1, v8);
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    }
  }

  else
  {
    v10 = *(v0 + 136);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  v13 = *(v0 + 128);
  sub_22FD764B4(*(v0 + 136), v13, &qword_27DAE5400, &qword_22FE4FBC0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  *(v0 + 160) = v14;
  v15 = *(*(v14 - 8) + 48);
  v16 = v15(v13, 1, v14);
  sub_22FD93E6C(v13, &qword_27DAE5400, &qword_22FE4FBC0);
  if (v16 == 1)
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v17 = sub_22FE42D34();
    __swift_project_value_buffer(v17, qword_28148B0E8);

    v18 = sub_22FE42D14();
    v19 = sub_22FE436A4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 112);
      v21 = *(v0 + 200);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_22FD98218(*(v20 + 16), *(v20 + 24), &v31);
      *(v22 + 12) = 1024;
      *(v22 + 14) = v21;
      _os_log_impl(&dword_22FD6D000, v18, v19, "%s: Received response for non-existent request %u", v22, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23190C380](v23, -1, -1);
      MEMORY[0x23190C380](v22, -1, -1);
    }

    sub_22FDED1BC();
    swift_allocError();
    *v24 = 2;
    v25 = *(v0 + 136);
    swift_willThrow();
    sub_22FD93E6C(v25, &qword_27DAE5400, &qword_22FE4FBC0);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = v15(*(v0 + 136), 1, v14);
    if (v28 == 1)
    {
      __break(1u);
    }

    else
    {
      v28 = sub_22FE2D224;
      v29 = 0;
      v30 = 0;
    }

    return MEMORY[0x2822009F8](v28, v29, v30);
  }
}

uint64_t sub_22FE2D224()
{
  v1 = v0[17];
  v2 = (v1 + *(v0[20] + 36));
  v3 = *v2;
  if (*v2 || (v4 = *v1, v5 = *(v4 + 24), v6 = v2[1], *v2 = *(v4 + 16), v2[1] = v5, , , result = sub_22FE41B54(0, v6, MEMORY[0x277D85008]), (v3 = *v2) != 0))
  {
    v8 = v2[1];
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_22FE2D340;

    return sub_22FE2A68C((v0 + 11), v3, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22FE2D340()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_22FE2D59C;
  }

  else
  {
    v2 = sub_22FE2D454;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FE2D454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 136);
  v5 = *(*(v3 + 160) + 40);
  v6 = *(v4 + v5);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  else
  {
    *(v4 + v5) = v8;
    *(v3 + 184) = *(v3 + 88);
    return MEMORY[0x2822009F8](sub_22FE2D494, *(v3 + 144), *(v3 + 152));
  }
}

uint64_t sub_22FE2D494()
{
  v1 = *(v0 + 192);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 200);
    swift_beginAccess();
    sub_22FE2D6B4(v3, v2);
    sub_22FD93E6C(v2, &qword_27DAE5400, &qword_22FE4FBC0);
    swift_endAccess();
    v1 = *(v0 + 192);
  }

  v4 = *(v0 + 136);
  v5 = *(v0 + 104);
  *v5 = *(v0 + 184);
  v5[1] = v1;
  sub_22FD93E6C(v4, &qword_27DAE5400, &qword_22FE4FBC0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22FE2D5B4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 200);
  swift_beginAccess();
  sub_22FE2D6B4(v2, v1);
  sub_22FD93E6C(v1, &qword_27DAE5400, &qword_22FE4FBC0);
  swift_endAccess();
  v3 = *(v0 + 136);
  swift_willThrow();
  sub_22FD93E6C(v3, &qword_27DAE5400, &qword_22FE4FBC0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22FE2D6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_22FD748E8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22FDDF060();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
    v18 = *(v11 - 8);
    sub_22FD93E04(v10 + *(v18 + 72) * v7, a2, &qword_27DAE2CA8, &unk_22FE4BE90);
    sub_22FE3FC24(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

void sub_22FE2D82C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5400, &qword_22FE4FBC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v40 - v9);
  swift_beginAccess();
  v11 = *(v2 + 40);
  v52 = a1;

  sub_22FE2DDF8(sub_22FE41994, v51, v11);
  v48 = *(v12 + 16);
  if (!v48)
  {
    return;
  }

  v13 = *(v8 + 80);
  v46 = *(v7 + 32);
  v47 = v12 + ((v13 + 32) & ~v13);
  v50 = *(v8 + 72);
  v45 = (v8 + 56);
  v40[1] = v12;

  v14 = 0;
  v43 = v6;
  v44 = v2;
  v41 = v10;
  v42 = v7;
  while (1)
  {
    sub_22FD764B4(v47 + v50 * v14, v10, &qword_27DAE2CA8, &unk_22FE4BE90);
    v16 = *v10;
    sub_22FDED1BC();
    v17 = swift_allocError();
    *v18 = 1;
    v19 = *(v16 + 16);
    os_unfair_lock_lock(v19 + 16);
    v20 = sub_22FE2BA64(v17);
    v22 = v21;
    os_unfair_lock_unlock(v19 + 16);
    if (v20)
    {
      break;
    }

LABEL_22:

    v34 = *(v10 + v46);
    swift_beginAccess();
    v35 = sub_22FD748E8(v34);
    if (v36)
    {
      v37 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v2 + 40);
      v53 = v39;
      *(v2 + 40) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22FDDF060();
        v39 = v53;
      }

      sub_22FD93E04(*(v39 + 56) + v37 * v50, v6, &qword_27DAE2CA8, &unk_22FE4BE90);
      sub_22FE3FC24(v37, v39);
      *(v2 + 40) = v39;

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    ++v14;
    (*v45)(v6, v15, 1, v7);
    sub_22FD93E6C(v6, &qword_27DAE5400, &qword_22FE4FBC0);
    swift_endAccess();
    sub_22FD93E6C(v10, &qword_27DAE2CA8, &unk_22FE4BE90);
    if (v14 == v48)
    {

      return;
    }
  }

  v23 = *(v20 + 2);
  v49 = v20;
  if (v23)
  {
    v24 = v20 + 32;

    do
    {
      if (*v24++)
      {
        swift_continuation_throwingResume();
      }

      --v23;
    }

    while (v23);
  }

  else
  {
  }

  v26 = *(v22 + 16);
  v27 = v17;
  if (!v26)
  {
LABEL_21:
    sub_22FE41B54(v49, v22, MEMORY[0x277D84FB8]);

    v6 = v43;
    v2 = v44;
    v10 = v41;
    v7 = v42;
    goto LABEL_22;
  }

  v28 = 0;
  while (v28 < *(v22 + 16))
  {
    if (*(v22 + 32 + 8 * v28))
    {
      v54 = v17;
      v31 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
      v32 = sub_22FE43C64();
      if (v32)
      {
        v29 = v32;
      }

      else
      {
        v29 = swift_allocError();
        *v33 = v17;
      }

      swift_allocError();
      *v30 = v29;
      swift_continuation_throwingResumeWithError();
    }

    if (v26 == ++v28)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

uint64_t sub_22FE2DCE0(uint64_t a1, uint64_t a2)
{
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  return sub_22FE439F4() & 1;
}

void sub_22FE2DDF8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a1;
  v38 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = &v32 - v9;
  MEMORY[0x28223BE20](v10);
  v40 = a3;
  v41 = &v32 - v11;
  v12 = 0;
  v15 = *(a3 + 64);
  v14 = a3 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v34 = MEMORY[0x277D84F90];
  while (1)
  {
    v20 = v12;
    if (!v18)
    {
      break;
    }

    v21 = v4;
LABEL_10:
    v22 = *(v40 + 56);
    v35 = *(v39 + 72);
    v23 = v36;
    sub_22FD764B4(v22 + v35 * (__clz(__rbit64(v18)) | (v12 << 6)), v36, &qword_27DAE2CA8, &unk_22FE4BE90);
    v24 = v41;
    sub_22FD93E04(v23, v41, &qword_27DAE2CA8, &unk_22FE4BE90);
    v25 = v37(v24);
    v4 = v21;
    if (v21)
    {
      sub_22FD93E6C(v41, &qword_27DAE2CA8, &unk_22FE4BE90);

      return;
    }

    v18 &= v18 - 1;
    if (v25)
    {
      sub_22FD93E04(v41, v33, &qword_27DAE2CA8, &unk_22FE4BE90);
      v26 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22FD927D4(0, *(v26 + 16) + 1, 1);
        v26 = v42;
      }

      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_22FD927D4((v28 > 1), v29 + 1, 1);
        v30 = v29 + 1;
        v26 = v42;
      }

      *(v26 + 16) = v30;
      v31 = *(v39 + 80);
      v34 = v26;
      sub_22FD93E04(v33, v26 + ((v31 + 32) & ~v31) + v29 * v35, &qword_27DAE2CA8, &unk_22FE4BE90);
    }

    else
    {
      sub_22FD93E6C(v41, &qword_27DAE2CA8, &unk_22FE4BE90);
    }
  }

  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v19)
    {

      return;
    }

    v18 = *(v14 + 8 * v12);
    ++v20;
    if (v18)
    {
      v21 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_22FE2E130()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  if (!*(v0 + 72))
  {
    swift_beginAccess();
    if (*(*(v0 + 40) + 16))
    {
      if ((*(v0 + 64) & 1) == 0)
      {
        v5 = *(v0 + 48);
        v4 = *(v0 + 56);
        v6 = sub_22FE43404();
        (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
        v7 = swift_allocObject();
        v7[2] = 0;
        v7[3] = 0;
        v7[4] = v0;
        v7[5] = v5;
        v7[6] = v4;

        v8 = sub_22FE2EDBC(0, 0, v3, &unk_22FE4FBD0, v7);
        sub_22FD93E6C(v3, qword_27DAE3188, &qword_22FE49380);
        *(v0 + 72) = v8;
      }
    }
  }
}

uint64_t sub_22FE2E2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_22FE43A14();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = sub_22FE43A24();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v7 = sub_22FE43374();
  v3[20] = v7;
  v3[21] = v6;

  return MEMORY[0x2822009F8](sub_22FE2E45C, v7, v6);
}