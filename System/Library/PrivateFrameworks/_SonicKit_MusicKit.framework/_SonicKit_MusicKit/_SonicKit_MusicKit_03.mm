uint64_t sub_275325CEC()
{
  OUTLINED_FUNCTION_3();

  sub_275315F74(v0 + 16);
  OUTLINED_FUNCTION_43_1();

  OUTLINED_FUNCTION_19_0();

  return v1();
}

uint64_t sub_275325D84()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[7490];
  v2 = v0[7489];
  v3 = v0[7488];

  (*(v2 + 8))(v1, v3);
  sub_275315F74((v0 + 2));
  OUTLINED_FUNCTION_43_1();

  OUTLINED_FUNCTION_19_0();

  return v4();
}

uint64_t sub_275325E34()
{
  OUTLINED_FUNCTION_3();

  sub_275315F74(v0 + 16);
  OUTLINED_FUNCTION_43_1();

  OUTLINED_FUNCTION_19_0();

  return v1();
}

uint64_t sub_275325EC0()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 60080);
  v2 = *(v0 + 60072);

  sub_2752F2350(v1, v2);
  sub_275315F74(v0 + 16);
  OUTLINED_FUNCTION_43_1();

  OUTLINED_FUNCTION_19_0();

  return v3();
}

uint64_t sub_275325F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_144_0();
  v13 = v12[7520];
  v14 = v12[7519];

  sub_2752F2350(v14, v13);
  v15 = OUTLINED_FUNCTION_28_1();
  sub_2752F2350(v15, v16);
  v17 = OUTLINED_FUNCTION_71();
  sub_2752F2350(v17, v18);
  v19 = OUTLINED_FUNCTION_111();
  sub_2752F2350(v19, v20);
  sub_275329B20((v12 + 7449));
  OUTLINED_FUNCTION_107_1(v12 + 4202);
  sub_275316EA4((v12 + 4202));
  sub_275315F74((v12 + 2));

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_100_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_275326060(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2753149C4(0, &qword_2809C1AA8, &protocol descriptor for MediaAPIResourceElement);
  v3 = swift_dynamicCast();
  if (v3)
  {
    sub_275315C8C(v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_275326290(v5);
  }

  return v3;
}

uint64_t sub_275326180()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752FD514;

  return sub_27531D83C();
}

uint64_t sub_275326290(uint64_t a1)
{
  sub_2753262EC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2753262EC(uint64_t a1)
{
  if (!qword_2809C1AB0)
  {
    sub_2753149C4(255, &qword_2809C1AA8, &protocol descriptor for MediaAPIResourceElement);
    v1 = sub_2753B72A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C1AB0);
    }
  }
}

void sub_275326354(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2753263B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_2753B6288();
  v6[8] = sub_2753B6278();
  sub_275327824(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v8 = sub_2753B70C8();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x2822009F8](sub_275326488, v8, v7);
}

uint64_t sub_275326488()
{
  OUTLINED_FUNCTION_68_0();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v5;
  *(v4 + 48) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 96) = v6;
  *v6 = v7;
  v6[1] = sub_275326578;
  v8 = *(v0 + 16);

  return MEMORY[0x2821CC178](v8);
}

uint64_t sub_275326578()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_27532A6FC;
  }

  else
  {

    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_27532A704;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27532667C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_2753B6288();
  v6[8] = sub_2753B6278();
  sub_275327824(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v8 = sub_2753B70C8();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x2822009F8](sub_27532674C, v8, v7);
}

uint64_t sub_27532674C()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 96) = v3;
  *v3 = v4;
  v3[1] = sub_275326830;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821CC1B8](v7, v5, v6, &unk_2753C2C18, v2, v8);
}

uint64_t sub_275326830()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_27532698C;
  }

  else
  {

    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_275326934;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_275326934()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_35_0();

  return v0();
}

uint64_t sub_27532698C()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_2753269F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = sub_2753B6288();
  v5[9] = sub_2753B6278();
  v5[10] = sub_275327824(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v7 = sub_2753B70C8();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x2822009F8](sub_275326ACC, v7, v6);
}

uint64_t sub_275326ACC()
{
  if (qword_2809C06E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  *(v0 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  v5 = sub_2753B6278();
  *(v0 + 112) = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 120) = v6;
  *v6 = v7;
  v6[1] = sub_275326C4C;
  v8 = *(v0 + 24);

  return MEMORY[0x282200908](v8, v0 + 16, &unk_2753C2C28, v4, v5, v1, 0xD00000000000002DLL, 0x80000002753B91D0);
}

uint64_t sub_275326C4C()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[16] = v0;

  v7 = v3[11];
  v8 = v3[12];
  if (v0)
  {
    v9 = sub_275326E08;
  }

  else
  {
    v9 = sub_275326DB0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_275326DB0()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_35_0();

  return v0();
}

uint64_t sub_275326E08()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

uint64_t sub_275326E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  sub_2753B6288();
  v5[13] = sub_2753B6278();
  sub_275327824(&qword_2809C0748, MEMORY[0x277D64EF0], MEMORY[0x277D64EF8]);
  v7 = sub_2753B70C8();
  v5[14] = v7;
  v5[15] = v6;

  return MEMORY[0x2822009F8](sub_275326F34, v7, v6);
}

uint64_t sub_275326F34()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = sub_2753B6398();
  v5 = MEMORY[0x277D64F38];
  v0[5] = v4;
  v0[6] = v5;
  v0[2] = v1;
  v0[7] = *(v2 + 32);

  v10 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  v0[16] = v6;
  *v6 = v7;
  v6[1] = sub_275327068;
  v8 = v0[8];

  return (v10)(v8, v0 + 2);
}

uint64_t sub_275327068()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[17] = v0;

  sub_275317184((v3 + 2));
  v7 = v3[14];
  v8 = v3[15];
  if (v0)
  {
    v9 = sub_2753271C4;
  }

  else
  {
    v9 = sub_27532716C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27532716C()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_35_0();

  return v0();
}

uint64_t sub_2753271C4()
{
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_19_0();

  return v0();
}

id sub_275327220(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_2753B6198();
  v7 = [v3 initWithURL:v6 requestContext:a2];

  v8 = sub_2753B61F8();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_2753272B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if (((a7 >> 22) & 3) != 3)
  {
  }

  return result;
}

void sub_275327318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if (((a7 >> 22) & 3) != 3)
  {
  }
}

BOOL sub_275327390(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2753B7798();
  sub_2753B6688();
  v8 = sub_2753B77D8();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_2753B7718() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_275327DCC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_2753274DC(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = *v3;
  sub_2753B7798();
  sub_2753B6688();
  v7 = sub_2753B77D8();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v16;

      sub_275327F34(a2, a3, v9, isUniquelyReferenced_nonNull_native);
      *v16 = v18;
      *a1 = a2;
      a1[1] = a3;
      return v10 == 0;
    }

    v11 = sub_2753B6678();

    if (v11)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v13 = (*(v6 + 48) + 16 * v9);
  v14 = v13[1];
  *a1 = *v13;
  a1[1] = v14;

  return v10 == 0;
}

uint64_t sub_275327638(uint64_t a1)
{
  sub_275326354(0, &qword_2809C08E8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2753276C4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_27532A18C(255, a2, a3, a4, MEMORY[0x277D64F08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_275327728(uint64_t a1)
{
  if (!qword_2809C1AD8)
  {
    sub_2753277B8(255, &qword_2809C1AE0, 0x277D7FC78);
    sub_2753149C4(255, &qword_2809C1468, MEMORY[0x277D84948]);
    v1 = sub_2753B7188();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C1AD8);
    }
  }
}

uint64_t sub_2753277B8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_275327824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27532786C()
{
  result = qword_2809C1AF0;
  if (!qword_2809C1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1AF0);
  }

  return result;
}

uint64_t sub_2753278D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2753290A0(0, &qword_2809C1B10, MEMORY[0x277D84098]);
  result = sub_2753B7358();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2753280B0(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2753B7798();
    sub_2753B6688();
    result = sub_2753B77D8();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_275327B44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_27532A18C(0, &qword_2809C1BC0, sub_275314624, MEMORY[0x277D64FD0], MEMORY[0x277D84098]);
  result = sub_2753B7358();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2753280B0(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2753B7798();
    sub_2753B6688();
    result = sub_2753B77D8();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_275327DCC(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2753278D8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_275328400(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2753B7798();
      sub_2753B6688();
      result = sub_2753B77D8();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_2753B7718() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_275328114();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2753B7758();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_275327F34(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_275327B44(v9 + 1);
      goto LABEL_10;
    }

    if (v10 <= v9)
    {
      sub_275328644(v9 + 1);
LABEL_10:
      v16 = *v4;
      sub_2753B7798();
      sub_2753B6688();
      result = sub_2753B77D8();
      v17 = ~(-1 << *(v16 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v16 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = sub_2753B6678();

        if (v18)
        {
          goto LABEL_15;
        }

        result = a3 + 1;
      }
    }

    result = sub_27532827C();
  }

LABEL_7:
  v11 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v12 = (*(v11 + 48) + 16 * a3);
  *v12 = v8;
  v12[1] = a2;
  v13 = *(v11 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_2753B7758();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v15;
  }

  return result;
}

uint64_t sub_2753280B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2753C28C0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_275328114()
{
  v1 = v0;
  sub_2753290A0(0, &qword_2809C1B10, MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_2753B7348();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_27532827C()
{
  v1 = v0;
  sub_27532A18C(0, &qword_2809C1BC0, sub_275314624, MEMORY[0x277D64FD0], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_2753B7348();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_275328400(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2753290A0(0, &qword_2809C1B10, MEMORY[0x277D84098]);
  result = sub_2753B7358();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_2753B7798();

        sub_2753B6688();
        result = sub_2753B77D8();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_275328644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_27532A18C(0, &qword_2809C1BC0, sub_275314624, MEMORY[0x277D64FD0], MEMORY[0x277D84098]);
  result = sub_2753B7358();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_2753B7798();

        sub_2753B6688();
        result = sub_2753B77D8();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_2753288A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_275384328(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  sub_275329018(0);
  if ((sub_2753B7478() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_275384328(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_2753B7768();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
  }

  else
  {

    return sub_275328AF0(v10, a2, a1, v14);
  }
}

uint64_t sub_2753289BC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2753842E4(a2 & 1);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  sub_275329F4C(0);
  if ((sub_2753B7478() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_2753842E4(a2 & 1);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_2753B7768();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = v14[7];
    v16 = v15 + *(*(type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo(0) - 8) + 72) * v10;

    return sub_27532A00C(a1, v16);
  }

  else
  {

    return sub_275328B34(v10, a2 & 1, a1, v14);
  }
}

unint64_t sub_275328AF0(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_275328B34(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo(0);
  result = sub_27532A070(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_275328BCC(unint64_t result, int a2, void *a3, float a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 4 * result) = a2;
  *(a3[7] + 4 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t sub_275328C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v9 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  if (sub_2753B7078())
  {
    sub_2753B7378();
    v14 = sub_2753B7368();
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  v36 = sub_2753B7078();
  if (v36)
  {
    v33 = v7;
    v34 = v5;
    v15 = 0;
    v41 = (v6 + 16);
    v42 = v14 + 56;
    v38 = (v6 + 32);
    v40 = v6 + 8;
    v35 = v13;
    while (1)
    {
      v16 = sub_2753B7058();
      sub_2753B7008();
      if (v16)
      {
        v17 = *(v6 + 16);
        result = (v17)(v13, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, a2);
      }

      else
      {
        v39 = v15;
        result = sub_2753B73A8();
        if (v33 != 8)
        {
          goto LABEL_23;
        }

        v44 = result;
        v17 = *v41;
        (*v41)(v13, &v44, a2);
        result = swift_unknownObjectRelease();
        v15 = v39;
      }

      v39 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v37 = *v38;
      v37(v43, v13, a2);
      v19 = sub_2753B6D28();
      v20 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v21 = v19 & v20;
        v22 = (v19 & v20) >> 6;
        v23 = *(v42 + 8 * v22);
        v24 = 1 << (v19 & v20);
        if ((v24 & v23) == 0)
        {
          break;
        }

        v25 = v14;
        v17(v9, (*(v14 + 48) + *(v6 + 72) * v21), a2);
        v26 = a3;
        v27 = sub_2753B6D68();
        v28 = *(v6 + 8);
        v28(v9, a2);
        if (v27)
        {
          v28(v43, a2);
          a3 = v26;
          v13 = v35;
          v14 = v25;
          v15 = v39;
          goto LABEL_16;
        }

        v19 = v21 + 1;
        a3 = v26;
        v14 = v25;
      }

      v29 = v43;
      *(v42 + 8 * v22) = v24 | v23;
      result = (v37)(*(v14 + 48) + *(v6 + 72) * v21, v29, a2);
      v30 = *(v14 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      v13 = v35;
      v15 = v39;
      if (v31)
      {
        goto LABEL_22;
      }

      *(v14 + 16) = v32;
LABEL_16:
      v5 = v34;
      if (v15 == v36)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

unint64_t sub_275328FC4()
{
  result = qword_2809C1AF8;
  if (!qword_2809C1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1AF8);
  }

  return result;
}

void sub_275329018(uint64_t a1)
{
  if (!qword_2809C1B00)
  {
    sub_2753290A0(255, &qword_2809C1B08, MEMORY[0x277D83B48]);
    sub_275328FC4();
    v1 = sub_2753B7498();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C1B00);
    }
  }
}

void sub_2753290A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_275329198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = a5 >> 5;
  if (v6 <= 5)
  {
    if (v6 == 2)
    {
    }
  }

  return result;
}

uint64_t sub_2753291F4()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_93_0();
  v6 = (type metadata accessor for MediaAPIResourceRequest(v2, v3, v4, v5) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = (((((((*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = (v0 + v8);

  (*(*(v1 - 8) + 8))(v10 + v6[11], v1);

  return MEMORY[0x2821FE8E8](v0, v9 + 16, v7 | 7);
}

uint64_t sub_275329364()
{
  OUTLINED_FUNCTION_218();
  v3 = type metadata accessor for MediaAPIResourceRequest(0, *(v0 + 16), *(v0 + 24), v2);
  OUTLINED_FUNCTION_17_1(v3);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2752FE5C0;
  OUTLINED_FUNCTION_173();

  return sub_2753212E8(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_2753294CC()
{
  if (!qword_2809C1B28)
  {
    v0 = sub_2753B7498();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C1B28);
    }
  }
}

uint64_t sub_27532952C()
{
  OUTLINED_FUNCTION_144_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2752FE5C0;
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_100_0();

  return sub_275321F88(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_27532960C()
{
  OUTLINED_FUNCTION_68_0();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2752FE5C0;
  OUTLINED_FUNCTION_49_1();

  return sub_27532667C(v6, v7, v8, v9, v2, v3);
}

uint64_t sub_2753296C4()
{
  OUTLINED_FUNCTION_68_0();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_2752FE5C0;
  OUTLINED_FUNCTION_59_1();

  return sub_2753269F4(v5, v6, v7, v8, v2);
}

uint64_t sub_27532977C()
{
  OUTLINED_FUNCTION_68_0();
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_64_0();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_2752FD514;
  OUTLINED_FUNCTION_49_1();

  return sub_275326E64(v5, v6, v7, v8, v2);
}

unint64_t sub_27532982C()
{
  result = qword_2809C1B30;
  if (!qword_2809C1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B30);
  }

  return result;
}

uint64_t sub_275329880(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_27532A1F4(0, a2, a3, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2753298F0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_27532A1F4(0, a3, a4, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_9();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_275329968(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2753299DC()
{
  result = qword_2809C1B40;
  if (!qword_2809C1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B40);
  }

  return result;
}

unint64_t sub_275329A30()
{
  result = qword_2809C1B48;
  if (!qword_2809C1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B48);
  }

  return result;
}

unint64_t sub_275329A84()
{
  result = qword_2809C1B58;
  if (!qword_2809C1B58)
  {
    sub_27532A1F4(255, &qword_2809C1B50, &type metadata for MediaAPI.Resource, MEMORY[0x277D83940]);
    sub_275329A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B58);
  }

  return result;
}

unint64_t sub_275329B74()
{
  result = qword_2809C1B60;
  if (!qword_2809C1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B60);
  }

  return result;
}

unint64_t sub_275329BC8()
{
  result = qword_2809C1B68;
  if (!qword_2809C1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B68);
  }

  return result;
}

unint64_t sub_275329C1C()
{
  result = qword_2809C1B70;
  if (!qword_2809C1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B70);
  }

  return result;
}

unint64_t sub_275329C70()
{
  result = qword_2809C1B78;
  if (!qword_2809C1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B78);
  }

  return result;
}

unint64_t sub_275329CC4()
{
  result = qword_2809C1B80;
  if (!qword_2809C1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B80);
  }

  return result;
}

unint64_t sub_275329D18()
{
  result = qword_2809C1B88;
  if (!qword_2809C1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B88);
  }

  return result;
}

unint64_t sub_275329D6C()
{
  result = qword_2809C1B90;
  if (!qword_2809C1B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1B90);
  }

  return result;
}

void sub_275329DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xFBu)
  {
    sub_2753147B0(a1, a2, a3, a4, a5);
  }
}

unint64_t sub_275329DD4()
{
  result = qword_2809C1BA0;
  if (!qword_2809C1BA0)
  {
    sub_2753290A0(255, &qword_2809C1B08, MEMORY[0x277D83B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1BA0);
  }

  return result;
}

unint64_t sub_275329E48()
{
  result = qword_2809C1BA8;
  if (!qword_2809C1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1BA8);
  }

  return result;
}

unint64_t sub_275329E9C()
{
  result = qword_2809C1BB8;
  if (!qword_2809C1BB8)
  {
    sub_27532A1F4(255, &qword_2809C1BB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1BB8);
  }

  return result;
}

void sub_275329F4C(uint64_t a1)
{
  if (!qword_2809C1BC8)
  {
    type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo(255);
    sub_275329FB8();
    v1 = sub_2753B7498();
    if (!v2)
    {
      atomic_store(v1, &qword_2809C1BC8);
    }
  }
}

unint64_t sub_275329FB8()
{
  result = qword_2809C1BD0;
  if (!qword_2809C1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1BD0);
  }

  return result;
}

uint64_t sub_27532A00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27532A070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27532A0D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicContent.Environment.Account.Bag.KeyServerInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27532A138()
{
  result = qword_2809C1BE0;
  if (!qword_2809C1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1BE0);
  }

  return result;
}

void sub_27532A18C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_27532A1F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for MediAPIResourceRequestError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediAPIResourceRequestError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27532A398);
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

uint64_t sub_27532A3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_27532A40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_27532A448(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_27532A488(uint64_t result, int a2, int a3)
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

uint64_t sub_27532A4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_27532A520(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 51))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32) >> 2;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_27532A568(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 50) = 0;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 51) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 4 * -a2;
      *(a1 + 40) = 0;
      *(a1 + 50) = 0;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27532A5D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = a1 + 48;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x3F;
  *result = v2;
  return result;
}

uint64_t sub_27532A5EC(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  result = a1 + 48;
  v4 = (v3 | (*(result + 2) << 16)) & 0xFF01FF01;
  *(result - 16) &= 3uLL;
  *result = v4;
  *(result + 2) = (v4 | (a2 << 22)) >> 16;
  return result;
}

unint64_t sub_27532A63C()
{
  result = qword_2809C1D78;
  if (!qword_2809C1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1D78);
  }

  return result;
}

unint64_t sub_27532A694()
{
  result = qword_2809C1D80;
  if (!qword_2809C1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1D80);
  }

  return result;
}

void OUTLINED_FUNCTION_20_1()
{

  JUMPOUT(0x277C76100);
}

void *OUTLINED_FUNCTION_21_1()
{

  return memcpy((v0 + 2488), (v0 + 7432), 0x338uLL);
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t a1)
{
  *(v1 + 272) = a1;

  return sub_2753B6BD8();
}

uint64_t OUTLINED_FUNCTION_27_1()
{
  v3 = *(v1 + 40);
  v0[42] = *(v1 + 32);
  v0[43] = v3;
  *v0 = 0;
  v0[1] = 0xE000000000000000;

  return sub_2753B7398();
}

void *OUTLINED_FUNCTION_37_1()
{

  return memcpy((v1 + v0), (v1 + 64), 0x2F9uLL);
}

void *OUTLINED_FUNCTION_41_1()
{

  return memcpy((v0 + 3312), (v0 + 1664), 0x338uLL);
}

uint64_t OUTLINED_FUNCTION_43_1()
{
}

void OUTLINED_FUNCTION_44_1(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_27532A1F4(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_45_1()
{
  sub_275316098(v0 + v1);

  return sub_2753B6028();
}

uint64_t OUTLINED_FUNCTION_53_1()
{
  strcpy((v1 - 144), "/v1/catalog/");
  *(v1 - 131) = 0;
  *(v1 - 130) = -5120;
  return *(v0 + 8);
}

uint64_t OUTLINED_FUNCTION_69_1()
{
  v4 = (*(v1 + 56) + 16 * v2);
  *(v0 + 288) = *v4;
  *(v0 + 296) = v4[1];
}

uint64_t OUTLINED_FUNCTION_70_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return sub_2753272B8(a1, v21, v20, a15, a19, a16, v19);
}

void *OUTLINED_FUNCTION_71_1(void *a1)
{

  return memcpy(a1, (v1 + 64), 0x2F9uLL);
}

void *OUTLINED_FUNCTION_72_1()
{

  return memcpy((v1 + 38992), (v1 + v0), 0x2F9uLL);
}

uint64_t OUTLINED_FUNCTION_73_1()
{
}

uint64_t OUTLINED_FUNCTION_88_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_104_1()
{
}

uint64_t OUTLINED_FUNCTION_105_1()
{
}

uint64_t OUTLINED_FUNCTION_106_1()
{
}

void *OUTLINED_FUNCTION_107_1(void *a1)
{

  return memcpy(a1, (v1 + 26704), 0x2F9uLL);
}

uint64_t OUTLINED_FUNCTION_108_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_109_1()
{
}

uint64_t OUTLINED_FUNCTION_110_1()
{

  return sub_275329100(v0 + 16, v0 + 840);
}

void *OUTLINED_FUNCTION_111_1(uint64_t a1, const void *a2)
{

  return memcpy((v2 + 16), a2, 0x338uLL);
}

uint64_t OUTLINED_FUNCTION_135_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_2753B74A8();
}

uint64_t OUTLINED_FUNCTION_136_1()
{
}

void OUTLINED_FUNCTION_138_1()
{

  JUMPOUT(0x277C76100);
}

void *OUTLINED_FUNCTION_139_1(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x2F9uLL);
}

unint64_t MediaAPI.MediaAPIType.rawValue.getter()
{
  result = 0x73676E6F73;
  switch(*v0)
  {
    case 1:
    case 5:
      result = 0x2D7972617262696CLL;
      break;
    case 2:
      result = 0x69762D636973756DLL;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x736D75626C61;
      break;
    case 6:
      result = 0x7473696C79616C70;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x736E6F6974617473;
      break;
    case 9:
      result = 0x7365726E6567;
      break;
    case 0xA:
      result = 0x612D6C6D78656C66;
      break;
    case 0xB:
      result = 0x6E612D6F69647561;
      break;
    default:
      return result;
  }

  return result;
}

double MediaAPI.Resource.rawIdentifier(forPersonID:)@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];

  v7._countAndFlagsBits = v6;
  v7._object = v5;
  MediaAPI.MediaAPIType.init(rawValue:)(v7);
  switch(v11)
  {
    case 0:
      *a1 = v4;
      *(a1 + 8) = v3;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      goto LABEL_13;
    case 1:
      OUTLINED_FUNCTION_459();
      v9 = 64;
      goto LABEL_9;
    case 2:
      *a1 = v4;
      *(a1 + 8) = v3;
      v8 = xmmword_2753C2F80;
      goto LABEL_12;
    case 3:
      OUTLINED_FUNCTION_459();
      v9 = 65;
      goto LABEL_9;
    case 4:
      *a1 = v4;
      *(a1 + 8) = v3;
      v8 = xmmword_2753C2F70;
      goto LABEL_12;
    case 5:
      OUTLINED_FUNCTION_459();
      v9 = 66;
      goto LABEL_9;
    case 6:
      *a1 = v4;
      *(a1 + 8) = v3;
      v8 = xmmword_2753C2F60;
      goto LABEL_12;
    case 7:
      OUTLINED_FUNCTION_459();
      v9 = 67;
LABEL_9:
      *(a1 + 32) = v9;

      goto LABEL_14;
    case 8:
      *a1 = v4;
      *(a1 + 8) = v3;
      v8 = xmmword_2753C2F50;
LABEL_12:
      *(a1 + 16) = v8;
LABEL_13:
      *(a1 + 32) = 0;
LABEL_14:

      break;
    default:
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -4;
      break;
  }

  return result;
}

uint64_t MediaAPI.Resource.qualifiedIdentifier(forPersonID:)@<X0>(uint64_t a1@<X8>)
{
  v2 = 16646398;
  MediaAPI.Resource.rawIdentifier(forPersonID:)(&v8);
  if (v12 > 0xFBuLL)
  {
LABEL_4:
    result = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    result = v8;
    v4 = v9;
    v5 = v10;
    v6 = v11;
    switch(v12 >> 5)
    {
      case 1:
      case 3:
      case 4:
      case 5:
        sub_275329DC0(v8, v9, v10, v11, v12);
        goto LABEL_4;
      case 2:
        v7 = v12 & 0x1F;
        v2 = 4196865;
        break;
      default:
        v7 = 0;
        v2 = 0;
        v5 = v10;
        v6 = MEMORY[0x277D84F90];
        break;
    }
  }

  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 50) = BYTE2(v2);
  return result;
}

uint64_t MediaAPI.Resource.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_2753B7398();

  v10 = v4;
  v11 = v3;
  MEMORY[0x277C76100](0x203A6469203ALL, 0xE600000000000000);
  MEMORY[0x277C76100](v1, v2);
  MEMORY[0x277C76100](0x203A656D616E20, 0xE700000000000000);
  memcpy(__dst, v0 + 6, 0x2F9uLL);
  if (sub_275315FC8(__dst) == 1 || (memcpy(v9, __dst, sizeof(v9)), v5 = MediaAPI.Attributes.name.getter(), !v6))
  {

    v7 = 0xE500000000000000;
    v5 = 0x3E6C696E3CLL;
  }

  else
  {
    v7 = v6;
  }

  MEMORY[0x277C76100](v5, v7);

  return v10;
}

_SonicKit_MusicKit::MediaAPI::MediaAPIType_optional MediaAPI.Resource.mediaAPIType.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = v2;
  v4 = v1;

  return MediaAPI.MediaAPIType.init(rawValue:)(*&v3);
}

void *sub_27532B624@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_27534B348(__src);
  memcpy((a1 + 32), __src, 0x81uLL);
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 1;
  *(a1 + 272) = 0;
  *(a1 + 280) = 1;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 33686018;
  *(a1 + 316) = 514;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 1;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = 1;
  *(a1 + 384) = 0u;
  sub_27534B690(v4);
  memcpy((a1 + 400), v4, 0x91uLL);
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 1;
  *(a1 + 592) = 0u;
  sub_27534B698(v5);
  result = memcpy((a1 + 608), v5, 0x98uLL);
  *(a1 + 760) = 2;
  return result;
}

_SonicKit_MusicKit::MediaAPI::MediaAPIType_optional __swiftcall MediaAPI.MediaAPIType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2753B74E8();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_27532B7B0@<X0>(unint64_t *a1@<X8>)
{
  result = MediaAPI.MediaAPIType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MediaAPI.Artwork.bgColor.setter()
{
  OUTLINED_FUNCTION_96();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.Artwork.height.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t MediaAPI.Artwork.textColor1.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t MediaAPI.Artwork.textColor2.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t MediaAPI.Artwork.textColor3.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t MediaAPI.Artwork.textColor4.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t MediaAPI.Artwork.url.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t MediaAPI.Artwork.width.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t sub_27532BB50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F436762 && a2 == 0xE700000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x3350736168 && a2 == 0xE500000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003172;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003272;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003372;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003472;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 7107189 && a2 == 0xE300000000000000;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_2753B7718();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_27532BDF0(char a1)
{
  result = 0x726F6C6F436762;
  switch(a1)
  {
    case 1:
      result = 0x3350736168;
      break;
    case 2:
      result = 0x746867696568;
      break;
    case 3:
      result = 0x6F6C6F4374786574;
      break;
    case 4:
      result = 0x6F6C6F4374786574;
      break;
    case 5:
      result = 0x6F6C6F4374786574;
      break;
    case 6:
      result = 0x6F6C6F4374786574;
      break;
    case 7:
      result = 7107189;
      break;
    case 8:
      result = 0x6874646977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27532BF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27532BB50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27532BF48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27532BDE8();
  *a1 = result;
  return result;
}

uint64_t sub_27532BF70(uint64_t a1)
{
  v2 = sub_27534AD20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27532BFAC(uint64_t a1)
{
  v2 = sub_27534AD20();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.Artwork.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_60();
  v24 = v23;
  OUTLINED_FUNCTION_211_0();
  sub_27534DC8C(0, v25, v26, &type metadata for MediaAPI.Artwork.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_67_0(v24, v24[3]);
  sub_27534AD20();
  OUTLINED_FUNCTION_299();
  sub_2753B7808();
  OUTLINED_FUNCTION_319();
  sub_2753B75F8();
  if (!v22)
  {
    OUTLINED_FUNCTION_143();
    sub_2753B7608();
    OUTLINED_FUNCTION_175_0();
    OUTLINED_FUNCTION_100_2();
    sub_2753B7628();
    OUTLINED_FUNCTION_171_0();
    OUTLINED_FUNCTION_100_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_100_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_100_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_100_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_242(7);
    OUTLINED_FUNCTION_100_2();
    sub_2753B7658();
    OUTLINED_FUNCTION_100_2();
    sub_2753B7628();
  }

  v28 = OUTLINED_FUNCTION_434();
  v29(v28);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.Artwork.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_334();
  v40 = v2;
  OUTLINED_FUNCTION_211_0();
  OUTLINED_FUNCTION_317(v3, v4, v5, v6, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_122_2();
  v65 = v1;
  OUTLINED_FUNCTION_115_2(v1);
  sub_27534AD20();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_297();
    __swift_destroy_boxed_opaque_existential_1(v1);

    if (&type metadata for MediaAPI.Artwork.CodingKeys)
    {
    }
  }

  else
  {
    LOBYTE(v42[0]) = 0;
    OUTLINED_FUNCTION_357();
    v8 = sub_2753B7518();
    v37 = v9;
    OUTLINED_FUNCTION_55_2(1);
    v10 = sub_2753B7528();
    OUTLINED_FUNCTION_55_2(2);
    v11 = sub_2753B7548();
    OUTLINED_FUNCTION_446(v11, v12);
    OUTLINED_FUNCTION_55_2(3);
    v35 = sub_2753B7518();
    v36 = v13;
    OUTLINED_FUNCTION_55_2(4);
    v14 = sub_2753B7518();
    v16 = v15;
    v33 = v14;
    v34 = v11;
    OUTLINED_FUNCTION_55_2(5);
    v17 = sub_2753B7518();
    v19 = v18;
    v32 = v17;
    OUTLINED_FUNCTION_55_2(6);
    v20 = sub_2753B7518();
    v22 = v21;
    v31 = v20;
    OUTLINED_FUNCTION_55_2(7);
    v29 = sub_2753B7578();
    v30 = v10;
    v38 = v23;
    v60 = 8;
    v28 = sub_2753B7548();
    v25 = v24;
    v26 = OUTLINED_FUNCTION_93_2();
    v27(v26);
    v61 = v25 & 1;
    v41[0] = v8;
    v41[1] = v37;
    LOBYTE(v41[2]) = v30;
    *(&v41[2] + 1) = v64[0];
    HIDWORD(v41[2]) = *(v64 + 3);
    v41[3] = v34;
    v39 = v63;
    LOBYTE(v41[4]) = v63;
    *(&v41[4] + 1) = *v62;
    HIDWORD(v41[4]) = *&v62[3];
    v41[5] = v35;
    v41[6] = v36;
    v41[7] = v33;
    v41[8] = v16;
    v41[9] = v32;
    v41[10] = v19;
    v41[11] = v31;
    v41[12] = v22;
    v41[13] = v29;
    v41[14] = v38;
    v41[15] = v28;
    LOBYTE(v41[16]) = v25 & 1;
    memcpy(v40, v41, 0x81uLL);
    sub_27534AD74(v41, v42);
    __swift_destroy_boxed_opaque_existential_1(v65);
    v42[0] = v8;
    v42[1] = v37;
    v43 = v30;
    *v44 = v64[0];
    *&v44[3] = *(v64 + 3);
    v45 = v34;
    v46 = v39;
    *v47 = *v62;
    *&v47[3] = *&v62[3];
    v48 = v35;
    v49 = v36;
    v50 = v33;
    v51 = v16;
    v52 = v32;
    v53 = v19;
    v54 = v31;
    v55 = v22;
    v56 = v29;
    v57 = v38;
    v58 = v28;
    v59 = v25 & 1;
    sub_27534ADAC(v42);
  }

  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t sub_27532C74C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000002753B9450 == a2;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002753B9470 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_27532C824(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_27532C864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27532C74C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27532C88C(uint64_t a1)
{
  v2 = sub_27534ADDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27532C8C8(uint64_t a1)
{
  v2 = sub_27534ADDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaAPI.SpatialOffsets.Offset.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_229_0();
  OUTLINED_FUNCTION_482(v3, v4, v5, v6, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_67_0(a1, a1[3]);
  sub_27534ADDC();
  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  OUTLINED_FUNCTION_58();
  sub_2753B7678();
  if (!v1)
  {
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_58();
    sub_2753B7678();
  }

  v8 = OUTLINED_FUNCTION_114();
  return v9(v8);
}

uint64_t MediaAPI.SpatialOffsets.Offset.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_229_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  v10 = v9;
  OUTLINED_FUNCTION_2_0();
  v12 = v11;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_65_1();
  sub_27534ADDC();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (!v2)
  {
    OUTLINED_FUNCTION_264();
    sub_2753B7598();
    v15 = v14;
    OUTLINED_FUNCTION_143();
    sub_2753B7598();
    v18 = v17;
    (*(v12 + 8))(v3, v10);
    *a2 = v15;
    a2[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MediaAPI.SpatialOffsets.startOffsetInMilliseconds.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t MediaAPI.SpatialOffsets.endOffsetInMilliseconds.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t MediaAPI.SpatialOffsets.alignmentDurationLimitInMilliseconds.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t MediaAPI.SpatialOffsets.timeDrift.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t MediaAPI.SpatialOffsets.timestampInMilliseconds.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t MediaAPI.SpatialOffsets.offsets.setter(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_27532CE34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000023 && 0x80000002753B9490 == a2;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000024 && 0x80000002753B94C0 == a2;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000022 && 0x80000002753B94F0 == a2;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000023 && 0x80000002753B9520 == a2;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000019 && 0x80000002753B9550 == a2;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000002753B9570 == a2;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000024 && 0x80000002753B9590 == a2;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4D65736F6C437369 && a2 == 0xEC00000068637461;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7541676E6F4C7369 && a2 == 0xEB000000006F6964;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x66697244656D6974 && a2 == 0xE900000000000074;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000017 && 0x80000002753B95C0 == a2;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x7374657366666FLL && a2 == 0xE700000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_2753B7718();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_27532D1EC(char a1)
{
  result = 0x4D65736F6C437369;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 7:
      return result;
    case 8:
      result = 0x7541676E6F4C7369;
      break;
    case 9:
      result = 0x66697244656D6974;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x7374657366666FLL;
      break;
    default:
      result = 0xD000000000000023;
      break;
  }

  return result;
}

uint64_t sub_27532D3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27532CE34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27532D3CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27532D1E4();
  *a1 = result;
  return result;
}

uint64_t sub_27532D3F4(uint64_t a1)
{
  v2 = sub_27534AE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27532D430(uint64_t a1)
{
  v2 = sub_27534AE30();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.SpatialOffsets.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  v61 = v21;
  v23 = v22;
  OUTLINED_FUNCTION_220_0();
  sub_27534DC8C(0, v24, v25, v26, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  v28 = v27;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v29);
  v60 = *(v20 + 16);
  v59 = *(v20 + 24);
  v58 = *(v20 + 32);
  v57 = *(v20 + 40);
  v56 = *(v20 + 48);
  v30 = *(v20 + 56);
  v53 = *(v20 + 64);
  v54 = *(v20 + 72);
  v55 = v30;
  v51 = *(v20 + 80);
  v52 = *(v20 + 88);
  v49 = *(v20 + 96);
  v50 = *(v20 + 104);
  v31 = *(v20 + 105);
  v47 = *(v20 + 106);
  v48 = v31;
  v45 = *(v20 + 112);
  v46 = *(v20 + 120);
  v43 = *(v20 + 128);
  v44 = *(v20 + 136);
  v32 = *(v20 + 144);
  v33 = v23[3];
  v34 = v23;
  v36 = &v43 - v35;
  OUTLINED_FUNCTION_67_0(v34, v33);
  sub_27534AE30();
  OUTLINED_FUNCTION_299();
  sub_2753B7808();
  v37 = v61;
  sub_2753B7618();
  if (v37)
  {
    v38 = OUTLINED_FUNCTION_433();
    v39(v38);
  }

  else
  {
    v61 = v32;
    OUTLINED_FUNCTION_242(1);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    OUTLINED_FUNCTION_242(2);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    OUTLINED_FUNCTION_242(3);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    OUTLINED_FUNCTION_242(4);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    OUTLINED_FUNCTION_242(5);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    OUTLINED_FUNCTION_242(6);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    OUTLINED_FUNCTION_143_1();
    sub_2753B7608();
    OUTLINED_FUNCTION_143_1();
    sub_2753B7608();
    OUTLINED_FUNCTION_242(9);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    OUTLINED_FUNCTION_242(10);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7618();
    v62 = 11;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v40, v41, v42);
    sub_27534AE84();
    OUTLINED_FUNCTION_369();
    sub_2753B7698();
    (*(v28 + 8))(v36);
  }

  OUTLINED_FUNCTION_61();
}

void MediaAPI.SpatialOffsets.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_220_0();
  sub_27534DC8C(0, v5, v6, &type metadata for MediaAPI.SpatialOffsets.CodingKeys, MEMORY[0x277D844C8]);
  v43 = v7;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_67_0(v2, v2[3]);
  sub_27534AE30();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_323();
  sub_2753B77F8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_59_2();
    v9 = sub_2753B7538();
    OUTLINED_FUNCTION_446(v9, v10);
    OUTLINED_FUNCTION_18_3(1);
    v42 = sub_2753B7538();
    v95 = v11 & 1;
    OUTLINED_FUNCTION_18_3(2);
    v41 = sub_2753B7538();
    v93 = v12 & 1;
    OUTLINED_FUNCTION_18_3(3);
    v40 = sub_2753B7538();
    v91 = v13 & 1;
    OUTLINED_FUNCTION_18_3(4);
    v39 = sub_2753B7538();
    v89 = v14 & 1;
    OUTLINED_FUNCTION_18_3(5);
    v38 = sub_2753B7538();
    v87 = v15 & 1;
    OUTLINED_FUNCTION_18_3(6);
    v37 = sub_2753B7538();
    v85 = v16 & 1;
    OUTLINED_FUNCTION_18_3(7);
    v35 = sub_2753B7528();
    OUTLINED_FUNCTION_18_3(8);
    v36 = sub_2753B7528();
    OUTLINED_FUNCTION_18_3(9);
    v17 = sub_2753B7538();
    v82 = v18 & 1;
    LOBYTE(v46) = 10;
    OUTLINED_FUNCTION_104_2();
    v19 = sub_2753B7538();
    v80 = v20 & 1;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v21, v22, v23);
    v77 = 11;
    sub_27534AF74();
    OUTLINED_FUNCTION_77_2();
    sub_2753B75B8();
    v24 = OUTLINED_FUNCTION_113_2();
    v25(v24, v43);
    v27 = v78;
    v45[0] = v9;
    v44 = v97;
    LOBYTE(v45[1]) = v97;
    *(&v45[1] + 1) = *v96;
    HIDWORD(v45[1]) = *&v96[3];
    v45[2] = v42;
    v34 = v95;
    LOBYTE(v45[3]) = v95;
    *(&v45[3] + 1) = *v94;
    HIDWORD(v45[3]) = *&v94[3];
    v45[4] = v41;
    v33 = v93;
    LOBYTE(v45[5]) = v93;
    HIDWORD(v45[5]) = *&v92[3];
    *(&v45[5] + 1) = *v92;
    v45[6] = v40;
    v32 = v91;
    LOBYTE(v45[7]) = v91;
    *(&v45[7] + 1) = *v90;
    HIDWORD(v45[7]) = *&v90[3];
    v45[8] = v39;
    v31 = v89;
    LOBYTE(v45[9]) = v89;
    *(&v45[9] + 1) = *v88;
    HIDWORD(v45[9]) = *&v88[3];
    v45[10] = v38;
    v30 = v87;
    LOBYTE(v45[11]) = v87;
    HIDWORD(v45[11]) = *&v86[3];
    *(&v45[11] + 1) = *v86;
    v45[12] = v37;
    v29 = v85;
    LOBYTE(v45[13]) = v85;
    BYTE1(v45[13]) = v35;
    BYTE2(v45[13]) = v36;
    HIBYTE(v45[13]) = v84;
    *(&v45[13] + 3) = v83;
    v45[14] = v17;
    v28 = v82;
    LOBYTE(v45[15]) = v82;
    HIDWORD(v45[15]) = *&v81[3];
    *(&v45[15] + 1) = *v81;
    v45[16] = v19;
    v26 = v80;
    LOBYTE(v45[17]) = v80;
    HIDWORD(v45[17]) = *&v79[3];
    *(&v45[17] + 1) = *v79;
    v45[18] = v78;
    memcpy(v4, v45, 0x98uLL);
    sub_275316FE8(v45, &v46);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v46 = v9;
    v47 = v44;
    *v48 = *v96;
    *&v48[3] = *&v96[3];
    v49 = v42;
    v50 = v34;
    *v51 = *v94;
    *&v51[3] = *&v94[3];
    v52 = v41;
    v53 = v33;
    *v54 = *v92;
    *&v54[3] = *&v92[3];
    v55 = v40;
    v56 = v32;
    *v57 = *v90;
    *&v57[3] = *&v90[3];
    v58 = v39;
    v59 = v31;
    *v60 = *v88;
    *&v60[3] = *&v88[3];
    v61 = v38;
    v62 = v30;
    *v63 = *v86;
    *&v63[3] = *&v86[3];
    v64 = v37;
    v65 = v29;
    v66 = v35;
    v67 = v36;
    v69 = v84;
    v68 = v83;
    v70 = v17;
    v71 = v28;
    *&v72[3] = *&v81[3];
    *v72 = *v81;
    v73 = v19;
    v74 = v26;
    *&v75[3] = *&v79[3];
    *v75 = *v79;
    v76 = v27;
    sub_27534B064(&v46);
  }

  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.PlayParams.StreamingKind.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_27532DE7C@<X0>(uint64_t *a1@<X8>)
{
  result = MediaAPI.PlayParams.StreamingKind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27532DF84@<X0>(uint64_t *a1@<X8>)
{
  result = MediaAPI.PlayParams.StationMediaType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t MediaAPI.PlayParams.id.setter()
{
  OUTLINED_FUNCTION_96();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.PlayParams.kind.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.PlayParams.purchasedId.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t MediaAPI.PlayParams.catalogId.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t MediaAPI.PlayParams.versionHash.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t MediaAPI.PlayParams.globalId.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t MediaAPI.PlayParams.stationHash.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t MediaAPI.PlayParams.format.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t sub_27532E4E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6573616863727570 && a2 == 0xEB00000000644964;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x49676F6C61746163 && a2 == 0xE900000000000064;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72617262694C7369 && a2 == 0xE900000000000079;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x486E6F6973726576 && a2 == 0xEB00000000687361;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64496C61626F6C67 && a2 == 0xE800000000000000;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6974726F706572 && a2 == 0xE900000000000067;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E696D6165727473 && a2 == 0xED0000646E694B67;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x486E6F6974617473 && a2 == 0xEB00000000687361;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x6D7244736168 && a2 == 0xE600000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_2753B7718();

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

uint64_t sub_27532E8D0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      return 1684957547;
    case 2:
      return 0x6573616863727570;
    case 3:
      return 0x49676F6C61746163;
    case 4:
      return 0x72617262694C7369;
    case 5:
      v4 = 1936876918;
      goto LABEL_13;
    case 6:
      return 0x64496C61626F6C67;
    case 7:
      v3 = 0x74726F706572;
      goto LABEL_15;
    case 8:
      v3 = 0x6D6165727473;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
      break;
    case 9:
      result = 0x707954616964656DLL;
      break;
    case 10:
      v4 = 1952543859;
LABEL_13:
      result = v4 | 0x486E6F6900000000;
      break;
    case 11:
      result = 0x74616D726F66;
      break;
    case 12:
      result = 0x6D7244736168;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27532EA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27532E4E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27532EA9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27532E8C8();
  *a1 = result;
  return result;
}

uint64_t sub_27532EAC4(uint64_t a1)
{
  v2 = sub_27534B094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27532EB00(uint64_t a1)
{
  v2 = sub_27534B094();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.PlayParams.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60();
  v26 = v25;
  OUTLINED_FUNCTION_230_0();
  sub_27534DC8C(0, v27, v28, v29, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  v31 = v30;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_67_0(v26, v26[3]);
  sub_27534B094();
  OUTLINED_FUNCTION_299();
  sub_2753B7808();
  OUTLINED_FUNCTION_319();
  OUTLINED_FUNCTION_298();
  sub_2753B7658();
  if (v23)
  {
    v33 = OUTLINED_FUNCTION_115();
    v34(v33);
  }

  else
  {
    OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_384();
    sub_2753B7658();
    OUTLINED_FUNCTION_175_0();
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_384();
    sub_2753B75F8();
    OUTLINED_FUNCTION_171_0();
    OUTLINED_FUNCTION_384();
    sub_2753B75F8();
    OUTLINED_FUNCTION_444();
    sub_2753B7608();
    OUTLINED_FUNCTION_384();
    sub_2753B75F8();
    OUTLINED_FUNCTION_384();
    sub_2753B75F8();
    OUTLINED_FUNCTION_444();
    sub_2753B7608();
    sub_27534B0E8();
    OUTLINED_FUNCTION_444();
    sub_2753B7638();
    sub_27534B13C();
    OUTLINED_FUNCTION_444();
    sub_2753B7638();
    sub_2753B75F8();
    OUTLINED_FUNCTION_182();
    sub_2753B75F8();
    OUTLINED_FUNCTION_182();
    sub_2753B7608();
    (*(v31 + 8))(v24);
  }

  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.PlayParams.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_368();
  v40 = v2;
  OUTLINED_FUNCTION_148_1();
  sub_27534B094();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_268();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_296();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_160_1();
  }

  else
  {
    v37 = v4;
    OUTLINED_FUNCTION_187_0();
    v10 = sub_2753B7578();
    v39 = v11;
    OUTLINED_FUNCTION_28_2(1);
    v12 = sub_2753B7578();
    v38 = v13;
    OUTLINED_FUNCTION_28_2(2);
    v14 = sub_2753B7518();
    v36 = v15;
    OUTLINED_FUNCTION_28_2(3);
    v35 = sub_2753B7518();
    v64 = v16;
    OUTLINED_FUNCTION_28_2(4);
    v34 = sub_2753B7528();
    OUTLINED_FUNCTION_28_2(5);
    v33 = sub_2753B7518();
    v41 = v17;
    OUTLINED_FUNCTION_28_2(6);
    v31 = sub_2753B7518();
    v32 = v14;
    v19 = v18;
    OUTLINED_FUNCTION_28_2(7);
    v30 = sub_2753B7528();
    sub_27534B190();
    OUTLINED_FUNCTION_164_0();
    OUTLINED_FUNCTION_187_0();
    sub_2753B7558();
    v29 = v12;
    LOBYTE(v42[0]) = 9;
    sub_27534B1E4();
    OUTLINED_FUNCTION_164_0();
    OUTLINED_FUNCTION_187_0();
    sub_2753B7558();
    OUTLINED_FUNCTION_187_0();
    v20 = sub_2753B7518();
    v22 = v21;
    LOBYTE(v43[0]) = 11;
    OUTLINED_FUNCTION_187_0();
    v28 = sub_2753B7518();
    v24 = v23;
    v60 = 12;
    OUTLINED_FUNCTION_187_0();
    v25 = sub_2753B7528();
    v26 = OUTLINED_FUNCTION_288();
    v27(v26);
    v42[0] = v10;
    v42[1] = v39;
    v42[2] = v29;
    v42[3] = v38;
    v42[4] = v32;
    v42[5] = v36;
    v42[6] = v35;
    v42[7] = v64;
    LOBYTE(v42[8]) = v34;
    *(&v42[8] + 1) = v63[0];
    HIDWORD(v42[8]) = *(v63 + 3);
    v42[9] = v33;
    v42[10] = v41;
    v42[11] = v31;
    v42[12] = v19;
    LOWORD(v42[13]) = v30;
    BYTE2(v42[13]) = 0;
    *(&v42[13] + 3) = v61;
    HIBYTE(v42[13]) = v62;
    v42[14] = v20;
    v42[15] = v22;
    v42[16] = v28;
    v42[17] = v24;
    LOBYTE(v42[18]) = v25;
    memcpy(v37, v42, 0x91uLL);
    sub_27534B238(v42, v43);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v43[0] = v10;
    v43[1] = v39;
    v43[2] = v29;
    v43[3] = v38;
    v43[4] = v32;
    v43[5] = v36;
    v43[6] = v35;
    v43[7] = v64;
    v44 = v34;
    *v45 = v63[0];
    *&v45[3] = *(v63 + 3);
    v46 = v33;
    v47 = v41;
    v48 = v31;
    v49 = v19;
    v50 = v30;
    v51 = 0;
    v52 = 0;
    v53 = v61;
    v54 = v62;
    v55 = v20;
    v56 = v22;
    v57 = v28;
    v58 = v24;
    v59 = v25;
    sub_27534B270(v43);
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.Preview.url.setter()
{
  OUTLINED_FUNCTION_96();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.Preview.hlsUrl.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.Preview.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_313();
  return OUTLINED_FUNCTION_360(v3, v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
}

void *MediaAPI.Preview.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  sub_27534B488(v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_309();
}

uint64_t sub_27532F650(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C7255736C68 && a2 == 0xE600000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2753B7718();

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

uint64_t sub_27532F75C(char a1)
{
  if (!a1)
  {
    return 7107189;
  }

  if (a1 == 1)
  {
    return 0x6C7255736C68;
  }

  return 0x6B726F77747261;
}

uint64_t sub_27532F7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27532F650(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27532F7D8(uint64_t a1)
{
  v2 = sub_27534B2A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27532F814(uint64_t a1)
{
  v2 = sub_27534B2A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.Preview.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60();
  v26 = v25;
  OUTLINED_FUNCTION_213_0();
  sub_27534DC8C(0, v27, v28, v29, MEMORY[0x277D84538]);
  v31 = v30;
  OUTLINED_FUNCTION_2_0();
  v33 = v32;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_179_0();
  memcpy(v35, v36, v37);
  OUTLINED_FUNCTION_67_0(v26, v26[3]);
  sub_27534B2A0();
  sub_2753B7808();
  v39[0] = 0;
  sub_2753B7658();
  if (!v23)
  {
    v39[0] = 1;
    sub_2753B75F8();
    memcpy(v39, v40, sizeof(v39));
    OUTLINED_FUNCTION_385();
    sub_27534B40C(v40, v38, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    sub_2753B7638();
    memcpy(v38, v39, 0x81uLL);
    sub_27534B488(v38, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  }

  (*(v33 + 8))(v24, v31);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.Preview.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60();
  v25 = v24;
  v41 = v26;
  OUTLINED_FUNCTION_213_0();
  sub_27534DC8C(0, v27, v28, &type metadata for MediaAPI.Preview.CodingKeys, MEMORY[0x277D844C8]);
  v42 = v29;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_30();
  sub_27534B348(v49);
  memcpy(v48, v49, sizeof(v48));
  v31 = OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_67_0(v31, v32);
  sub_27534B2A0();
  OUTLINED_FUNCTION_299();
  sub_2753B77F8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    memcpy(v46, v48, 0x81uLL);
    sub_27534B488(v46, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  }

  else
  {
    OUTLINED_FUNCTION_436();
    v33 = sub_2753B7578();
    v35 = v34;
    LOBYTE(v46[0]) = 1;
    OUTLINED_FUNCTION_436();
    v39 = sub_2753B7518();
    v40 = v36;
    OUTLINED_FUNCTION_385();
    sub_27534B350();
    OUTLINED_FUNCTION_164_0();
    OUTLINED_FUNCTION_436();
    sub_2753B7558();
    v37 = OUTLINED_FUNCTION_120_1();
    v38(v37, v42);
    memcpy(v43, v47, 0x81uLL);
    memcpy(v44, v48, 0x81uLL);
    sub_27534B488(v44, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    v45[0] = v33;
    v45[1] = v35;
    v45[2] = v39;
    v45[3] = v40;
    memcpy(&v45[4], v43, 0x81uLL);
    memcpy(v41, v45, 0xA1uLL);
    sub_27534B3A4(v45, v46);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v46[0] = v33;
    v46[1] = v35;
    v46[2] = v39;
    v46[3] = v40;
    memcpy(&v46[4], v43, 0x81uLL);
    sub_27534B3DC(v46);
  }

  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.SongAttributes.albumName.setter()
{
  OUTLINED_FUNCTION_96();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.artistName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_313();
  return OUTLINED_FUNCTION_360(v3, v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
}

void *MediaAPI.SongAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  sub_27534B488(v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_309();
}

uint64_t MediaAPI.SongAttributes.audioLocale.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.audioTraits.setter()
{
  result = OUTLINED_FUNCTION_481();
  *(v1 + 184) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.composerName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.contentProvider.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.contentRating.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.copyright.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.editorialNotes.setter(uint64_t a1)
{

  *(v1 + 288) = a1;
  return result;
}

uint64_t MediaAPI.SongAttributes.extendedAssetUrls.setter(uint64_t a1)
{

  *(v1 + 296) = a1;
  return result;
}

uint64_t MediaAPI.SongAttributes.genreNames.setter(uint64_t a1)
{

  *(v1 + 304) = a1;
  return result;
}

uint64_t MediaAPI.SongAttributes.isrc.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 320) = v2;
  *(v1 + 328) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.movementName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 352) = v2;
  *(v1 + 360) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 384) = v2;
  *(v1 + 392) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_355();
  v4 = memcpy(v1, v2, v3);
  v5 = OUTLINED_FUNCTION_375(v4, (v0 + 400));
  return OUTLINED_FUNCTION_363(v5, v6, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
}

void *MediaAPI.SongAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_355();
  memcpy(v1, v2, v3);
  sub_27534B488(v5, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 400));
}

uint64_t MediaAPI.SongAttributes.previews.setter(uint64_t a1)
{

  *(v1 + 552) = a1;
  return result;
}

uint64_t MediaAPI.SongAttributes.releaseDate.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 560) = v2;
  *(v1 + 568) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.workName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 592) = v2;
  *(v1 + 600) = v0;
  return result;
}

uint64_t MediaAPI.SongAttributes.spatialOffsets.getter()
{
  OUTLINED_FUNCTION_252();
  memcpy(v2, (v1 + 608), 0x98uLL);
  v3 = memcpy(v0, (v1 + 608), 0x98uLL);
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
}

void *MediaAPI.SongAttributes.spatialOffsets.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v2, (v1 + 608), 0x98uLL);
  sub_27534B488(v4, &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
  return memcpy((v1 + 608), v0, 0x98uLL);
}

uint64_t sub_27533082C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x636F4C6F69647561 && a2 == 0xEB00000000656C61;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7265736F706D6F63 && a2 == 0xEC000000656D614ELL;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x50746E65746E6F63 && a2 == 0xEF72656469766F72;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x626D754E63736964 && a2 == 0xEA00000000007265;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000002753B95E0 == a2;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000011 && 0x80000002753B9320 == a2;
                          if (v17 || (sub_2753B7718() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                            if (v18 || (sub_2753B7718() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6964657243736168 && a2 == 0xEA00000000007374;
                              if (v19 || (sub_2753B7718() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x636972794C736168 && a2 == 0xE900000000000073;
                                if (v20 || (sub_2753B7718() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000013 && 0x80000002753B9600 == a2;
                                  if (v21 || (sub_2753B7718() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000014 && 0x80000002753B9620 == a2;
                                    if (v22 || (sub_2753B7718() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000013 && 0x80000002753B9640 == a2;
                                      if (v23 || (sub_2753B7718() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000019 && 0x80000002753B9660 == a2;
                                        if (v24 || (sub_2753B7718() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 1668445033 && a2 == 0xE400000000000000;
                                          if (v25 || (sub_2753B7718() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x746E656D65766F6DLL && a2 == 0xED0000746E756F43;
                                            if (v26 || (sub_2753B7718() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x746E656D65766F6DLL && a2 == 0xEC000000656D614ELL;
                                              if (v27 || (sub_2753B7718() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x746E656D65766F6DLL && a2 == 0xEE007265626D754ELL;
                                                if (v28 || (sub_2753B7718() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                                  if (v29 || (sub_2753B7718() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                                                    if (v30 || (sub_2753B7718() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x7377656976657270 && a2 == 0xE800000000000000;
                                                      if (v31 || (sub_2753B7718() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                                        if (v32 || (sub_2753B7718() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x6D754E6B63617274 && a2 == 0xEB00000000726562;
                                                          if (v33 || (sub_2753B7718() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0x656D614E6B726F77 && a2 == 0xE800000000000000;
                                                            if (v34 || (sub_2753B7718() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x4F6C616974617073 && a2 == 0xEE00737465736666;
                                                              if (v35 || (sub_2753B7718() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else if (a1 == 0xD000000000000018 && 0x80000002753B8450 == a2)
                                                              {

                                                                return 31;
                                                              }

                                                              else
                                                              {
                                                                v37 = sub_2753B7718();

                                                                if (v37)
                                                                {
                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  return 32;
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

uint64_t sub_2753311A4(char a1)
{
  result = 0x6D614E6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x614E747369747261;
      break;
    case 2:
      result = 0x6B726F77747261;
      break;
    case 3:
      result = 0x636F4C6F69647561;
      break;
    case 4:
      v3 = 0x546F69647561;
      goto LABEL_11;
    case 5:
      result = 0x7265736F706D6F63;
      break;
    case 6:
      result = 0x50746E65746E6F63;
      break;
    case 7:
      result = 0x52746E65746E6F63;
      break;
    case 8:
      result = 0x6867697279706F63;
      break;
    case 9:
      result = 0x626D754E63736964;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6169726F74696465;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x6D614E65726E6567;
      break;
    case 14:
      result = 0x6964657243736168;
      break;
    case 15:
      result = 0x636972794C736168;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 1668445033;
      break;
    case 21:
    case 23:
      result = 0x746E656D65766F6DLL;
      break;
    case 22:
      result = 0x746E656D65766F6DLL;
      break;
    case 24:
      result = 1701667182;
      break;
    case 25:
      v3 = 0x615079616C70;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      break;
    case 26:
      result = 0x7377656976657270;
      break;
    case 27:
      result = 0x44657361656C6572;
      break;
    case 28:
      result = 0x6D754E6B63617274;
      break;
    case 29:
      result = 0x656D614E6B726F77;
      break;
    case 30:
      result = 0x4F6C616974617073;
      break;
    case 31:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2753315EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27533082C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275331614@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27533119C();
  *a1 = result;
  return result;
}

uint64_t sub_27533163C(uint64_t a1)
{
  v2 = sub_27534B4F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275331678(uint64_t a1)
{
  v2 = sub_27534B4F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.SongAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  OUTLINED_FUNCTION_235_0();
  sub_27534DC8C(0, v5, v6, v7, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  v9 = v8;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_179_0();
  memcpy(v11, v12, v13);
  v30 = v0[23];
  v29 = v0[36];
  v27 = v0[38];
  v28 = v0[37];
  OUTLINED_FUNCTION_145_1();
  OUTLINED_FUNCTION_355();
  memcpy(v14, v15, v16);
  OUTLINED_FUNCTION_327();
  memcpy(v39, v0 + 76, 0x98uLL);
  OUTLINED_FUNCTION_67_0(v4, v4[3]);
  sub_27534B4F8();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  LOBYTE(v32[0]) = 0;
  sub_2753B75F8();
  if (v1)
  {
    v17 = OUTLINED_FUNCTION_306();
    v18(v17);
  }

  else
  {
    OUTLINED_FUNCTION_166_0(1);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    memcpy(v36, v37, sizeof(v36));
    v35[135] = 2;
    sub_27534B40C(v37, v32, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    sub_2753B7638();
    memcpy(v35, v36, 0x81uLL);
    sub_27534B488(v35, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    OUTLINED_FUNCTION_166_0(3);
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    v32[0] = v30;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v19, v20, v21);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v22);
    OUTLINED_FUNCTION_391();
    sub_2753B7638();
    OUTLINED_FUNCTION_166_0(5);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_166_0(6);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_166_0(7);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_166_0(8);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_166_0(9);
    OUTLINED_FUNCTION_165_0();
    sub_2753B7628();
    OUTLINED_FUNCTION_166_0(10);
    OUTLINED_FUNCTION_165_0();
    sub_2753B7648();
    v32[0] = v29;
    sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
    OUTLINED_FUNCTION_391();
    OUTLINED_FUNCTION_246();
    sub_2753B7638();
    v32[0] = v28;
    OUTLINED_FUNCTION_391();
    OUTLINED_FUNCTION_246();
    sub_2753B7638();
    v32[0] = v27;
    OUTLINED_FUNCTION_391();
    sub_2753B7638();
    OUTLINED_FUNCTION_347(14);
    OUTLINED_FUNCTION_249();
    sub_2753B7608();
    OUTLINED_FUNCTION_347(15);
    OUTLINED_FUNCTION_249();
    sub_2753B7608();
    OUTLINED_FUNCTION_347(16);
    OUTLINED_FUNCTION_249();
    sub_2753B7608();
    OUTLINED_FUNCTION_347(17);
    OUTLINED_FUNCTION_249();
    sub_2753B7608();
    OUTLINED_FUNCTION_347(18);
    OUTLINED_FUNCTION_249();
    sub_2753B7608();
    OUTLINED_FUNCTION_347(19);
    OUTLINED_FUNCTION_249();
    sub_2753B7608();
    OUTLINED_FUNCTION_166_0(20);
    OUTLINED_FUNCTION_303();
    sub_2753B75F8();
    OUTLINED_FUNCTION_166_0(21);
    OUTLINED_FUNCTION_303();
    sub_2753B7628();
    OUTLINED_FUNCTION_166_0(22);
    OUTLINED_FUNCTION_303();
    sub_2753B75F8();
    OUTLINED_FUNCTION_166_0(23);
    OUTLINED_FUNCTION_303();
    sub_2753B7628();
    OUTLINED_FUNCTION_166_0(24);
    OUTLINED_FUNCTION_303();
    sub_2753B75F8();
    memcpy(v34, v38, sizeof(v34));
    v33[151] = 25;
    sub_27534B40C(v38, v32, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    OUTLINED_FUNCTION_249();
    sub_2753B7638();
    memcpy(v33, v34, 0x91uLL);
    sub_27534B488(v33, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    v32[0] = v26;
    v31[0] = 26;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v23, v24, v25);
    sub_27534B5A0();
    OUTLINED_FUNCTION_391();
    OUTLINED_FUNCTION_249();
    sub_2753B7638();
    OUTLINED_FUNCTION_166_0(27);
    OUTLINED_FUNCTION_303();
    sub_2753B75F8();
    OUTLINED_FUNCTION_166_0(28);
    OUTLINED_FUNCTION_303();
    sub_2753B7628();
    OUTLINED_FUNCTION_166_0(29);
    OUTLINED_FUNCTION_303();
    sub_2753B75F8();
    memcpy(v32, v39, sizeof(v32));
    v31[159] = 30;
    sub_27534B40C(v39, v31, &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
    sub_275317044();
    OUTLINED_FUNCTION_249();
    sub_2753B7638();
    memcpy(v31, v32, 0x98uLL);
    sub_27534B488(v31, &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
    OUTLINED_FUNCTION_249();
    sub_2753B7608();
    (*(v9 + 8))(v2);
  }

  OUTLINED_FUNCTION_61();
}

void MediaAPI.SongAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = v3;
  OUTLINED_FUNCTION_235_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  v10 = v9;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_70_2();
  sub_27534B348(v145);
  memcpy(v144, v145, sizeof(v144));
  v142 = 1;
  v140 = 1;
  v138 = 1;
  v136 = 1;
  sub_27534B690(v146);
  memcpy(v134, v146, sizeof(v134));
  v133 = 1;
  sub_27534B698(v147);
  memcpy(v132, v147, sizeof(v132));
  v96 = v2;
  v12 = OUTLINED_FUNCTION_433();
  v14 = __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_27534B4F8();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_129_2();
  OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_325();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_160_1();
    OUTLINED_FUNCTION_40_2();
    __swift_destroy_boxed_opaque_existential_1(v96);
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = v10;
    OUTLINED_FUNCTION_407();
    *v116 = *v143;
    OUTLINED_FUNCTION_217_0(v122);
    *&v116[3] = *&v143[3];
    v117 = v14;
    v118 = 0;
    v119 = 0;
    v120 = v4;
    OUTLINED_FUNCTION_185_0();
    v121 = v142;
    *&v122[3] = v141;
    v123 = v98;
    v124 = v140;
    OUTLINED_FUNCTION_136_2(v139);
    v125 = v138;
    OUTLINED_FUNCTION_321(v137);
    v126 = v136;
    OUTLINED_FUNCTION_328(v135);
    OUTLINED_FUNCTION_438();
    OUTLINED_FUNCTION_320(v15);
    v127 = v133;
    OUTLINED_FUNCTION_437();
    v128 = v16;
    v129 = v74;
    v130 = v83;
    OUTLINED_FUNCTION_427();
    v131 = 2;
  }

  else
  {
    LOBYTE(v112) = 0;
    v62 = sub_2753B7518();
    v63 = v17;
    OUTLINED_FUNCTION_47_2(1);
    v60 = sub_2753B7518();
    v61 = v18;
    v110[135] = 2;
    sub_27534B350();
    OUTLINED_FUNCTION_322();
    sub_2753B7558();
    memcpy(v109, v111, sizeof(v109));
    memcpy(v110, v144, 0x81uLL);
    sub_27534B488(v110, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v144, v109, sizeof(v144));
    OUTLINED_FUNCTION_47_2(3);
    v58 = sub_2753B7518();
    v59 = v19;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v20, v21, v22);
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v23);
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_322();
    sub_2753B7558();
    v24 = v112;
    OUTLINED_FUNCTION_47_2(5);
    v57 = sub_2753B7518();
    v95 = v25;
    OUTLINED_FUNCTION_47_2(6);
    v93 = sub_2753B7518();
    v94 = v26;
    OUTLINED_FUNCTION_47_2(7);
    v91 = sub_2753B7518();
    v92 = v27;
    OUTLINED_FUNCTION_47_2(8);
    v89 = sub_2753B7518();
    v90 = v28;
    OUTLINED_FUNCTION_47_2(9);
    v100 = sub_2753B7548();
    v142 = v29 & 1;
    OUTLINED_FUNCTION_7_3(10);
    v99 = sub_2753B7568();
    v140 = v30 & 1;
    sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_246();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v88 = v112;
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_246();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v87 = v112;
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v86 = v112;
    OUTLINED_FUNCTION_7_3(14);
    v97 = sub_2753B7528();
    OUTLINED_FUNCTION_7_3(15);
    v68 = sub_2753B7528();
    OUTLINED_FUNCTION_7_3(16);
    v67 = sub_2753B7528();
    OUTLINED_FUNCTION_7_3(17);
    v66 = sub_2753B7528();
    OUTLINED_FUNCTION_7_3(18);
    v65 = sub_2753B7528();
    OUTLINED_FUNCTION_7_3(19);
    v69 = sub_2753B7528();
    OUTLINED_FUNCTION_7_3(20);
    v77 = sub_2753B7518();
    v81 = v31;
    OUTLINED_FUNCTION_7_3(21);
    v78 = sub_2753B7548();
    v138 = v32 & 1;
    OUTLINED_FUNCTION_7_3(22);
    v76 = sub_2753B7518();
    v82 = v33;
    OUTLINED_FUNCTION_7_3(23);
    v80 = sub_2753B7548();
    v136 = v34 & 1;
    OUTLINED_FUNCTION_7_3(24);
    v79 = sub_2753B7518();
    v85 = v35;
    v107[151] = 25;
    sub_27534B76C();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    memcpy(v106, v108, sizeof(v106));
    memcpy(v107, v134, 0x91uLL);
    sub_27534B488(v107, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v134, v106, sizeof(v134));
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v36, v37, v38);
    v101[0] = 26;
    sub_27534B7C0();
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    v70 = v112;
    OUTLINED_FUNCTION_7_3(27);
    v71 = sub_2753B7518();
    v73 = v39;
    OUTLINED_FUNCTION_7_3(28);
    v72 = sub_2753B7548();
    v133 = v40 & 1;
    OUTLINED_FUNCTION_7_3(29);
    v75 = sub_2753B7518();
    v84 = v41;
    v104[159] = 30;
    sub_27534B8B0();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    memcpy(v103, v105, sizeof(v103));
    memcpy(v104, v132, 0x98uLL);
    sub_27534B488(v104, &qword_2809C1890, &type metadata for MediaAPI.SpatialOffsets);
    memcpy(v132, v103, sizeof(v132));
    v102 = 31;
    OUTLINED_FUNCTION_103_2();
    v42 = sub_2753B7528();
    v43 = OUTLINED_FUNCTION_37_2();
    v44(v43);
    *v101 = v62;
    *&v101[8] = v63;
    *&v101[16] = v60;
    *&v101[24] = v61;
    OUTLINED_FUNCTION_407();
    *&v101[161] = *v143;
    *&v101[164] = *&v143[3];
    *&v101[168] = v58;
    *&v101[176] = v59;
    *&v101[184] = v24;
    *&v101[192] = v57;
    *&v101[200] = v95;
    *&v101[208] = v93;
    *&v101[216] = v94;
    *&v101[224] = v91;
    *&v101[232] = v92;
    *&v101[240] = v89;
    *&v101[248] = v90;
    *&v101[256] = v100;
    v64 = v142;
    v101[264] = v142;
    OUTLINED_FUNCTION_133_2();
    *&v101[268] = v45;
    *&v101[272] = v99;
    v56 = v140;
    v101[280] = v140;
    OUTLINED_FUNCTION_132_1();
    *&v101[284] = v46;
    *&v101[288] = v88;
    *&v101[296] = v87;
    *&v101[304] = v86;
    v101[312] = v97;
    v101[313] = v68;
    v101[314] = v67;
    v101[315] = v66;
    v101[316] = v65;
    v101[317] = v69;
    *&v101[320] = v77;
    *&v101[328] = v81;
    *&v101[336] = v78;
    OUTLINED_FUNCTION_267();
    OUTLINED_FUNCTION_266();
    v47 = v138;
    v101[344] = v138;
    *&v101[348] = v137;
    *&v101[352] = v76;
    *&v101[360] = v82;
    *&v101[368] = v80;
    *&v101[380] = v135;
    v48 = v136;
    v101[376] = v136;
    *&v101[384] = v79;
    *&v101[392] = v85;
    memcpy(&v101[400], v134, 0x91uLL);
    OUTLINED_FUNCTION_131_2();
    *&v101[548] = v49;
    *&v101[552] = v70;
    *&v101[560] = v71;
    *&v101[568] = v73;
    *&v101[576] = v72;
    v55 = v133;
    v101[584] = v133;
    OUTLINED_FUNCTION_130_0();
    *&v101[588] = v50;
    *&v101[592] = v75;
    *&v101[600] = v84;
    OUTLINED_FUNCTION_427();
    v101[760] = v42;
    memcpy(v4, v101, 0x2F9uLL);
    sub_275329980(v101, &v112);
    __swift_destroy_boxed_opaque_existential_1(v96);
    v112 = v62;
    v113 = v63;
    v114 = v60;
    v115 = v61;
    OUTLINED_FUNCTION_407();
    v117 = v58;
    v118 = v59;
    v119 = v24;
    v120 = v57;
    *v116 = *v143;
    *&v116[3] = *&v143[3];
    OUTLINED_FUNCTION_185_0();
    v121 = v64;
    OUTLINED_FUNCTION_133_2();
    *&v122[3] = v51;
    v123 = v99;
    v124 = v56;
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_136_2(v52);
    v125 = v47;
    OUTLINED_FUNCTION_267();
    OUTLINED_FUNCTION_321(v137);
    v126 = v48;
    OUTLINED_FUNCTION_266();
    OUTLINED_FUNCTION_328(v135);
    OUTLINED_FUNCTION_131_2();
    OUTLINED_FUNCTION_320(v53);
    v127 = v55;
    OUTLINED_FUNCTION_130_0();
    v128 = v54;
    v129 = v75;
    v130 = v84;
    OUTLINED_FUNCTION_427();
    v131 = v42;
  }

  sub_275316EA4(&v112);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.LibrarySongAttributes.albumName.setter()
{
  OUTLINED_FUNCTION_96();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.artistName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_313();
  return OUTLINED_FUNCTION_360(v3, v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
}

void *MediaAPI.LibrarySongAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  sub_27534B488(v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_309();
}

uint64_t MediaAPI.LibrarySongAttributes.audioLocale.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.audioTraits.setter()
{
  result = OUTLINED_FUNCTION_481();
  *(v1 + 184) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.composerName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.contentProvider.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.contentRating.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.copyright.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.editorialNotes.setter(uint64_t a1)
{

  *(v1 + 288) = a1;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.extendedAssetUrls.setter(uint64_t a1)
{

  *(v1 + 296) = a1;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.genreNames.setter(uint64_t a1)
{

  *(v1 + 304) = a1;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.isrc.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 320) = v2;
  *(v1 + 328) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.movementName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 352) = v2;
  *(v1 + 360) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 384) = v2;
  *(v1 + 392) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_355();
  v4 = memcpy(v1, v2, v3);
  v5 = OUTLINED_FUNCTION_375(v4, (v0 + 400));
  return OUTLINED_FUNCTION_363(v5, v6, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
}

void *MediaAPI.LibrarySongAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_355();
  memcpy(v1, v2, v3);
  sub_27534B488(v5, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 400));
}

uint64_t MediaAPI.LibrarySongAttributes.previews.setter(uint64_t a1)
{

  *(v1 + 552) = a1;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.releaseDate.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 560) = v2;
  *(v1 + 568) = v0;
  return result;
}

uint64_t MediaAPI.LibrarySongAttributes.workName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 592) = v2;
  *(v1 + 600) = v0;
  return result;
}

uint64_t sub_2753337E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x636F4C6F69647561 && a2 == 0xEB00000000656C61;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7265736F706D6F63 && a2 == 0xEC000000656D614ELL;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x50746E65746E6F63 && a2 == 0xEF72656469766F72;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x626D754E63736964 && a2 == 0xEA00000000007265;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000002753B95E0 == a2;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000011 && 0x80000002753B9320 == a2;
                          if (v17 || (sub_2753B7718() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                            if (v18 || (sub_2753B7718() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6964657243736168 && a2 == 0xEA00000000007374;
                              if (v19 || (sub_2753B7718() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x636972794C736168 && a2 == 0xE900000000000073;
                                if (v20 || (sub_2753B7718() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000013 && 0x80000002753B9600 == a2;
                                  if (v21 || (sub_2753B7718() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000014 && 0x80000002753B9620 == a2;
                                    if (v22 || (sub_2753B7718() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000013 && 0x80000002753B9640 == a2;
                                      if (v23 || (sub_2753B7718() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000019 && 0x80000002753B9660 == a2;
                                        if (v24 || (sub_2753B7718() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 1668445033 && a2 == 0xE400000000000000;
                                          if (v25 || (sub_2753B7718() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x746E656D65766F6DLL && a2 == 0xED0000746E756F43;
                                            if (v26 || (sub_2753B7718() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x746E656D65766F6DLL && a2 == 0xEC000000656D614ELL;
                                              if (v27 || (sub_2753B7718() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x746E656D65766F6DLL && a2 == 0xEE007265626D754ELL;
                                                if (v28 || (sub_2753B7718() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                                  if (v29 || (sub_2753B7718() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                                                    if (v30 || (sub_2753B7718() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x7377656976657270 && a2 == 0xE800000000000000;
                                                      if (v31 || (sub_2753B7718() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                                        if (v32 || (sub_2753B7718() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x6D754E6B63617274 && a2 == 0xEB00000000726562;
                                                          if (v33 || (sub_2753B7718() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else if (a1 == 0x656D614E6B726F77 && a2 == 0xE800000000000000)
                                                          {

                                                            return 29;
                                                          }

                                                          else
                                                          {
                                                            v35 = sub_2753B7718();

                                                            if (v35)
                                                            {
                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              return 30;
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

uint64_t sub_2753340C8(char a1)
{
  result = 0x6D614E6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x614E747369747261;
      break;
    case 2:
      result = 0x6B726F77747261;
      break;
    case 3:
      result = 0x636F4C6F69647561;
      break;
    case 4:
      v3 = 0x546F69647561;
      goto LABEL_11;
    case 5:
      result = 0x7265736F706D6F63;
      break;
    case 6:
      result = 0x50746E65746E6F63;
      break;
    case 7:
      result = 0x52746E65746E6F63;
      break;
    case 8:
      result = 0x6867697279706F63;
      break;
    case 9:
      result = 0x626D754E63736964;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6169726F74696465;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x6D614E65726E6567;
      break;
    case 14:
      result = 0x6964657243736168;
      break;
    case 15:
      result = 0x636972794C736168;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 1668445033;
      break;
    case 21:
    case 23:
      result = 0x746E656D65766F6DLL;
      break;
    case 22:
      result = 0x746E656D65766F6DLL;
      break;
    case 24:
      result = 1701667182;
      break;
    case 25:
      v3 = 0x615079616C70;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      break;
    case 26:
      result = 0x7377656976657270;
      break;
    case 27:
      result = 0x44657361656C6572;
      break;
    case 28:
      result = 0x6D754E6B63617274;
      break;
    case 29:
      result = 0x656D614E6B726F77;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2753344C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2753337E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2753344EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2753340C0();
  *a1 = result;
  return result;
}

uint64_t sub_275334514(uint64_t a1)
{
  v2 = sub_27534B904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275334550(uint64_t a1)
{
  v2 = sub_27534B904();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.LibrarySongAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_226_0();
  sub_27534DC8C(0, v2, v3, v4, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0();
  v6 = v5;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_179_0();
  memcpy(v8, v9, v10);
  v28 = v0[23];
  v27 = v0[36];
  v25 = v0[38];
  v26 = v0[37];
  OUTLINED_FUNCTION_145_1();
  OUTLINED_FUNCTION_355();
  memcpy(v11, v12, v13);
  OUTLINED_FUNCTION_327();
  v14 = OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_67_0(v14, v15);
  sub_27534B904();
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_184_0();
  sub_2753B7808();
  LOBYTE(v30[0]) = 0;
  sub_2753B75F8();
  if (v1)
  {
    v16 = OUTLINED_FUNCTION_306();
    v17(v16);
  }

  else
  {
    OUTLINED_FUNCTION_188_0(1);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    memcpy(v32, v33, sizeof(v32));
    v31[135] = 2;
    sub_27534B40C(v33, v30, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    sub_2753B7638();
    memcpy(v31, v32, 0x81uLL);
    sub_27534B488(v31, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    OUTLINED_FUNCTION_188_0(3);
    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    v30[0] = v28;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v18, v19, v20);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v21);
    OUTLINED_FUNCTION_453();
    sub_2753B7638();
    OUTLINED_FUNCTION_188_0(5);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_188_0(6);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_188_0(7);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_188_0(8);
    OUTLINED_FUNCTION_165_0();
    sub_2753B75F8();
    OUTLINED_FUNCTION_188_0(9);
    OUTLINED_FUNCTION_165_0();
    sub_2753B7628();
    OUTLINED_FUNCTION_188_0(10);
    OUTLINED_FUNCTION_165_0();
    sub_2753B7648();
    v30[0] = v27;
    sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
    OUTLINED_FUNCTION_453();
    OUTLINED_FUNCTION_246();
    sub_2753B7638();
    v30[0] = v26;
    OUTLINED_FUNCTION_453();
    OUTLINED_FUNCTION_246();
    sub_2753B7638();
    v30[0] = v25;
    v29[0] = 13;
    OUTLINED_FUNCTION_453();
    sub_2753B7638();
    OUTLINED_FUNCTION_343(14);
    OUTLINED_FUNCTION_302();
    sub_2753B7608();
    OUTLINED_FUNCTION_343(15);
    OUTLINED_FUNCTION_302();
    sub_2753B7608();
    OUTLINED_FUNCTION_343(16);
    OUTLINED_FUNCTION_302();
    sub_2753B7608();
    OUTLINED_FUNCTION_343(17);
    OUTLINED_FUNCTION_302();
    sub_2753B7608();
    OUTLINED_FUNCTION_343(18);
    OUTLINED_FUNCTION_302();
    sub_2753B7608();
    OUTLINED_FUNCTION_343(19);
    OUTLINED_FUNCTION_302();
    sub_2753B7608();
    OUTLINED_FUNCTION_188_0(20);
    OUTLINED_FUNCTION_301();
    sub_2753B75F8();
    OUTLINED_FUNCTION_188_0(21);
    OUTLINED_FUNCTION_301();
    sub_2753B7628();
    OUTLINED_FUNCTION_188_0(22);
    OUTLINED_FUNCTION_301();
    sub_2753B75F8();
    OUTLINED_FUNCTION_188_0(23);
    OUTLINED_FUNCTION_301();
    sub_2753B7628();
    OUTLINED_FUNCTION_188_0(24);
    OUTLINED_FUNCTION_301();
    sub_2753B75F8();
    OUTLINED_FUNCTION_331(v30);
    v29[151] = 25;
    sub_27534B40C(&v34, v29, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    OUTLINED_FUNCTION_302();
    sub_2753B7638();
    memcpy(v29, v30, 0x91uLL);
    sub_27534B488(v29, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v22, v23, v24);
    sub_27534B5A0();
    OUTLINED_FUNCTION_302();
    sub_2753B7638();
    OUTLINED_FUNCTION_301();
    sub_2753B75F8();
    OUTLINED_FUNCTION_301();
    sub_2753B7628();
    OUTLINED_FUNCTION_301();
    sub_2753B75F8();
    (*(v6 + 8))(0);
  }

  OUTLINED_FUNCTION_61();
}

void MediaAPI.LibrarySongAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_226_0();
  OUTLINED_FUNCTION_317(v6, v7, v8, v9, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30();
  sub_27534B348(v142);
  memcpy(v141, v142, sizeof(v141));
  v139 = 1;
  v137 = 1;
  v135 = 1;
  v133 = 1;
  sub_27534B690(&v143);
  OUTLINED_FUNCTION_331(v131);
  v130 = 1;
  v11 = v3[4];
  OUTLINED_FUNCTION_148_1();
  sub_27534B904();
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_325();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_27_2();
    OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_39_2();
    __swift_destroy_boxed_opaque_existential_1(v3);
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = v1;
    OUTLINED_FUNCTION_408();
    OUTLINED_FUNCTION_217_0(v117);
    *v111 = *v140;
    *&v111[3] = *&v140[3];
    v112 = v11;
    v113 = 0;
    v114 = 0;
    v115 = v5;
    OUTLINED_FUNCTION_186_0();
    v116 = v139;
    *&v117[3] = v138;
    v118 = v96;
    v119 = v137;
    OUTLINED_FUNCTION_137_2(v136);
    v120 = v135;
    OUTLINED_FUNCTION_324(v134);
    v121 = v133;
    OUTLINED_FUNCTION_329(v132);
    OUTLINED_FUNCTION_438();
    v122 = v12;
    v123 = v69;
    v124 = v71;
    v125 = v73;
    v126 = v75;
    v127 = v130;
    OUTLINED_FUNCTION_437();
    v128 = v13;
    v129 = 0u;
  }

  else
  {
    LOBYTE(v107) = 0;
    v61 = sub_2753B7518();
    v62 = v14;
    OUTLINED_FUNCTION_50_2(1);
    v59 = sub_2753B7518();
    v60 = v15;
    v105[135] = 2;
    sub_27534B350();
    OUTLINED_FUNCTION_164_0();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    memcpy(v104, v106, sizeof(v104));
    memcpy(v105, v141, 0x81uLL);
    sub_27534B488(v105, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v141, v104, sizeof(v141));
    OUTLINED_FUNCTION_50_2(3);
    v57 = sub_2753B7518();
    v58 = v16;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v17, v18, v19);
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v20);
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    v21 = v107;
    OUTLINED_FUNCTION_50_2(5);
    v56 = sub_2753B7518();
    v94 = v22;
    OUTLINED_FUNCTION_50_2(6);
    v92 = sub_2753B7518();
    v93 = v23;
    OUTLINED_FUNCTION_50_2(7);
    v90 = sub_2753B7518();
    v91 = v24;
    v55 = v21;
    OUTLINED_FUNCTION_50_2(8);
    v88 = sub_2753B7518();
    v89 = v25;
    OUTLINED_FUNCTION_50_2(9);
    v98 = sub_2753B7548();
    v139 = v26 & 1;
    OUTLINED_FUNCTION_8_4(10);
    v97 = sub_2753B7568();
    v137 = v27 & 1;
    sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_134_2();
    sub_2753B7558();
    v87 = v107;
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_134_2();
    sub_2753B7558();
    v86 = v107;
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_134_2();
    sub_2753B7558();
    v85 = v107;
    OUTLINED_FUNCTION_8_4(14);
    v95 = sub_2753B7528();
    OUTLINED_FUNCTION_8_4(15);
    v67 = sub_2753B7528();
    OUTLINED_FUNCTION_8_4(16);
    v66 = sub_2753B7528();
    OUTLINED_FUNCTION_8_4(17);
    v65 = sub_2753B7528();
    OUTLINED_FUNCTION_8_4(18);
    v64 = sub_2753B7528();
    OUTLINED_FUNCTION_8_4(19);
    v68 = sub_2753B7528();
    OUTLINED_FUNCTION_8_4(20);
    v77 = sub_2753B7518();
    v82 = v28;
    OUTLINED_FUNCTION_8_4(21);
    v79 = sub_2753B7548();
    v135 = v29 & 1;
    OUTLINED_FUNCTION_8_4(22);
    v78 = sub_2753B7518();
    v83 = v30;
    OUTLINED_FUNCTION_8_4(23);
    v81 = sub_2753B7548();
    v133 = v31 & 1;
    OUTLINED_FUNCTION_8_4(24);
    v80 = sub_2753B7518();
    v84 = v32;
    v102[151] = 25;
    sub_27534B76C();
    OUTLINED_FUNCTION_134_2();
    sub_2753B7558();
    memcpy(v101, v103, sizeof(v101));
    memcpy(v102, v131, 0x91uLL);
    sub_27534B488(v102, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v131, v101, 0x91uLL);
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v33, v34, v35);
    LOBYTE(v99[0]) = 26;
    sub_27534B7C0();
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_134_2();
    sub_2753B7558();
    v70 = v107;
    OUTLINED_FUNCTION_8_4(27);
    v72 = sub_2753B7518();
    v74 = v36;
    OUTLINED_FUNCTION_8_4(28);
    v76 = sub_2753B7548();
    v130 = v37 & 1;
    v100 = 29;
    OUTLINED_FUNCTION_134_2();
    v38 = sub_2753B7518();
    v40 = v39;
    v41 = OUTLINED_FUNCTION_38_1();
    v42(v41);
    v99[0] = v61;
    v99[1] = v62;
    v99[2] = v59;
    v99[3] = v60;
    OUTLINED_FUNCTION_408();
    *(&v99[20] + 1) = *v140;
    HIDWORD(v99[20]) = *&v140[3];
    v99[21] = v57;
    v99[22] = v58;
    v99[23] = v55;
    v99[24] = v56;
    v99[25] = v94;
    v99[26] = v92;
    v99[27] = v93;
    v99[28] = v90;
    v99[29] = v91;
    v99[30] = v88;
    v99[31] = v89;
    v99[32] = v98;
    v63 = v139;
    LOBYTE(v99[33]) = v139;
    OUTLINED_FUNCTION_133_2();
    HIDWORD(v99[33]) = v43;
    v99[34] = v97;
    v54 = v137;
    LOBYTE(v99[35]) = v137;
    OUTLINED_FUNCTION_132_1();
    HIDWORD(v99[35]) = v44;
    v99[36] = v87;
    v99[37] = v86;
    v99[38] = v85;
    LOBYTE(v99[39]) = v95;
    BYTE1(v99[39]) = v67;
    BYTE2(v99[39]) = v66;
    BYTE3(v99[39]) = v65;
    BYTE4(v99[39]) = v64;
    BYTE5(v99[39]) = v68;
    v99[40] = v77;
    v99[41] = v82;
    v99[42] = v79;
    OUTLINED_FUNCTION_267();
    OUTLINED_FUNCTION_266();
    v45 = v135;
    LOBYTE(v99[43]) = v135;
    HIDWORD(v99[43]) = v134;
    v99[44] = v78;
    v99[45] = v83;
    v99[46] = v81;
    HIDWORD(v99[47]) = v132;
    v46 = v133;
    LOBYTE(v99[47]) = v133;
    v99[48] = v80;
    v99[49] = v84;
    memcpy(&v99[50], v131, 0x91uLL);
    OUTLINED_FUNCTION_131_2();
    HIDWORD(v99[68]) = v47;
    v99[69] = v70;
    v99[70] = v72;
    v99[71] = v74;
    v99[72] = v76;
    v53 = v130;
    LOBYTE(v99[73]) = v130;
    OUTLINED_FUNCTION_130_0();
    HIDWORD(v99[73]) = v48;
    v99[74] = v38;
    v99[75] = v40;
    memcpy(v5, v99, 0x260uLL);
    sub_27534B988(v99, &v107);
    __swift_destroy_boxed_opaque_existential_1(v3);
    v107 = v61;
    v108 = v62;
    v109 = v59;
    v110 = v60;
    OUTLINED_FUNCTION_408();
    v112 = v57;
    v113 = v58;
    v114 = v55;
    v115 = v56;
    *v111 = *v140;
    *&v111[3] = *&v140[3];
    OUTLINED_FUNCTION_186_0();
    v116 = v63;
    OUTLINED_FUNCTION_133_2();
    *&v117[3] = v49;
    v118 = v97;
    v119 = v54;
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_137_2(v50);
    v120 = v45;
    OUTLINED_FUNCTION_267();
    OUTLINED_FUNCTION_324(v134);
    v121 = v46;
    OUTLINED_FUNCTION_266();
    OUTLINED_FUNCTION_329(v132);
    OUTLINED_FUNCTION_131_2();
    v122 = v51;
    v123 = v70;
    v124 = v72;
    v125 = v74;
    v126 = v76;
    v127 = v53;
    OUTLINED_FUNCTION_130_0();
    v128 = v52;
    *&v129 = v38;
    *(&v129 + 1) = v40;
  }

  sub_27534B958(&v107);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.MusicVideoAttributes.albumName.setter()
{
  OUTLINED_FUNCTION_96();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.artistName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_313();
  return OUTLINED_FUNCTION_360(v3, v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
}

void *MediaAPI.MusicVideoAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  sub_27534B488(v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_309();
}

uint64_t MediaAPI.MusicVideoAttributes.audioLocale.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.audioTraits.setter()
{
  result = OUTLINED_FUNCTION_481();
  *(v1 + 184) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.composerName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.contentProvider.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.contentRating.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.copyright.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.editorialNotes.setter(uint64_t a1)
{

  *(v1 + 288) = a1;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.extendedAssetUrls.setter(uint64_t a1)
{

  *(v1 + 296) = a1;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.genreNames.setter(uint64_t a1)
{

  *(v1 + 304) = a1;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.immersiveUrl.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 320) = v2;
  *(v1 + 328) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.isrc.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 336) = v2;
  *(v1 + 344) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 352) = v2;
  *(v1 + 360) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  v2 = memcpy(v1, (v0 + 368), 0x91uLL);
  v3 = OUTLINED_FUNCTION_375(v2, (v0 + 368));
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
}

void *MediaAPI.MusicVideoAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 368), 0x91uLL);
  sub_27534B488(v3, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 368));
}

uint64_t MediaAPI.MusicVideoAttributes.previews.setter(uint64_t a1)
{

  *(v1 + 520) = a1;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.releaseDate.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 528) = v2;
  *(v1 + 536) = v0;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.trackNumber.setter(uint64_t result, char a2)
{
  *(v2 + 544) = result;
  *(v2 + 552) = a2 & 1;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.videoTraits.setter(uint64_t a1)
{

  *(v1 + 560) = a1;
  return result;
}

uint64_t MediaAPI.MusicVideoAttributes.workName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 568) = v2;
  *(v1 + 576) = v0;
  return result;
}

uint64_t sub_275336418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x636F4C6F69647561 && a2 == 0xEB00000000656C61;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7265736F706D6F63 && a2 == 0xEC000000656D614ELL;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x50746E65746E6F63 && a2 == 0xEF72656469766F72;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x626D754E63736964 && a2 == 0xEA00000000007265;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000002753B95E0 == a2;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000011 && 0x80000002753B9320 == a2;
                          if (v17 || (sub_2753B7718() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                            if (v18 || (sub_2753B7718() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x4B34736168 && a2 == 0xE500000000000000;
                              if (v19 || (sub_2753B7718() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                                if (v20 || (sub_2753B7718() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 1668445033 && a2 == 0xE400000000000000;
                                  if (v21 || (sub_2753B7718() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                    if (v22 || (sub_2753B7718() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                                      if (v23 || (sub_2753B7718() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x7377656976657270 && a2 == 0xE800000000000000;
                                        if (v24 || (sub_2753B7718() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                          if (v25 || (sub_2753B7718() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6D754E6B63617274 && a2 == 0xEB00000000726562;
                                            if (v26 || (sub_2753B7718() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x6172546F65646976 && a2 == 0xEB00000000737469;
                                              if (v27 || (sub_2753B7718() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else if (a1 == 0x656D614E6B726F77 && a2 == 0xE800000000000000)
                                              {

                                                return 23;
                                              }

                                              else
                                              {
                                                v29 = sub_2753B7718();

                                                if (v29)
                                                {
                                                  return 23;
                                                }

                                                else
                                                {
                                                  return 24;
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

uint64_t sub_275336B54(char a1)
{
  result = 0x6D614E6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x614E747369747261;
      break;
    case 2:
      result = 0x6B726F77747261;
      break;
    case 3:
      result = 0x636F4C6F69647561;
      break;
    case 4:
      v3 = 1768191329;
      goto LABEL_23;
    case 5:
      result = 0x7265736F706D6F63;
      break;
    case 6:
      result = 0x50746E65746E6F63;
      break;
    case 7:
      result = 0x52746E65746E6F63;
      break;
    case 8:
      result = 0x6867697279706F63;
      break;
    case 9:
      result = 0x626D754E63736964;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6169726F74696465;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x6D614E65726E6567;
      break;
    case 14:
      result = 0x4B34736168;
      break;
    case 15:
      result = 0x76697372656D6D69;
      break;
    case 16:
      result = 1668445033;
      break;
    case 17:
      result = 1701667182;
      break;
    case 18:
      result = 0x6172615079616C70;
      break;
    case 19:
      result = 0x7377656976657270;
      break;
    case 20:
      result = 0x44657361656C6572;
      break;
    case 21:
      result = 0x6D754E6B63617274;
      break;
    case 22:
      v3 = 1701079414;
LABEL_23:
      result = v3 | 0x6172546F00000000;
      break;
    case 23:
      result = 0x656D614E6B726F77;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275336E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275336418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275336EA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275336B4C();
  *a1 = result;
  return result;
}

uint64_t sub_275336ED0(uint64_t a1)
{
  v2 = sub_27534B9C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275336F0C(uint64_t a1)
{
  v2 = sub_27534B9C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.MusicVideoAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_236_0();
  sub_27534DC8C(0, v3, v4, v5, MEMORY[0x277D84538]);
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  v9 = v8;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_179_0();
  memcpy(v11, v12, v13);
  v29 = v0[23];
  v28 = v0[36];
  v26 = v0[38];
  v27 = v0[37];
  memcpy(v37, v0 + 46, 0x91uLL);
  v25 = v0[70];
  v14 = OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_67_0(v14, v15);
  sub_27534B9C0();
  OUTLINED_FUNCTION_382();
  OUTLINED_FUNCTION_340();
  sub_2753B7808();
  LOBYTE(v33[0]) = 0;
  sub_2753B75F8();
  if (v1)
  {
    (*(v9 + 8))(v2, v7);
  }

  else
  {
    OUTLINED_FUNCTION_232_0(1);
    OUTLINED_FUNCTION_89_2();
    sub_2753B7658();
    memcpy(v35, v36, sizeof(v35));
    v34[135] = 2;
    sub_27534B40C(v36, v33, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    sub_2753B7638();
    memcpy(v34, v35, 0x81uLL);
    sub_27534B488(v34, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    OUTLINED_FUNCTION_232_0(3);
    OUTLINED_FUNCTION_89_2();
    sub_2753B75F8();
    v33[0] = v29;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v16, v17, v18);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v19);
    OUTLINED_FUNCTION_458();
    sub_2753B7638();
    OUTLINED_FUNCTION_232_0(5);
    OUTLINED_FUNCTION_89_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_232_0(6);
    OUTLINED_FUNCTION_89_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_232_0(7);
    OUTLINED_FUNCTION_89_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_232_0(8);
    OUTLINED_FUNCTION_89_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_232_0(9);
    OUTLINED_FUNCTION_89_2();
    sub_2753B7628();
    OUTLINED_FUNCTION_232_0(10);
    OUTLINED_FUNCTION_89_2();
    sub_2753B7648();
    v33[0] = v28;
    sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_246();
    sub_2753B7638();
    v33[0] = v27;
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_246();
    sub_2753B7638();
    v33[0] = v26;
    v32[0] = 13;
    v20 = OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_465(v20, v21);
    LOBYTE(v33[0]) = 14;
    sub_2753B7608();
    OUTLINED_FUNCTION_232_0(15);
    OUTLINED_FUNCTION_350();
    sub_2753B75F8();
    OUTLINED_FUNCTION_232_0(16);
    OUTLINED_FUNCTION_350();
    sub_2753B75F8();
    OUTLINED_FUNCTION_232_0(17);
    OUTLINED_FUNCTION_350();
    sub_2753B75F8();
    OUTLINED_FUNCTION_331(v33);
    v32[151] = 18;
    sub_27534B40C(v37, v32, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    sub_2753B7638();
    memcpy(v32, v33, 0x91uLL);
    sub_27534B488(v32, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v22, v23, v24);
    sub_27534B5A0();
    sub_2753B7638();
    OUTLINED_FUNCTION_346(20);
    OUTLINED_FUNCTION_350();
    sub_2753B75F8();
    OUTLINED_FUNCTION_346(21);
    OUTLINED_FUNCTION_350();
    sub_2753B7628();
    v31 = v25;
    v30 = 22;
    OUTLINED_FUNCTION_465(&v31, &v30);
    OUTLINED_FUNCTION_346(23);
    OUTLINED_FUNCTION_350();
    sub_2753B75F8();
    (*(v9 + 8))(0, v7);
  }

  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.MusicVideoAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_236_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30();
  sub_27534B348(v139);
  memcpy(v138, v139, sizeof(v138));
  sub_27534B690(&v140);
  OUTLINED_FUNCTION_331(v132);
  v70 = v2;
  v10 = OUTLINED_FUNCTION_298();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_27534B9C0();
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_184_0();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_247();
    OUTLINED_FUNCTION_356();
    __swift_destroy_boxed_opaque_existential_1(v2);

    OUTLINED_FUNCTION_479(v81);
    sub_27534B488(v81, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);

    OUTLINED_FUNCTION_478(v82);
    sub_27534B488(v82, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  }

  else
  {
    v66 = v4;
    LOBYTE(v82[0]) = 0;
    OUTLINED_FUNCTION_116_2();
    v12 = sub_2753B7518();
    v65 = v13;
    OUTLINED_FUNCTION_30_2(1);
    v14 = sub_2753B7578();
    v67 = v15;
    v129[135] = 2;
    sub_27534B350();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    memcpy(v128, v130, sizeof(v128));
    OUTLINED_FUNCTION_479(v129);
    sub_27534B488(v129, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v138, v128, sizeof(v138));
    OUTLINED_FUNCTION_30_2(3);
    v62 = sub_2753B7518();
    v64 = v16;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v17, v18, v19);
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v20);
    OUTLINED_FUNCTION_345();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    v141 = v82[0];
    OUTLINED_FUNCTION_30_2(5);
    v61 = sub_2753B7518();
    v80 = v21;
    OUTLINED_FUNCTION_30_2(6);
    v60 = sub_2753B7518();
    v79 = v22;
    OUTLINED_FUNCTION_30_2(7);
    v59 = sub_2753B7518();
    v78 = v23;
    OUTLINED_FUNCTION_30_2(8);
    v58 = sub_2753B7518();
    v57 = v14;
    v77 = v24;
    OUTLINED_FUNCTION_30_2(9);
    v25 = sub_2753B7548();
    v136 = v26 & 1;
    OUTLINED_FUNCTION_29_2(10);
    v56 = sub_2753B7568();
    v135 = v27 & 1;
    sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_345();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    v76 = v82[0];
    OUTLINED_FUNCTION_345();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    v75 = v82[0];
    OUTLINED_FUNCTION_345();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    v74 = v82[0];
    OUTLINED_FUNCTION_29_2(14);
    v55 = sub_2753B7528();
    OUTLINED_FUNCTION_29_2(15);
    v54 = sub_2753B7518();
    v73 = v28;
    OUTLINED_FUNCTION_29_2(16);
    v53 = sub_2753B7518();
    v72 = v29;
    OUTLINED_FUNCTION_29_2(17);
    v52 = sub_2753B7518();
    v71 = v30;
    v126[151] = 18;
    sub_27534B76C();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    memcpy(v125, v127, sizeof(v125));
    OUTLINED_FUNCTION_478(v126);
    sub_27534B488(v126, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v132, v125, 0x91uLL);
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v31, v32, v33);
    sub_27534B7C0();
    OUTLINED_FUNCTION_345();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    v34 = v82[0];
    OUTLINED_FUNCTION_29_2(20);
    v51 = sub_2753B7518();
    v36 = v35;
    OUTLINED_FUNCTION_29_2(21);
    v50 = sub_2753B7548();
    v131 = v37 & 1;
    LOBYTE(v81[0]) = 22;
    OUTLINED_FUNCTION_345();
    OUTLINED_FUNCTION_116_2();
    sub_2753B7558();
    v38 = v82[0];
    v124 = 23;
    OUTLINED_FUNCTION_116_2();
    v63 = sub_2753B7518();
    v49 = v39;
    v40 = OUTLINED_FUNCTION_64_2();
    v41(v40);
    v81[0] = v12;
    v81[1] = v65;
    v81[2] = v57;
    v81[3] = v67;
    OUTLINED_FUNCTION_479(&v81[4]);
    *(&v81[20] + 1) = *v137;
    HIDWORD(v81[20]) = *&v137[3];
    v81[21] = v62;
    v81[22] = v64;
    v81[23] = v141;
    v81[24] = v61;
    v81[25] = v80;
    v81[26] = v60;
    v81[27] = v79;
    v81[28] = v59;
    v81[29] = v78;
    v81[30] = v58;
    v81[31] = v77;
    v81[32] = v25;
    v69 = v136;
    LOBYTE(v81[33]) = v136;
    OUTLINED_FUNCTION_451();
    HIDWORD(v81[33]) = v42;
    v81[34] = v56;
    v68 = v135;
    LOBYTE(v81[35]) = v135;
    *(&v81[35] + 1) = *v134;
    HIDWORD(v81[35]) = *&v134[3];
    v81[36] = v76;
    v81[37] = v75;
    v81[38] = v74;
    LOBYTE(v81[39]) = v55;
    *(&v81[39] + 1) = *v133;
    HIDWORD(v81[39]) = *&v133[3];
    v81[40] = v54;
    v81[41] = v73;
    v81[42] = v53;
    v81[43] = v72;
    v81[44] = v52;
    v81[45] = v71;
    OUTLINED_FUNCTION_478(&v81[46]);
    OUTLINED_FUNCTION_125_2((&v81[64] + 1));
    HIDWORD(v81[64]) = v43;
    v81[65] = v34;
    v81[66] = v51;
    v81[67] = v36;
    v81[68] = v50;
    v48 = v131;
    LOBYTE(v81[69]) = v131;
    OUTLINED_FUNCTION_71_2((&v81[69] + 1));
    HIDWORD(v81[69]) = v44;
    v81[70] = v38;
    v81[71] = v63;
    v81[72] = v49;
    memcpy(v66, v81, 0x248uLL);
    sub_27534BA14(v81, v82);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v82[0] = v12;
    v82[1] = v65;
    v82[2] = v57;
    v82[3] = v67;
    OUTLINED_FUNCTION_479(&v83);
    *v84 = *v137;
    *&v84[3] = *&v137[3];
    v85 = v62;
    v86 = v64;
    v87 = v141;
    v88 = v61;
    v89 = v80;
    v90 = v60;
    v91 = v79;
    v92 = v59;
    v93 = v78;
    v94 = v58;
    v95 = v77;
    v96 = v25;
    v97 = v69;
    OUTLINED_FUNCTION_451();
    v98 = v45;
    v99 = v56;
    v100 = v68;
    *v101 = *v134;
    *&v101[3] = *&v134[3];
    v102 = v76;
    v103 = v75;
    v104 = v74;
    v105 = v55;
    *v106 = *v133;
    *&v106[3] = *&v133[3];
    v107 = v54;
    v108 = v73;
    v109 = v53;
    v110 = v72;
    v111 = v52;
    v112 = v71;
    OUTLINED_FUNCTION_478(&v113);
    OUTLINED_FUNCTION_125_2(v114);
    *&v114[3] = v46;
    v115 = v34;
    v116 = v51;
    v117 = v36;
    v118 = v50;
    v119 = v48;
    OUTLINED_FUNCTION_71_2(v120);
    *&v120[3] = v47;
    v121 = v38;
    v122 = v63;
    v123 = v49;
    sub_27534BA4C(v82);
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.albumName.setter()
{
  OUTLINED_FUNCTION_96();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.artistName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_313();
  return OUTLINED_FUNCTION_360(v3, v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
}

void *MediaAPI.LibraryMusicVideoAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_179_0();
  memcpy(v0, v1, v2);
  sub_27534B488(v4, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_309();
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.contentRating.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.durationInMillis.setter(uint64_t result, char a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.genreNames.setter(uint64_t a1)
{

  *(v1 + 200) = a1;
  return result;
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  v2 = memcpy(v1, (v0 + 224), 0x91uLL);
  v3 = OUTLINED_FUNCTION_375(v2, (v0 + 224));
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
}

void *MediaAPI.LibraryMusicVideoAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 224), 0x91uLL);
  sub_27534B488(v3, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 224));
}

uint64_t MediaAPI.LibraryMusicVideoAttributes.releaseDate.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 376) = v2;
  *(v1 + 384) = v0;
  return result;
}

uint64_t sub_2753386A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000002753B95E0 == a2;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1701667182 && a2 == 0xE400000000000000;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6D754E6B63617274 && a2 == 0xEB00000000726562)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_2753B7718();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_2753389D8(char a1)
{
  result = 0x6D614E6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x614E747369747261;
      break;
    case 2:
      result = 0x6B726F77747261;
      break;
    case 3:
      result = 0x52746E65746E6F63;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6D614E65726E6567;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x6172615079616C70;
      break;
    case 8:
      result = 0x44657361656C6572;
      break;
    case 9:
      result = 0x6D754E6B63617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275338B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2753386A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275338B74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2753389D0();
  *a1 = result;
  return result;
}

uint64_t sub_275338B9C(uint64_t a1)
{
  v2 = sub_27534BA7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275338BD8(uint64_t a1)
{
  v2 = sub_27534BA7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.LibraryMusicVideoAttributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_60();
  v25 = v24;
  OUTLINED_FUNCTION_206_0();
  sub_27534DC8C(0, v26, v27, v28, MEMORY[0x277D84538]);
  v30 = v29;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_179_0();
  memcpy(v32, v33, v34);
  v44 = *(v22 + 200);
  memcpy(v50, (v22 + 224), 0x91uLL);
  OUTLINED_FUNCTION_67_0(v25, v25[3]);
  sub_27534BA7C();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_323();
  sub_2753B7808();
  LOBYTE(v46[0]) = 0;
  sub_2753B75F8();
  if (!v23)
  {
    OUTLINED_FUNCTION_318(1);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    memcpy(v48, v49, sizeof(v48));
    OUTLINED_FUNCTION_385();
    sub_27534B40C(v49, v46, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    OUTLINED_FUNCTION_442();
    OUTLINED_FUNCTION_77_2();
    sub_2753B7638();
    OUTLINED_FUNCTION_470(v47);
    sub_27534B488(v47, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    OUTLINED_FUNCTION_318(3);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_318(4);
    OUTLINED_FUNCTION_58_1();
    sub_2753B7648();
    v46[0] = v44;
    v45[0] = 5;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v35, v36, v37);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v38);
    OUTLINED_FUNCTION_440();
    OUTLINED_FUNCTION_77_2();
    sub_2753B7638();
    OUTLINED_FUNCTION_318(6);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_331(v46);
    sub_27534B40C(v50, v45, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    OUTLINED_FUNCTION_440();
    OUTLINED_FUNCTION_77_2();
    sub_2753B7638();
    v41 = OUTLINED_FUNCTION_432();
    memcpy(v41, v42, v43);
    sub_27534B488(v45, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    OUTLINED_FUNCTION_243(8);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_243(9);
    OUTLINED_FUNCTION_58_1();
    sub_2753B7628();
  }

  v39 = OUTLINED_FUNCTION_113_2();
  v40(v39, v30);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.LibraryMusicVideoAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_334();
  v4 = v3;
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  v39 = v9;
  OUTLINED_FUNCTION_2_0();
  v11 = v10;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14();
  sub_27534B348(v85);
  memcpy(v84, v85, sizeof(v84));
  v82 = 1;
  sub_27534B690(&v86);
  OUTLINED_FUNCTION_331(v80);
  v78 = 1;
  v13 = v2[3];
  v14 = v2[4];
  v48 = v2;
  OUTLINED_FUNCTION_115_2(v2);
  sub_27534BA7C();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_169_0();
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_461();
    __swift_destroy_boxed_opaque_existential_1(v2);
    v58 = 0;
    v59 = 0;
    v60 = v13;
    v61 = v1;
    OUTLINED_FUNCTION_377(v62);
    *v63 = *v83;
    *&v63[3] = *&v83[3];
    v64 = v2;
    v65 = v14;
    v66 = v0;
    v67 = v82;
    *v68 = *v81;
    *&v68[3] = *&v81[3];
    v69 = v47;
    v70 = v45;
    v71 = v49;
    OUTLINED_FUNCTION_469(v72);
    OUTLINED_FUNCTION_258(v73);
    *&v73[3] = v16;
    v74 = v41;
    v75 = v43;
    v76 = 0;
    v77 = v78;
  }

  else
  {
    v15 = v4;
    LOBYTE(v58) = 0;
    v37 = sub_2753B7518();
    v38 = v17;
    OUTLINED_FUNCTION_69_2(1);
    v35 = sub_2753B7518();
    v36 = v18;
    v56[135] = 2;
    sub_27534B350();
    OUTLINED_FUNCTION_389();
    OUTLINED_FUNCTION_357();
    sub_2753B7558();
    memcpy(v55, v57, sizeof(v55));
    OUTLINED_FUNCTION_377(v56);
    sub_27534B488(v56, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v84, v55, sizeof(v84));
    OUTLINED_FUNCTION_69_2(3);
    OUTLINED_FUNCTION_357();
    v33 = sub_2753B7518();
    v34 = v19;
    OUTLINED_FUNCTION_69_2(4);
    v32 = sub_2753B7568();
    v82 = v20 & 1;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v21, v22, v23);
    LOBYTE(v51[0]) = 5;
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v24);
    OUTLINED_FUNCTION_357();
    sub_2753B7558();
    v25 = v58;
    OUTLINED_FUNCTION_69_2(6);
    v46 = sub_2753B7518();
    v50 = v26;
    v53[151] = 7;
    sub_27534B76C();
    OUTLINED_FUNCTION_389();
    OUTLINED_FUNCTION_357();
    sub_2753B7558();
    memcpy(v52, v54, sizeof(v52));
    OUTLINED_FUNCTION_469(v53);
    sub_27534B488(v53, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v80, v52, sizeof(v80));
    OUTLINED_FUNCTION_69_2(8);
    OUTLINED_FUNCTION_357();
    v42 = sub_2753B7518();
    v44 = v27;
    OUTLINED_FUNCTION_443();
    v28 = sub_2753B7548();
    v30 = v29;
    (*(v11 + 8))(v1, v39);
    v78 = v30 & 1;
    v51[0] = v37;
    v51[1] = v38;
    v51[2] = v35;
    v51[3] = v36;
    OUTLINED_FUNCTION_377(&v51[4]);
    *(&v51[20] + 1) = *v83;
    HIDWORD(v51[20]) = *&v83[3];
    v51[21] = v33;
    v51[22] = v34;
    v51[23] = v32;
    v40 = v82;
    LOBYTE(v51[24]) = v82;
    *(&v51[24] + 1) = *v81;
    HIDWORD(v51[24]) = *&v81[3];
    v51[25] = v25;
    v51[26] = v46;
    v51[27] = v50;
    OUTLINED_FUNCTION_469(&v51[28]);
    *(&v51[46] + 1) = *v79;
    HIDWORD(v51[46]) = *&v79[3];
    v51[47] = v42;
    v51[48] = v44;
    v51[49] = v28;
    v31 = v78;
    LOBYTE(v51[50]) = v78;
    memcpy(v15, v51, 0x191uLL);
    sub_27534BB00(v51, &v58);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v58 = v37;
    v59 = v38;
    v60 = v35;
    v61 = v36;
    OUTLINED_FUNCTION_377(v62);
    *v63 = *v83;
    *&v63[3] = *&v83[3];
    v64 = v33;
    v65 = v34;
    v66 = v32;
    v67 = v40;
    *v68 = *v81;
    *&v68[3] = *&v81[3];
    v69 = v25;
    v70 = v46;
    v71 = v50;
    OUTLINED_FUNCTION_469(v72);
    *v73 = *v79;
    *&v73[3] = *&v79[3];
    v74 = v42;
    v75 = v44;
    v76 = v28;
    v77 = v31;
  }

  sub_27534BAD0(&v58);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.AlbumAttributes.artistName.setter()
{
  OUTLINED_FUNCTION_96();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_339();
  memcpy(v2, v3, v4);
  v5 = memcpy(v0, (v1 + 16), 0x81uLL);
  return OUTLINED_FUNCTION_360(v5, v6, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
}

void *MediaAPI.AlbumAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_339();
  memcpy(v1, v2, v3);
  sub_27534B488(v5, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_362((v0 + 16));
}

uint64_t MediaAPI.AlbumAttributes.audioTraits.setter(uint64_t a1)
{

  *(v1 + 152) = a1;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.copyright.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.contentRating.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.editorialNotes.setter(uint64_t a1)
{

  *(v1 + 192) = a1;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.genreNames.setter(uint64_t a1)
{

  *(v1 + 200) = a1;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 216) = v2;
  *(v1 + 224) = v0;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  v2 = memcpy(v1, (v0 + 232), 0x91uLL);
  v3 = OUTLINED_FUNCTION_375(v2, (v0 + 232));
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
}

void *MediaAPI.AlbumAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 232), 0x91uLL);
  sub_27534B488(v3, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 232));
}

uint64_t MediaAPI.AlbumAttributes.recordLabel.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 384) = v2;
  *(v1 + 392) = v0;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.releaseDate.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 400) = v2;
  *(v1 + 408) = v0;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.trackCount.setter(uint64_t result, char a2)
{
  *(v2 + 416) = result;
  *(v2 + 424) = a2 & 1;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.upc.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 432) = v2;
  *(v1 + 440) = v0;
  return result;
}

uint64_t MediaAPI.AlbumAttributes.versionHash.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 448) = v2;
  *(v1 + 456) = v0;
  return result;
}

uint64_t sub_275339E5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C69706D6F437369 && a2 == 0xED00006E6F697461;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x656C706D6F437369 && a2 == 0xEA00000000006574;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x80000002753B9620 == a2;
                    if (v14 || (sub_2753B7718() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x80000002753B9640 == a2;
                      if (v15 || (sub_2753B7718() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6C65726572507369 && a2 == 0xEC00000065736165;
                        if (v16 || (sub_2753B7718() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x656C676E69537369 && a2 == 0xE800000000000000;
                          if (v17 || (sub_2753B7718() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 1701667182 && a2 == 0xE400000000000000;
                            if (v18 || (sub_2753B7718() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                              if (v19 || (sub_2753B7718() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x614C64726F636572 && a2 == 0xEB000000006C6562;
                                if (v20 || (sub_2753B7718() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                  if (v21 || (sub_2753B7718() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL;
                                    if (v22 || (sub_2753B7718() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 6516853 && a2 == 0xE300000000000000;
                                      if (v23 || (sub_2753B7718() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0x486E6F6973726576 && a2 == 0xEB00000000687361)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_2753B7718();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
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

uint64_t sub_27533A474(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      return 0x6B726F77747261;
    case 2:
      v3 = 0x546F69647561;
      goto LABEL_10;
    case 3:
      return 0x6867697279706F63;
    case 4:
      return 0x52746E65746E6F63;
    case 5:
      return 0x6169726F74696465;
    case 6:
      return 0x6D614E65726E6567;
    case 7:
      return 0x6C69706D6F437369;
    case 8:
      v4 = 0x706D6F437369;
      goto LABEL_21;
    case 9:
      return 0xD000000000000014;
    case 10:
      return 0xD000000000000013;
    case 11:
      return 0x6C65726572507369;
    case 12:
      v4 = 0x676E69537369;
LABEL_21:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x656C000000000000;
      break;
    case 13:
      result = 1701667182;
      break;
    case 14:
      v3 = 0x615079616C70;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      break;
    case 15:
      result = 0x614C64726F636572;
      break;
    case 16:
      result = 0x44657361656C6572;
      break;
    case 17:
      result = 0x756F436B63617274;
      break;
    case 18:
      result = 6516853;
      break;
    case 19:
      result = 0x486E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27533A718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275339E5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27533A740@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27533A46C();
  *a1 = result;
  return result;
}

uint64_t sub_27533A768(uint64_t a1)
{
  v2 = sub_27534BB38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27533A7A4(uint64_t a1)
{
  v2 = sub_27534BB38();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.AlbumAttributes.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v4 = v3;
  OUTLINED_FUNCTION_228_0();
  sub_27534DC8C(0, v5, v6, v7, MEMORY[0x277D84538]);
  v9 = v8;
  OUTLINED_FUNCTION_2_0();
  v11 = v10;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_339();
  memcpy(v13, v14, v15);
  v24 = v0[19];
  v23 = v0[24];
  v22 = v0[25];
  memcpy(v30, v0 + 29, 0x91uLL);
  OUTLINED_FUNCTION_67_0(v4, v4[3]);
  sub_27534BB38();
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_246();
  sub_2753B7808();
  LOBYTE(v26[0]) = 0;
  OUTLINED_FUNCTION_134_2();
  sub_2753B75F8();
  if (v1)
  {
    v20 = OUTLINED_FUNCTION_120_1();
    v21(v20, v9);
  }

  else
  {
    memcpy(v28, v29, sizeof(v28));
    v27[135] = 1;
    sub_27534B40C(v29, v26, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    OUTLINED_FUNCTION_143_1();
    sub_2753B7638();
    memcpy(v27, v28, 0x81uLL);
    sub_27534B488(v27, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    v26[0] = v24;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v16, v17, v18);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v19);
    OUTLINED_FUNCTION_372();
    OUTLINED_FUNCTION_143_1();
    sub_2753B7638();
    LOBYTE(v26[0]) = 3;
    OUTLINED_FUNCTION_143_1();
    sub_2753B75F8();
    LOBYTE(v26[0]) = 4;
    OUTLINED_FUNCTION_143_1();
    sub_2753B75F8();
    v26[0] = v23;
    sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_10_4(&qword_2809C0C68);
    OUTLINED_FUNCTION_372();
    OUTLINED_FUNCTION_143_1();
    sub_2753B7638();
    v26[0] = v22;
    v25[0] = 6;
    OUTLINED_FUNCTION_372();
    OUTLINED_FUNCTION_143_1();
    sub_2753B7638();
    OUTLINED_FUNCTION_342(7);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7608();
    OUTLINED_FUNCTION_342(8);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7608();
    OUTLINED_FUNCTION_342(9);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7608();
    OUTLINED_FUNCTION_342(10);
    OUTLINED_FUNCTION_143_1();
    sub_2753B7608();
    OUTLINED_FUNCTION_342(11);
    sub_2753B7608();
    OUTLINED_FUNCTION_342(12);
    sub_2753B7608();
    LOBYTE(v26[0]) = 13;
    OUTLINED_FUNCTION_126_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_331(v26);
    v25[151] = 14;
    sub_27534B40C(v30, v25, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    sub_2753B7638();
    memcpy(v25, v26, 0x91uLL);
    sub_27534B488(v25, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    OUTLINED_FUNCTION_387(15);
    OUTLINED_FUNCTION_126_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_387(16);
    OUTLINED_FUNCTION_126_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_387(17);
    OUTLINED_FUNCTION_126_2();
    sub_2753B7628();
    OUTLINED_FUNCTION_387(18);
    OUTLINED_FUNCTION_126_2();
    sub_2753B75F8();
    OUTLINED_FUNCTION_387(19);
    OUTLINED_FUNCTION_126_2();
    sub_2753B75F8();
    (*(v11 + 8))(v2, v9);
  }

  OUTLINED_FUNCTION_61();
}

void MediaAPI.AlbumAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_334();
  v4 = v3;
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_317(v5, v6, v7, v8, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_70_2();
  sub_27534B348(v101);
  memcpy(v100, v101, sizeof(v100));
  sub_27534B690(&v102);
  OUTLINED_FUNCTION_331(v98);
  v96 = 1;
  OUTLINED_FUNCTION_148_1();
  sub_27534BB38();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_268();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_447();
    OUTLINED_FUNCTION_138_2();
    OUTLINED_FUNCTION_86_0();
    __swift_destroy_boxed_opaque_existential_1(v2);
    v73 = 0;
    v74 = 0;
    OUTLINED_FUNCTION_476(v75);
    *v76 = *v99;
    *&v76[3] = *&v99[3];
    v77 = v1;
    v78 = v2;
    v79 = 0;
    OUTLINED_FUNCTION_341();
    v80 = 2;
    v81 = v0;
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_474(v82);
    *v83 = *v97;
    *&v83[3] = *&v97[3];
    v84 = v42;
    v85 = v50;
    v86 = v44;
    v87 = v52;
    v88 = v46;
    v89 = v96;
    OUTLINED_FUNCTION_258(v90);
    v91 = v10;
    v92 = v48;
    v93 = v54;
    v94 = 0;
    v95 = 0;
  }

  else
  {
    LOBYTE(v73) = 0;
    v39 = sub_2753B7518();
    v40 = v11;
    v71[135] = 1;
    sub_27534B350();
    OUTLINED_FUNCTION_389();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7558();
    memcpy(v70, v72, sizeof(v70));
    OUTLINED_FUNCTION_476(v71);
    sub_27534B488(v71, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v100, v70, sizeof(v100));
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v12, v13, v14);
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v15);
    OUTLINED_FUNCTION_325();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7558();
    v38 = v73;
    OUTLINED_FUNCTION_85_2(3);
    v36 = sub_2753B7518();
    v37 = v16;
    OUTLINED_FUNCTION_85_2(4);
    v57 = sub_2753B7518();
    v58 = v17;
    sub_27534DB84(0, &qword_2809C0C60, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_9_3(&qword_2809C0C78);
    OUTLINED_FUNCTION_77_2();
    sub_2753B7558();
    v18 = v73;
    LOBYTE(v65[0]) = 6;
    OUTLINED_FUNCTION_325();
    sub_2753B7558();
    v19 = v73;
    OUTLINED_FUNCTION_85_2(7);
    v56 = v19;
    v35 = sub_2753B7528();
    OUTLINED_FUNCTION_85_2(8);
    v34 = sub_2753B7528();
    OUTLINED_FUNCTION_85_2(9);
    v64 = sub_2753B7528();
    OUTLINED_FUNCTION_21_2(10);
    v63 = sub_2753B7528();
    OUTLINED_FUNCTION_21_2(11);
    v62 = sub_2753B7528();
    OUTLINED_FUNCTION_21_2(12);
    v61 = sub_2753B7528();
    OUTLINED_FUNCTION_21_2(13);
    v59 = sub_2753B7518();
    v60 = v20;
    v68[151] = 14;
    sub_27534B76C();
    OUTLINED_FUNCTION_103_2();
    sub_2753B7558();
    memcpy(v67, v69, sizeof(v67));
    OUTLINED_FUNCTION_474(v68);
    sub_27534B488(v68, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v98, v67, sizeof(v98));
    OUTLINED_FUNCTION_21_2(15);
    v43 = sub_2753B7518();
    v51 = v21;
    OUTLINED_FUNCTION_21_2(16);
    v45 = sub_2753B7518();
    v53 = v22;
    OUTLINED_FUNCTION_21_2(17);
    v47 = sub_2753B7548();
    v96 = v23 & 1;
    OUTLINED_FUNCTION_21_2(18);
    v49 = sub_2753B7518();
    v55 = v24;
    v66 = 19;
    OUTLINED_FUNCTION_103_2();
    v25 = sub_2753B7518();
    v27 = v26;
    v28 = OUTLINED_FUNCTION_63_1();
    v29(v28);
    v65[0] = v39;
    v65[1] = v40;
    OUTLINED_FUNCTION_476(&v65[2]);
    *(&v65[18] + 1) = *v99;
    HIDWORD(v65[18]) = *&v99[3];
    v65[19] = v38;
    v65[20] = v36;
    v65[21] = v37;
    v65[22] = v57;
    v65[23] = v58;
    v65[24] = v18;
    v65[25] = v56;
    LOBYTE(v65[26]) = v35;
    BYTE1(v65[26]) = v34;
    BYTE2(v65[26]) = v64;
    BYTE3(v65[26]) = v63;
    BYTE4(v65[26]) = v62;
    BYTE5(v65[26]) = v61;
    v65[27] = v59;
    v65[28] = v60;
    OUTLINED_FUNCTION_474(&v65[29]);
    OUTLINED_FUNCTION_125_2((&v65[47] + 1));
    HIDWORD(v65[47]) = v30;
    v65[48] = v43;
    v65[49] = v51;
    v65[50] = v45;
    v65[51] = v53;
    v65[52] = v47;
    v41 = v96;
    LOBYTE(v65[53]) = v96;
    OUTLINED_FUNCTION_71_2((&v65[53] + 1));
    HIDWORD(v65[53]) = v31;
    v65[54] = v49;
    v65[55] = v55;
    v65[56] = v25;
    v65[57] = v27;
    memcpy(v4, v65, 0x1D0uLL);
    sub_27534BBBC(v65, &v73);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v73 = v39;
    v74 = v40;
    OUTLINED_FUNCTION_476(v75);
    *v76 = *v99;
    *&v76[3] = *&v99[3];
    v77 = v38;
    v78 = v36;
    v79 = v37;
    OUTLINED_FUNCTION_341();
    v80 = v35;
    v81 = v34;
    OUTLINED_FUNCTION_285();
    OUTLINED_FUNCTION_474(v82);
    OUTLINED_FUNCTION_125_2(v83);
    *&v83[3] = v32;
    v84 = v43;
    v85 = v51;
    v86 = v45;
    v87 = v53;
    v88 = v47;
    v89 = v41;
    OUTLINED_FUNCTION_71_2(v90);
    v91 = v33;
    v92 = v49;
    v93 = v55;
    v94 = v25;
    v95 = v27;
  }

  sub_27534BB8C(&v73);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.LibraryAlbumAttributes.artistName.setter()
{
  OUTLINED_FUNCTION_96();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MediaAPI.LibraryAlbumAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_339();
  memcpy(v2, v3, v4);
  v5 = memcpy(v0, (v1 + 16), 0x81uLL);
  return OUTLINED_FUNCTION_360(v5, v6, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
}

void *MediaAPI.LibraryAlbumAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_339();
  memcpy(v1, v2, v3);
  sub_27534B488(v5, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_362((v0 + 16));
}

uint64_t MediaAPI.LibraryAlbumAttributes.contentRating.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t MediaAPI.LibraryAlbumAttributes.dateAdded.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MediaAPI.LibraryAlbumAttributes.genreNames.setter()
{
  result = OUTLINED_FUNCTION_481();
  *(v1 + 184) = v0;
  return result;
}

uint64_t MediaAPI.LibraryAlbumAttributes.name.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t MediaAPI.LibraryAlbumAttributes.playParams.getter()
{
  OUTLINED_FUNCTION_252();
  v2 = memcpy(v1, (v0 + 208), 0x91uLL);
  v3 = OUTLINED_FUNCTION_375(v2, (v0 + 208));
  return OUTLINED_FUNCTION_363(v3, v4, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
}

void *MediaAPI.LibraryAlbumAttributes.playParams.setter()
{
  OUTLINED_FUNCTION_140_1();
  memcpy(v1, (v0 + 208), 0x91uLL);
  sub_27534B488(v3, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
  return OUTLINED_FUNCTION_371((v0 + 208));
}

uint64_t MediaAPI.LibraryAlbumAttributes.releaseDate.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 360) = v2;
  *(v1 + 368) = v0;
  return result;
}

uint64_t MediaAPI.LibraryAlbumAttributes.versionHash.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 392) = v2;
  *(v1 + 400) = v0;
  return result;
}

uint64_t sub_27533BC84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6564644165746164 && a2 == 0xE900000000000064;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
              if (v11 || (sub_2753B7718() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                if (v12 || (sub_2753B7718() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL;
                  if (v13 || (sub_2753B7718() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x486E6F6973726576 && a2 == 0xEB00000000687361)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_2753B7718();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

uint64_t sub_27533BFA8(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0x52746E65746E6F63;
      break;
    case 3:
      result = 0x6564644165746164;
      break;
    case 4:
      result = 0x6D614E65726E6567;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x6172615079616C70;
      break;
    case 7:
      result = 0x44657361656C6572;
      break;
    case 8:
      result = 0x756F436B63617274;
      break;
    case 9:
      result = 0x486E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27533C108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27533BC84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27533C130(uint64_t a1)
{
  v2 = sub_27534BBF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27533C16C(uint64_t a1)
{
  v2 = sub_27534BBF4();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaAPI.LibraryAlbumAttributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_60();
  v25 = v24;
  OUTLINED_FUNCTION_202_0();
  sub_27534DC8C(0, v26, v27, v28, MEMORY[0x277D84538]);
  v30 = v29;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_339();
  memcpy(v32, v33, v34);
  v44 = *(v22 + 184);
  memcpy(v50, (v22 + 208), 0x91uLL);
  OUTLINED_FUNCTION_67_0(v25, v25[3]);
  sub_27534BBF4();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_246();
  sub_2753B7808();
  LOBYTE(v46[0]) = 0;
  sub_2753B75F8();
  if (!v23)
  {
    memcpy(v48, v49, sizeof(v48));
    OUTLINED_FUNCTION_77();
    sub_27534B40C(v49, v46, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    sub_27534B2F4();
    OUTLINED_FUNCTION_442();
    OUTLINED_FUNCTION_77_2();
    sub_2753B7638();
    OUTLINED_FUNCTION_470(v47);
    sub_27534B488(v47, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    OUTLINED_FUNCTION_318(2);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_318(3);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    v46[0] = v44;
    v45[0] = 4;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v35, v36, v37);
    OUTLINED_FUNCTION_3_4();
    sub_27534B6A0(v38);
    OUTLINED_FUNCTION_440();
    OUTLINED_FUNCTION_77_2();
    sub_2753B7638();
    OUTLINED_FUNCTION_318(5);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_331(v46);
    sub_27534B40C(v50, v45, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    sub_27534B54C();
    OUTLINED_FUNCTION_440();
    OUTLINED_FUNCTION_77_2();
    sub_2753B7638();
    v41 = OUTLINED_FUNCTION_432();
    memcpy(v41, v42, v43);
    sub_27534B488(v45, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    OUTLINED_FUNCTION_243(7);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
    OUTLINED_FUNCTION_243(8);
    OUTLINED_FUNCTION_58_1();
    sub_2753B7628();
    OUTLINED_FUNCTION_243(9);
    OUTLINED_FUNCTION_58_1();
    sub_2753B75F8();
  }

  v39 = OUTLINED_FUNCTION_113_2();
  v40(v39, v30);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void MediaAPI.LibraryAlbumAttributes.init(from:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_334();
  v3 = v2;
  OUTLINED_FUNCTION_202_0();
  OUTLINED_FUNCTION_317(v4, v5, v6, v7, MEMORY[0x277D844C8]);
  v40 = v8;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_70_2();
  sub_27534B348(v86);
  memcpy(v85, v86, sizeof(v85));
  sub_27534B690(&v87);
  OUTLINED_FUNCTION_331(v83);
  v81 = 1;
  v10 = v1[4];
  v48 = v1;
  OUTLINED_FUNCTION_148_1();
  sub_27534BBF4();
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_268();
  sub_2753B77F8();
  if (v0)
  {
    OUTLINED_FUNCTION_167_0();
    OUTLINED_FUNCTION_78_1();
    __swift_destroy_boxed_opaque_existential_1(v1);
    v60 = 0;
    v61 = 0;
    OUTLINED_FUNCTION_377(v62);
    *v63 = *v84;
    *&v63[3] = *&v84[3];
    v64 = 0;
    v65 = 0;
    v66 = v1;
    v67 = v10;
    v68 = v0;
    v69 = v49;
    v70 = v51;
    OUTLINED_FUNCTION_468(v71);
    *v72 = *v82;
    *&v72[3] = *&v82[3];
    v73 = v44;
    v74 = v46;
    v75 = v42;
    v76 = v81;
    OUTLINED_FUNCTION_258(v77);
    v78 = v12;
    v80 = 0;
    v79 = 0;
  }

  else
  {
    v11 = v3;
    LOBYTE(v60) = 0;
    v38 = sub_2753B7518();
    v39 = v13;
    v58[135] = 1;
    sub_27534B350();
    OUTLINED_FUNCTION_389();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7558();
    memcpy(v57, v59, sizeof(v57));
    OUTLINED_FUNCTION_377(v58);
    sub_27534B488(v58, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
    memcpy(v85, v57, sizeof(v85));
    LOBYTE(v60) = 2;
    OUTLINED_FUNCTION_59_2();
    v36 = sub_2753B7518();
    v37 = v14;
    OUTLINED_FUNCTION_69_2(3);
    v34 = sub_2753B7518();
    v35 = v15;
    OUTLINED_FUNCTION_0_5();
    sub_27534D210(0, v16, v17, v18);
    LOBYTE(v53[0]) = 4;
    OUTLINED_FUNCTION_2_6();
    sub_27534B6A0(v19);
    OUTLINED_FUNCTION_77_2();
    sub_2753B7558();
    v20 = v60;
    OUTLINED_FUNCTION_69_2(5);
    v50 = sub_2753B7518();
    v52 = v21;
    v55[151] = 6;
    sub_27534B76C();
    OUTLINED_FUNCTION_389();
    OUTLINED_FUNCTION_104_2();
    sub_2753B7558();
    memcpy(v54, v56, sizeof(v54));
    OUTLINED_FUNCTION_468(v55);
    sub_27534B488(v55, &qword_2809C1E60, &type metadata for MediaAPI.PlayParams);
    memcpy(v83, v54, sizeof(v83));
    LOBYTE(v60) = 7;
    OUTLINED_FUNCTION_59_2();
    v45 = sub_2753B7518();
    v47 = v22;
    v33 = v20;
    OUTLINED_FUNCTION_69_2(8);
    v43 = sub_2753B7548();
    v81 = v23 & 1;
    OUTLINED_FUNCTION_443();
    OUTLINED_FUNCTION_103_2();
    v24 = sub_2753B7518();
    v26 = v25;
    v27 = OUTLINED_FUNCTION_113_2();
    v28(v27, v40);
    v53[0] = v38;
    v53[1] = v39;
    OUTLINED_FUNCTION_377(&v53[2]);
    *(&v53[18] + 1) = *v84;
    HIDWORD(v53[18]) = *&v84[3];
    v53[19] = v36;
    v53[20] = v37;
    v53[21] = v34;
    v53[22] = v35;
    v53[23] = v33;
    v53[24] = v50;
    v53[25] = v52;
    OUTLINED_FUNCTION_468(&v53[26]);
    OUTLINED_FUNCTION_125_2((&v53[44] + 1));
    HIDWORD(v53[44]) = v29;
    v53[45] = v45;
    v53[46] = v47;
    v53[47] = v43;
    v41 = v81;
    LOBYTE(v53[48]) = v81;
    OUTLINED_FUNCTION_71_2((&v53[48] + 1));
    HIDWORD(v53[48]) = v30;
    v53[49] = v24;
    v53[50] = v26;
    memcpy(v11, v53, 0x198uLL);
    sub_27534BC78(v53, &v60);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v60 = v38;
    v61 = v39;
    OUTLINED_FUNCTION_377(v62);
    *v63 = *v84;
    *&v63[3] = *&v84[3];
    v64 = v36;
    v65 = v37;
    v66 = v34;
    v67 = v35;
    v68 = v33;
    v69 = v50;
    v70 = v52;
    OUTLINED_FUNCTION_468(v71);
    OUTLINED_FUNCTION_125_2(v72);
    *&v72[3] = v31;
    v73 = v45;
    v74 = v47;
    v75 = v43;
    v76 = v41;
    OUTLINED_FUNCTION_71_2(v77);
    v78 = v32;
    v79 = v24;
    v80 = v26;
  }

  sub_27534BC48(&v60);
  OUTLINED_FUNCTION_304();
  OUTLINED_FUNCTION_61();
}

uint64_t MediaAPI.PlaylistAttributes.artwork.getter()
{
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_305();
  memcpy(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_27();
  v5 = memcpy(v3, v4, 0x81uLL);
  return OUTLINED_FUNCTION_360(v5, v6, &qword_2809C1E30, &type metadata for MediaAPI.Artwork, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
}

void *MediaAPI.PlaylistAttributes.artwork.setter()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_305();
  memcpy(v1, v2, v3);
  sub_27534B488(v5, &qword_2809C1E30, &type metadata for MediaAPI.Artwork);
  return OUTLINED_FUNCTION_362(v0);
}

uint64_t MediaAPI.PlaylistAttributes.audioTraits.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

uint64_t MediaAPI.PlaylistAttributes.curatorName.setter()
{
  OUTLINED_FUNCTION_96();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}