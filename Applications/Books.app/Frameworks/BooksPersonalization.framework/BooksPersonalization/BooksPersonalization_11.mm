uint64_t sub_B6C68(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  for (i = v6; ; v6 = i)
  {
    v17 = v9;
    v18 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v20 = __clz(__rbit64(v17)) | (v18 << 6);
    v21 = *(*(a1 + 48) + 8 * v20);
    v22 = (*(a1 + 56) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v47[0] = v21;
    v47[1] = v24;
    v47[2] = v23;

    a2(v48, v47);

    v25 = v49;
    if (!v49)
    {
LABEL_22:
      sub_417B8(a1);
    }

    v26 = v48[0];
    v44 = v48[1];
    v27 = *v50;
    v29 = sub_43124(v48[0]);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_24;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_186684();
      }
    }

    else
    {
      sub_180090(v32, a4 & 1);
      v34 = sub_43124(v26);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_26;
      }

      v29 = v34;
    }

    v46 = (v17 - 1) & v17;
    v36 = *v50;
    if (v33)
    {
      v12 = 16 * v29;
      v13 = (v36[7] + v12);
      v15 = *v13;
      v14 = v13[1];

      v16 = (v36[7] + v12);
      *v16 = v15;
      v16[1] = v14;
    }

    else
    {
      v36[(v29 >> 6) + 8] |= 1 << v29;
      *(v36[6] + 8 * v29) = v26;
      v37 = (v36[7] + 16 * v29);
      *v37 = v44;
      v37[1] = v25;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_25;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v18;
    v9 = v46;
  }

  v19 = v11;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v10)
    {
      goto LABEL_22;
    }

    v17 = *(v6 + 8 * v18);
    ++v19;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B5784();
  __break(1u);
  return result;
}

unint64_t *sub_B6F00(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t *))
{
  v22 = result;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    v17 = (*(a3 + 56) + 16 * v15);
    v18 = v17[1];
    v23[0] = *v17;
    v23[1] = v18;

    v19 = a4(v16, v23);

    if (v19)
    {
      *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_56454(v22, a2, v24, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_56454(v22, a2, v24, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_B7060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1;
  v10 = *(a1 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v13 = &v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, v9, a2, a3);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_B50E8(v16, v11, v9, a2, a3, a5);

  if (!v5)
  {
    return v17;
  }

  return result;
}

uint64_t sub_B71F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B40F4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_7A038;

  return sub_B0810(a1, v10, v11, v12, v1 + v7, v1 + v9, v13);
}

uint64_t sub_B73A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B40F4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_2B0C(&qword_22B280, &unk_1C3888) - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = *(v1 + v10);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_7A038;

  return sub_B0E3C(a1, v13, v14, v15, v1 + v7, v1 + v9, v16, v1 + v12);
}

uint64_t sub_B753C()
{
  v1 = sub_2B0C(&qword_22B288, &qword_1D1D30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_B7618()
{
  sub_2B0C(&qword_22B288, &qword_1D1D30);

  sub_A5EB0();
}

uint64_t sub_B76B4()
{
  v1 = sub_2B0C(&qword_22B290, &qword_1C38C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_B77A4()
{
  v1 = *(sub_2B0C(&qword_22B290, &qword_1C38C0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_A6284(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_B781C()
{
  v1 = sub_2B0C(&qword_22B290, &qword_1C38C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_B791C(uint64_t a1)
{
  sub_2B0C(&qword_22B290, &qword_1C38C0);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226C;

  return sub_A7288(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_B7A50(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_7A038;

  return sub_A9444(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_B7B24()
{
  v1 = sub_2B0C(&qword_22B248, &qword_1C3848);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_B7C10()
{
  v1 = *(sub_2B0C(&qword_22B248, &qword_1C3848) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_B232C(v2, v3, v4, v5);
}

uint64_t sub_B7CB0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_B7D18(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B7D50()
{
  v1 = sub_1B40F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v8 = *(v2 + 64);
  v5 = (v3 + ((((((v8 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  swift_unknownObjectRelease();
  v6 = *(v2 + 8);
  v6(v0 + v4, v1);

  v6(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v8, v3 | 7);
}

uint64_t sub_B7E88(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B40F4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v6 + v10 + 8) & ~v6;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v8);
  v15 = *(v1 + v9);
  v16 = *(v1 + v10);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_7A038;

  return sub_AD99C(a1, v12, v13, v1 + v7, v14, v15, v16, v1 + v11);
}

uint64_t sub_B7FEC()
{
  v1 = sub_1B40F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v3 + ((((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  swift_unknownObjectRelease();
  v7 = *(v2 + 8);
  v7(v0 + v4, v1);

  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_B8104(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B40F4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + v9 + 8) & ~v6;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_7A038;

  return sub_AE098(a1, v11, v12, v1 + v7, v13, v14, v1 + v10);
}

uint64_t sub_B8250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_B82C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_B8320()
{
  v1 = sub_1B40F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (((((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_B8450(uint64_t a1)
{
  v3 = *(sub_1B40F4() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_7A038;

  return sub_AB7AC(a1, v9, v10, v11, v1 + v5, v1 + v7, v12, v13);
}

uint64_t sub_B85C4()
{
  v1 = sub_1B40F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_B86CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B40F4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_226C;

  return sub_ACB18(a1, v10, v11, v12, v1 + v7, v1 + v9, v13);
}

uint64_t sub_B8878(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1B40F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = *(v6 + 64);
  v10 = (v9 + v7 + v8) & ~v7;
  v11 = (v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_2B0C(a1, a2);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = (v14 + v11 + 8) & ~v14;
  v18 = v7 | v14;
  v19 = *(v13 + 64);
  swift_unknownObjectRelease();

  v16 = *(v6 + 8);
  v16(v2 + v8, v5);
  v16(v2 + v10, v5);

  (*(v13 + 8))(v2 + v15, v12);

  return _swift_deallocObject(v2, v15 + v19, v18 | 7);
}

uint64_t sub_B8A20(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B40F4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_2B0C(&qword_22B2D8, &qword_1C3948) - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = *(v1 + v10);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_7A038;

  return sub_ACDEC(a1, v13, v14, v15, v1 + v7, v1 + v9, v16, v1 + v12);
}

uint64_t sub_B8BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_B8C20@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_B5328(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_B8C64()
{
  v1 = sub_1B40F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = sub_2B0C(&qword_22B2D8, &qword_1C3948);
  v8 = *(v14 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + v7 + 8) & ~v9;
  v15 = v3 | v9;
  v11 = (((*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v12(v0 + v6, v1);

  (*(v8 + 8))(v0 + v10, v14);

  return _swift_deallocObject(v0, v11 + 8, v15 | 7);
}

uint64_t sub_B8E38(uint64_t a1)
{
  v3 = *(sub_1B40F4() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_2B0C(&qword_22B2D8, &qword_1C3948) - 8);
  v10 = (*(v9 + 80) + v8 + 8) & ~*(v9 + 80);
  v11 = v1[3];
  v16 = v1[2];
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_7A038;

  return sub_ABEA4(a1, v16, v11, v12, v1 + v5, v1 + v7, v13, v1 + v10);
}

uint64_t sub_B9010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_B90C4()
{
  if (!qword_22B360)
  {
    v0 = sub_1B4CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_22B360);
    }
  }
}

uint64_t sub_B9144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1B40F4();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + *(a3 + 20));
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_2B0C(a4, a5);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + *(a3 + 24);

    return v16(v17, a2, v15);
  }
}

uint64_t sub_B92AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = sub_1B40F4();
  v13 = *(result - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v15 = sub_2B0C(a5, a6);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_B9408(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_1B40F4();
  if (v9 <= 0x3F)
  {
    sub_B90C4();
    if (v10 <= 0x3F)
    {
      sub_B94C4(319, a4, a5, a6);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_B94C4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1CC1C(a3, a4);
    sub_1CC1C(&qword_229560, &unk_1BFC70);
    v5 = sub_1B4BF4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_B9588(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v11 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *v3;
      v12 = *(*v3 + 16);
      if (v12 > result)
      {
        v4 = a2;
        if (v12 > a2)
        {
          v38 = v3;
          v39 = 7 * result;
          v13 = &v2[7 * result + 4];
          v30 = 7 * a2;
          v31 = *(v13 + 40);
          v14 = &v2[7 * a2 + 4];
          v6 = *v14;
          v7 = *(v14 + 8);
          v8 = *(v14 + 16);
          v9 = *(v14 + 24);
          v10 = *(v14 + 32);
          v5 = *(v14 + 40);
          LOBYTE(v3) = *(v14 + 48);
          v35 = *(v13 + 8);
          v36 = *v13;
          v33 = *(v13 + 24);
          v34 = *(v13 + 16);
          v32 = *(v13 + 32);
          v37 = *(v13 + 48);
          sub_CBA28(*v13, v35, v34, v33, v32, v31);
          sub_CBA28(v6, v7, v8, v9, v10, v5);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        result = sub_56ACC(v2);
        v2 = result;
LABEL_6:
        if (v2[2] <= v11)
        {
          __break(1u);
        }

        else
        {
          v15 = v2 + 4;
          v16 = &v2[v39 + 4];
          v17 = *v16;
          v18 = v16[1];
          v19 = v16[2];
          v20 = v16[3];
          v21 = v16[4];
          v22 = v16[5];
          *v16 = v6;
          v16[1] = v7;
          v16[2] = v8;
          v16[3] = v9;
          v16[4] = v10;
          v16[5] = v5;
          *(v16 + 48) = v3;
          result = sub_CB990(v17, v18, v19, v20, v21, v22);
          if (v2[2] > v4)
          {
            v23 = &v15[v30];
            v24 = v15[v30];
            v25 = v15[v30 + 1];
            v26 = v15[v30 + 2];
            v27 = v15[v30 + 3];
            v28 = v15[v30 + 4];
            v29 = v15[v30 + 5];
            *v23 = v36;
            v23[1] = v35;
            v23[2] = v34;
            v23[3] = v33;
            v23[4] = v32;
            v23[5] = v31;
            *(v23 + 48) = v37;
            result = sub_CB990(v24, v25, v26, v27, v28, v29);
            *v38 = v2;
            return result;
          }
        }

        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_B972C(unint64_t a1, unint64_t a2)
{
  v8 = sub_2B0C(&qword_229408, &unk_1BCC10) - 8;
  v9 = __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v15 = &v18 - v14;
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > a1)
      {
        v4 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v16 = *(v13 + 72);
        a1 *= v16;
        sub_43050(v3 + v4 + a1, &v18 - v14, &qword_229408, &unk_1BCC10);
        if (v5 > a2)
        {
          v5 = v16 * a2;
          sub_43050(v3 + v4 + v16 * a2, v11, &qword_229408, &unk_1BCC10);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        v3 = sub_56AE0(v3);
LABEL_6:
        v17 = v3 + v4;
        result = sub_CBCD4(v11, &v17[a1]);
        if (v3[2] <= a2)
        {
          __break(1u);
        }

        else
        {
          result = sub_CBCD4(v15, &v17[v5]);
          *v2 = v3;
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

Swift::Int sub_B98E0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56BE4(v2);
  }

  v3 = *(v2 + 2);
  v23[0] = (v2 + 32);
  v23[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 2);
          if (v14 >= *(v12 - 3))
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = v12[32];
          v17 = *(v12 + 5);
          result = v12[48];
          v18 = *(v12 - 8);
          *v13 = *(v12 - 24);
          *(v12 + 2) = v18;
          v19 = *(v12 + 1);
          *(v12 - 3) = v14;
          *(v12 - 2) = v15;
          *(v12 - 8) = v16;
          *v12 = v17;
          v12[8] = result;
          v12 -= 40;
          *(v13 + 4) = v19;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v21[0] = v7 + 4;
    v21[1] = v6;
    sub_C60DC(v21, v22, v23, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_B9A4C()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_22B440);
  sub_50E58(v0, qword_22B440);
  return sub_1B4634();
}

char *sub_B9AD0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = sub_35274(*(v1 + 16), 0);
    v7 = sub_3FA2C(v36, v6 + 32, v5, v1);

    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_5:
  v8 = qword_2282C8;

  if (v8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v9 = sub_1B4644();
  sub_50E58(v9, qword_22B440);

  v10 = sub_1B4624();
  v11 = sub_1B4DB4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v35 = v3;
    v36[0] = swift_slowAlloc();
    v13 = v36[0];
    *v12 = 136315138;
    sub_C04B0(v6);
    v16 = sub_60FF4(v14, v15, v36);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v10, v11, "selectCandidateHighScoringSingleItems clusterableBooksAscendingByScore=%s", v12, 0xCu);
    sub_2BF8(v13);
    v3 = v35;
  }

  if (!v5)
  {
LABEL_22:

    return _swiftEmptyArrayStorage;
  }

  v17 = 0;
  v18 = *(v6 + 2);
  if (v3 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v3;
  }

  v20 = -v5;
  v21 = 0.0;
  v22 = 88;
  v23 = *(v6 + 2);
  while (1)
  {
    if (!v23)
    {
      __break(1u);
      goto LABEL_25;
    }

    v24 = *&v6[v22];
    if (v17 >= v19 && v4 >= v5 && v2 * (v21 / v17) <= v24)
    {
      break;
    }

    ++v17;
    v21 = v21 + v24;
    --v23;
    --v5;
    v22 += 136;
    if (!(v20 + v17))
    {
      goto LABEL_22;
    }
  }

  v25 = sub_35274(v23, 0);
  v26 = sub_3F8D4(v36, v25 + 32, v23, v6, (v6 + 32), v17, (2 * v18) | 1);

  result = swift_unknownObjectRelease();
  if (v26 == v23)
  {

    v28 = sub_1B4624();
    v29 = sub_1B4DB4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36[0] = v31;
      *v30 = 136315138;
      sub_C04B0(v25);
      v34 = sub_60FF4(v32, v33, v36);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_0, v28, v29, "selectCandidateHighScoringSingleItems candidates=%s", v30, 0xCu);
      sub_2BF8(v31);
    }

    return v25;
  }

  __break(1u);
  return result;
}

void *sub_B9E78(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for ScoredCollectionRecommendation(0);
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin(v5);
  v89 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2B0C(&qword_22B498, &qword_1C3A60);
  __chkstk_darwin(v7 - 8);
  v9 = (&v88 - v8);
  v10 = type metadata accessor for CollectionRecommendation(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v102 = &v88 - v15;
  v16 = a1[1];
  v104 = *a1;
  v109 = v16;
  v17 = a1[2];
  v18 = v2[7];
  v139 = v2[6];
  v140 = v18;
  v19 = v2[9];
  v141 = v2[8];
  v142 = v19;
  v20 = v2[3];
  v135 = v2[2];
  v136 = v20;
  v21 = v2[5];
  v137 = v2[4];
  v138 = v21;
  v22 = v2[1];
  v133 = *v2;
  v134 = v22;
  v23 = *(v2 + 20);
  v24 = *(v2 + 184);
  v130 = *(v2 + 168);
  v131 = v24;
  v132 = *(v2 + 200);
  v129 = _swiftEmptySetSingleton;
  v128 = _swiftEmptySetSingleton;
  v127 = _swiftEmptySetSingleton;
  if (!v17 || v23 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v25 = sub_130C10(_swiftEmptyArrayStorage);
  v98 = *(a2 + 16);
  if (v98)
  {
    v108 = v25;
    v100 = v23;
    v93 = v14;
    v94 = 0;
    v26 = 0;
    v27 = v17 + 56;
    v96 = (v11 + 48);
    v97 = a2 + 32;
    v99 = _swiftEmptyArrayStorage;
    v88 = v9;
    v92 = v10;
    v95 = v17;
LABEL_6:
    v28 = v97 + 136 * v26;
    v29 = *(v28 + 48);
    v120 = *(v28 + 32);
    v121 = v29;
    v126 = *(v28 + 128);
    v30 = *(v28 + 112);
    v124 = *(v28 + 96);
    v125 = v30;
    v31 = *(v28 + 80);
    v122 = *(v28 + 64);
    v123 = v31;
    v32 = *(v28 + 16);
    v118 = *v28;
    v119 = v32;
    v105 = v26 + 1;
    v33 = 1 << *(v17 + 32);
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v17 + 56);
    v110 = *(&v124 + 1);
    v36 = v125;
    v37 = v125;
    v103 = v118;
    v107 = BYTE8(v118);
    sub_429F8(&v118, v113);
    v38 = (v33 + 63) >> 6;
    v101 = v37;
    v106 = (v37 != 2) & v36;

    v39 = 0;
    while (1)
    {
      do
      {
        if (!v35)
        {
          while (1)
          {
            v41 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              __break(1u);
              goto LABEL_71;
            }

            if (v41 >= v38)
            {
              break;
            }

            v40 = *(v27 + 8 * v41);
            ++v39;
            if (v40)
            {
              v39 = v41;
              goto LABEL_16;
            }
          }

          sub_5C740(&v118);

          v26 = v105;
          if (v105 != v98)
          {
            goto LABEL_6;
          }

          v87 = v94;
          goto LABEL_68;
        }

        v40 = v35;
LABEL_16:
        v35 = (v40 - 1) & v40;
      }

      while ((v109 & 1) != 0);
      v42 = __clz(__rbit64(v40)) | (v39 << 6);
      v43 = *(v17 + 48);
      v44 = *(v43 + v42);
      if (*(v43 + v42))
      {
        if (v44 != 1)
        {
          goto LABEL_25;
        }

        if (v107)
        {
LABEL_24:

          goto LABEL_25;
        }
      }

      else if ((v107 & 1) == 0)
      {
        goto LABEL_24;
      }

      v45 = sub_1B5604();

      if (v45)
      {
LABEL_25:
        if (*(v108 + 16) && (v46 = sub_3AF28(v44), (v47 & 1) != 0))
        {
          if (*(*(v108 + 56) + 8 * v46) < v104)
          {
LABEL_30:
            if (v106 && (v48 = v127, v127[2]) && (v49 = sub_1B57E4(), v50 = -1 << *(v48 + 32), v51 = v49 & ~v50, ((*(v48 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51) & 1) != 0))
            {
              v52 = ~v50;
              while (*(v48[6] + 8 * v51) != v110)
              {
                v51 = (v51 + 1) & v52;
                if (((*(v48 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51) & 1) == 0)
                {
                  goto LABEL_36;
                }
              }

              sub_111CE0(v113, v103);
            }

            else
            {
LABEL_36:
              v113[6] = v139;
              v113[7] = v140;
              v113[8] = v141;
              v113[9] = v142;
              v113[2] = v135;
              v113[3] = v136;
              v113[4] = v137;
              v113[5] = v138;
              v113[0] = v133;
              v113[1] = v134;
              v114 = v100;
              v115 = v130;
              v116 = v131;
              v117 = v132;
              v111[6] = v124;
              v111[7] = v125;
              v112 = v126;
              v111[2] = v120;
              v111[3] = v121;
              v111[4] = v122;
              v111[5] = v123;
              v111[0] = v118;
              v111[1] = v119;
              sub_C0794(v111, v9);
              if ((*v96)(v9, 1, v10) == 1)
              {
                sub_42F48(v9, &qword_22B498, &qword_1C3A60);
              }

              else
              {
                v53 = v102;
                sub_CBA88(v9, v102, type metadata accessor for CollectionRecommendation);
                v54 = v53;
                v55 = v93;
                sub_CB8C0(v54, v93, type metadata accessor for CollectionRecommendation);
                if (swift_getEnumCaseMultiPayload() != 9)
                {
                  sub_25FBC(v55, type metadata accessor for CollectionRecommendation);
                  goto LABEL_44;
                }

                v56 = *v55;
                sub_CBD44(v55[2], v55[3], v55[4], v55[5], v55[6], v55[7], v55[8], v55[9], v55[10]);
                v57 = v128;
                v17 = v95;
                if (v128[2] && (v58 = sub_1B57E4(), v59 = -1 << *(v57 + 32), v60 = v58 & ~v59, ((*(v57 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v60) & 1) != 0))
                {
                  v61 = ~v59;
                  while (*(v57[6] + 8 * v60) != v56)
                  {
                    v60 = (v60 + 1) & v61;
                    if (((*(v57 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v60) & 1) == 0)
                    {
                      goto LABEL_44;
                    }
                  }

                  sub_111CE0(v113, v103);
                  sub_25FBC(v102, type metadata accessor for CollectionRecommendation);
                  v10 = v92;
                }

                else
                {
LABEL_44:
                  v62 = v89;
                  sub_CB8C0(v102, v89, type metadata accessor for CollectionRecommendation);
                  v63 = v91;
                  *(v62 + *(v91 + 20)) = v44;
                  *(v62 + *(v63 + 24)) = 0;
                  *(v62 + *(v63 + 28)) = 0;
                  v64 = v99;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v64 = sub_33C88(0, v64[2] + 1, 1, v64);
                  }

                  v66 = v64[2];
                  v65 = v64[3];
                  v99 = v64;
                  if (v66 >= v65 >> 1)
                  {
                    v99 = sub_33C88((v65 > 1), v66 + 1, 1, v99);
                  }

                  v67 = v99;
                  v99[2] = v66 + 1;
                  sub_CBA88(v62, v67 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v66, type metadata accessor for ScoredCollectionRecommendation);
                  if (v101 != 2)
                  {
                    v68 = v110;
                    sub_111CE0(v113, v110);
                    sub_111CE0(v113, v68);
                  }

                  sub_111CE0(v113, v103);
                  sub_41C08(v94, 0);
                  v69 = v108;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v113[0] = v69;
                  v72 = sub_3AF28(v44);
                  v73 = *(v69 + 16);
                  v74 = (v71 & 1) == 0;
                  v75 = v73 + v74;
                  if (__OFADD__(v73, v74))
                  {
                    __break(1u);
LABEL_73:
                    __break(1u);
LABEL_74:
                    result = sub_1B5784();
                    __break(1u);
                    return result;
                  }

                  v76 = v71;
                  if (*(v69 + 24) >= v75)
                  {
                    v79 = v99;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_186C14();
                      v79 = v99;
                    }

                    v10 = v92;
                  }

                  else
                  {
                    sub_1809A4(v75, isUniquelyReferenced_nonNull_native);
                    v77 = sub_3AF28(v44);
                    if ((v76 & 1) != (v78 & 1))
                    {
                      goto LABEL_74;
                    }

                    v72 = v77;
                    v10 = v92;
                    v79 = v99;
                  }

                  v80 = *&v113[0];
                  v108 = *&v113[0];
                  if ((v76 & 1) == 0)
                  {
                    sub_15BB28(v72, v44, 0, *&v113[0]);
                    v80 = v108;
                  }

                  v81 = *(v80 + 56);
                  v82 = *(v81 + 8 * v72);
                  v83 = __OFADD__(v82, 1);
                  v84 = v82 + 1;
                  if (v83)
                  {
                    goto LABEL_73;
                  }

                  *(v81 + 8 * v72) = v84;
                  sub_25FBC(v102, type metadata accessor for CollectionRecommendation);
                  v85 = v79[2];
                  v94 = sub_CC290;
                  v9 = v88;
                  v17 = v95;
                  if (v85 == v100)
                  {
LABEL_71:

                    sub_5C740(&v118);

                    return v99;
                  }
                }
              }
            }
          }
        }

        else if (v104 > 0)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v99 = _swiftEmptyArrayStorage;
  v87 = 0;
LABEL_68:

  sub_41C08(v87, 0);
  return v99;
}

uint64_t sub_BA88C(uint64_t a1)
{
  v2 = type metadata accessor for ScoredCollectionRecommendation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0x202020200A5BLL;
  v23 = 0xE600000000000000;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_3747C(0, v6, 0);
    v7 = v21;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_CB8C0(v8, v5, type metadata accessor for ScoredCollectionRecommendation);
      v10 = sub_C4AF4();
      v12 = v11;
      sub_25FBC(v5, type metadata accessor for ScoredCollectionRecommendation);
      v21 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        sub_3747C((v13 > 1), v14 + 1, 1);
        v7 = v21;
      }

      v7[2] = v14 + 1;
      v15 = &v7[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v21 = v7;
  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_42094(&qword_229000, &qword_228590, &qword_1B6590, &protocol conformance descriptor for [A]);
  v16 = sub_1B4764();
  v18 = v17;

  v24._countAndFlagsBits = v16;
  v24._object = v18;
  sub_1B48D4(v24);

  v25._countAndFlagsBits = 93;
  v25._object = 0xE100000000000000;
  sub_1B48D4(v25);
  return v22;
}

uint64_t sub_BAAD4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v45 = *(a1 + 24);
  v5 = *(a1 + 40);
  LOBYTE(v6) = *(a1 + 48);
  v7 = *v1;
  sub_CB9F0(a1, v46);
  result = swift_isUniquelyReferenced_nonNull_native();
  v35 = v1;
  if ((result & 1) == 0)
  {
LABEL_19:
    result = sub_33CB0(0, v7[2] + 1, 1, v7);
    v7 = result;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    result = sub_33CB0((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  v7[2] = v10 + 1;
  v44 = v7 + 4;
  v11 = &v7[7 * v10 + 4];
  *v11 = v2;
  *(v11 + 8) = v3;
  *(v11 + 16) = v4;
  *(v11 + 24) = v45;
  *(v11 + 40) = v5;
  *(v11 + 48) = v6 & 1;
  if (v10 < 2)
  {
LABEL_14:
    *v35 = v7;
  }

  else
  {
    v43 = v7;
    while (1)
    {
      v12 = v7[2];
      if (v10 >> 1 >= v12)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v3 = &v44[7 * (v10 >> 1)];
      if (!*v3)
      {
        break;
      }

      if (v10 >= v12)
      {
        goto LABEL_16;
      }

      v39 = v10 >> 1;
      *&v45 = v10;
      v2 = &v44[7 * v10];
      v6 = *v2;
      if (!*v2)
      {
        goto LABEL_21;
      }

      v14 = v2[4];
      v13 = v2[5];
      v5 = v2[2];
      v15 = v2[3];
      v16 = v2[1];
      v17 = v3[1];
      v4 = *(v2 + 48);
      sub_CBA28(*v3, v17, v3[2], v3[3], v3[4], v3[5]);
      sub_CBA28(v6, v16, v5, v15, v14, v13);

      v7 = v43;
      if (*&v16 >= *&v17)
      {
        goto LABEL_14;
      }

      if (v45 >= v43[2])
      {
        goto LABEL_17;
      }

      v18 = v2[5];
      v20 = *v3;
      v19 = v3[1];
      v22 = v3[2];
      v21 = v3[3];
      v4 = v3[4];
      v5 = v3[5];
      LOBYTE(v6) = *(v3 + 48);
      v40 = v2[1];
      v41 = *v2;
      v37 = v2[3];
      v38 = v2[2];
      v36 = v2[4];
      v42 = *(v2 + 48);
      sub_CBA28(*v2, v40, v38, v37, v36, v18);
      sub_CBA28(v20, v19, v22, v21, v4, v5);
      v23 = *v2;
      v24 = v2[1];
      v25 = v2[2];
      v26 = v2[3];
      v27 = v2[4];
      v28 = v2[5];
      *v2 = v20;
      v2[1] = v19;
      v7 = v43;
      v2[2] = v22;
      v2[3] = v21;
      v2[4] = v4;
      v2[5] = v5;
      *(v2 + 48) = v6;
      sub_CB990(v23, v24, v25, v26, v27, v28);
      v10 = v39;
      if (v39 >= v43[2])
      {
        goto LABEL_18;
      }

      v29 = *v3;
      v30 = v3[1];
      v31 = v3[2];
      v32 = v3[3];
      v33 = v3[4];
      v34 = v3[5];
      *v3 = v41;
      v3[1] = v40;
      v3[2] = v38;
      v3[3] = v37;
      v3[4] = v36;
      v3[5] = v18;
      *(v3 + 48) = v42;
      result = sub_CB990(v29, v30, v31, v32, v33, v34);
      if (v45 <= 3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_BADCC(uint64_t a1)
{
  v3 = sub_2B0C(&qword_229408, &unk_1BCC10);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - v11;
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  sub_CB8C0(a1, &v29 - v13, type metadata accessor for ScoredCollectionRecommendation);
  v15 = type metadata accessor for ScoredCollectionRecommendation(0);
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 0, 1, v15);
  v30 = v1;
  v17 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_19:
    v17 = sub_33E18(0, v17[2] + 1, 1, v17);
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_33E18((v18 > 1), v19 + 1, 1, v17);
  }

  v17[2] = v19 + 1;
  v20 = v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v31 = v4[9];
  v32 = v20;
  result = sub_CBBF4(v14, &v20[v31 * v19]);
  *v30 = v17;
  if (v19 >= 2)
  {
    v4 = (v16 + 48);
    while (1)
    {
      v22 = v19 >> 1;
      v23 = v17[2];
      if (v19 >> 1 >= v23)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v16 = &v32[v22 * v31];
      sub_43050(v16, v12, &qword_229408, &unk_1BCC10);
      v14 = *v4;
      result = (*v4)(v12, 1, v15);
      if (result == 1)
      {
        break;
      }

      if (v19 >= v23)
      {
        goto LABEL_16;
      }

      v24 = &v32[v19 * v31];
      sub_43050(v24, v9, &qword_229408, &unk_1BCC10);
      result = (v14)(v9, 1, v15);
      if (result == 1)
      {
        goto LABEL_21;
      }

      v25 = *(v15 + 28);
      v26 = *&v12[v25];
      v27 = *&v9[v25];
      sub_25FBC(v9, type metadata accessor for ScoredCollectionRecommendation);
      result = sub_25FBC(v12, type metadata accessor for ScoredCollectionRecommendation);
      v14 = v29;
      if (v27 >= v26)
      {
        return result;
      }

      if (v19 >= v17[2])
      {
        goto LABEL_17;
      }

      sub_43050(v24, v29, &qword_229408, &unk_1BCC10);
      sub_CBC64(v16, v24);
      if (v22 >= v17[2])
      {
        goto LABEL_18;
      }

      result = sub_CBCD4(v14, v16);
      *v30 = v17;
      v28 = v19 > 3;
      v19 >>= 1;
      if (!v28)
      {
        return result;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

void *sub_BB174(uint64_t a1)
{
  v2 = type metadata accessor for ScoredCollectionRecommendation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2B0C(&qword_229408, &unk_1BCC10) - 8;
  v7 = __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v12 = &v21 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v22 = v5;
  v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v15 = *(v10 + 72);
  v16 = _swiftEmptyArrayStorage;
  v23 = v3;
  v24 = v2;
  do
  {
    sub_43050(v14, v12, &qword_229408, &unk_1BCC10);
    sub_CBBF4(v12, v9);
    if ((*(v3 + 48))(v9, 1, v2) == 1)
    {
      sub_42F48(v9, &qword_229408, &unk_1BCC10);
    }

    else
    {
      v17 = v22;
      sub_CBA88(v9, v22, type metadata accessor for ScoredCollectionRecommendation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_33C88(0, v16[2] + 1, 1, v16);
      }

      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        v16 = sub_33C88((v18 > 1), v19 + 1, 1, v16);
      }

      v16[2] = v19 + 1;
      sub_CBA88(v17, v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, type metadata accessor for ScoredCollectionRecommendation);
      v2 = v24;
    }

    v14 += v15;
    --v13;
  }

  while (v13);
  return v16;
}

uint64_t sub_BB45C(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 8;
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = (v3 + 56 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = v5[3];
    ++v1;
    v5 += 7;
    if (v7)
    {
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      v12 = v5[1];
      v16 = *(v5 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_33DFC(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      if (v14 >= v13 >> 1)
      {
        result = sub_33DFC((v13 > 1), v14 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v14 + 1;
      v15 = &v4[56 * v14];
      *(v15 + 4) = v7;
      *(v15 + 5) = v8;
      *(v15 + 6) = v9;
      *(v15 + 7) = v10;
      *(v15 + 8) = v11;
      *(v15 + 9) = v12;
      v15[80] = v16 & 1;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_BB5BC(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = v2;
  v343 = type metadata accessor for CollectionRecommendation(0);
  v6 = __chkstk_darwin(v343);
  v341 = &v325 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v333 = &v325 - v8;
  v9 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  v10 = __chkstk_darwin(v9 - 8);
  v340 = &v325 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v339 = &v325 - v13;
  __chkstk_darwin(v12);
  v348 = &v325 - v14;
  v356 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v368 = *(v356 - 8);
  v15 = __chkstk_darwin(v356);
  v338 = &v325 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v337 = &v325 - v18;
  __chkstk_darwin(v17);
  v347 = &v325 - v19;
  v20 = type metadata accessor for ScoredCollectionRecommendation(0);
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v342 = &v325 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v369 = (&v325 - v25);
  __chkstk_darwin(v24);
  v27 = &v325 - v26;
  v28 = v1[11];
  v412 = v1[10];
  v413 = v28;
  v414 = v1[12];
  v29 = v1[7];
  v408 = v1[6];
  v409 = v29;
  v30 = v1[9];
  v410 = v1[8];
  v411 = v30;
  v31 = v1[3];
  v404 = v1[2];
  v405 = v31;
  v32 = v1[5];
  v406 = v1[4];
  v407 = v32;
  v33 = v1[1];
  v402 = *v1;
  v415 = *(v1 + 26);
  v403 = v33;

  sub_C766C(v5, v4, &v397);
  v34 = swift_allocObject();
  sub_2B0C(&qword_229400, &unk_1BC4A0);
  v35 = *(sub_2B0C(&qword_229408, &unk_1BCC10) - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BCA80;
  v38 = *(v21 + 56);
  v364 = v20;
  v38(v37 + v36, 1, 1, v20);
  *(v34 + 16) = v37;
  v349 = v34 + 16;
  v39 = swift_allocObject();
  *(v39 + 16) = v34;
  *(v39 + 184) = v412;
  *(v39 + 200) = v413;
  *(v39 + 216) = v414;
  *(v39 + 232) = v415;
  *(v39 + 120) = v408;
  *(v39 + 136) = v409;
  *(v39 + 152) = v410;
  *(v39 + 168) = v411;
  *(v39 + 56) = v404;
  *(v39 + 72) = v405;
  *(v39 + 88) = v406;
  *(v39 + 104) = v407;
  *(v39 + 24) = v402;
  v344 = v39;
  *(v39 + 40) = v403;
  v40 = v5;
  v41 = *(v5 + 16);

  sub_CBBBC(&v402, &v382);

  sub_CBBBC(&v402, &v382);

  sub_CBBBC(&v402, &v382);
  v346 = v34;

  sub_CBBBC(&v402, &v382);
  if (v41)
  {
    v42 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v43 = *(v21 + 72);
    v44 = v40 + v42;
    v45 = _swiftEmptyArrayStorage;
    do
    {
      sub_CB8C0(v44, v27, type metadata accessor for ScoredCollectionRecommendation);
      if (v27[*(v364 + 24)] == 1)
      {
        sub_CBA88(v27, v369, type metadata accessor for ScoredCollectionRecommendation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v382 = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_37934(0, v45[2] + 1, 1);
          v45 = v382;
        }

        v48 = v45[2];
        v47 = v45[3];
        if (v48 >= v47 >> 1)
        {
          sub_37934((v47 > 1), v48 + 1, 1);
          v45 = v382;
        }

        v45[2] = v48 + 1;
        sub_CBA88(v369, v45 + v42 + v48 * v43, type metadata accessor for ScoredCollectionRecommendation);
      }

      else
      {
        sub_25FBC(v27, type metadata accessor for ScoredCollectionRecommendation);
      }

      v44 += v43;
      --v41;
    }

    while (v41);
  }

  else
  {
    v45 = _swiftEmptyArrayStorage;
  }

  v49 = v45[2];

  if (!v49)
  {
    v50 = v403;
    v51 = v403 + 64;
    v52 = 1 << *(v403 + 32);
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & *(v403 + 64);
    v55 = (v52 + 63) >> 6;

    v56 = 0;
    if (v54)
    {
      while (1)
      {
        v57 = v56;
LABEL_21:
        v58 = __clz(__rbit64(v54));
        v54 &= v54 - 1;
        v59 = v58 | (v57 << 6);
        LOBYTE(v58) = *(*(v50 + 48) + v59);
        v60 = *(v50 + 56) + 24 * v59;
        v61 = *v60;
        v62 = *(v60 + 8);
        v63 = *(v60 + 16);
        LOBYTE(v382) = v58;
        *(&v382 + 1) = v61;
        LOBYTE(v383) = v62;
        *(&v383 + 1) = v63;

        sub_C0FE8(&v382);

        if (!v54)
        {
          goto LABEL_17;
        }
      }
    }

    while (1)
    {
LABEL_17:
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_281;
      }

      if (v57 >= v55)
      {
        break;
      }

      v54 = *(v51 + 8 * v57);
      ++v56;
      if (v54)
      {
        v56 = v57;
        goto LABEL_21;
      }
    }
  }

  v64 = v349;
  swift_beginAccess();
  if (*(*v64 + 16) != 1 || v49 >= v404 || (v326 = *(*(&v413 + 1) + 16)) == 0)
  {
    *&v382 = v397;
    sub_42F48(&v382, &qword_2292C8, &unk_1BCB00);
    *&v416[0] = v398;
    sub_42F48(v416, &qword_2292C8, &unk_1BCB00);
    *&v381[0] = v399;
    sub_42F48(v381, &qword_229300, &qword_1BC3B8);
    *v374 = v400;
    sub_42F48(v374, &qword_2292C8, &unk_1BCB00);
    *&v372[0] = v401;
    v68 = v372;
    goto LABEL_29;
  }

  v65 = 0;
  v66 = v414;
  v67 = *(v414 + 16);
  v327 = *(&v413 + 1);
  v325 = *(&v413 + 1) + 32;
  v361 = v414 + 32;
  v362 = v67;
  v331 = 0x80000000001D4780;
  v332 = 0x80000000001D47A0;
  v329 = 0x80000000001D4740;
  v330 = 0x80000000001D4760;
  v328 = 0x80000000001D4FE0;
  v350 = (v368 + 48);
  v335 = (v368 + 16);
  v336 = (v368 + 32);
  v334 = (v368 + 8);
  v355 = v414;
  while (1)
  {
    if (v65 >= *(v327 + 16))
    {
      goto LABEL_285;
    }

    if (v362)
    {
      break;
    }

LABEL_30:
    if (++v65 == v326)
    {
      goto LABEL_276;
    }
  }

  v75 = 0;
  v76 = *(v325 + v65);
  v77 = v401;
  v351 = v65;
  v360 = v76;
  v363 = v401;
  while (2)
  {
    if (v75 >= *(v66 + 16))
    {
      goto LABEL_280;
    }

    LODWORD(v368) = *(v361 + v75);
    if (*(v77 + 16) && (v78 = sub_3AA80(v76), (v79 & 1) != 0))
    {
      v80 = *(*(v77 + 56) + 8 * v78);

      if (!v80[2])
      {
        goto LABEL_45;
      }
    }

    else
    {
      v80 = _swiftEmptyDictionarySingleton;
      if (!_swiftEmptyDictionarySingleton[2])
      {
        goto LABEL_45;
      }
    }

    v81 = sub_3AF28(v368);
    if (v82)
    {
      v83 = *(v80[7] + 8 * v81);
      goto LABEL_46;
    }

LABEL_45:
    v83 = 0;
LABEL_46:
    ++v75;

    switch(v76)
    {
      case 1:

        goto LABEL_49;
      default:
        v84 = sub_1B5604();

        if (v84)
        {
LABEL_49:
          v77 = v363;
          if (v83 > 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v77 = v363;
          if (v83 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_36;
          }
        }

        v369 = v397;
        v359 = v75;
        if (v76 > 2)
        {
          if (v76 != 3)
          {
            if (v76 != 5)
            {
              if (v76 != 8)
              {
                goto LABEL_36;
              }

              v392 = v412;
              v393 = v413;
              v394 = v414;
              v395 = v415;
              v388 = v408;
              v389 = v409;
              v390 = v410;
              v391 = v411;
              v384 = v404;
              v385 = v405;
              v386 = v406;
              v387 = v407;
              v382 = v402;
              v383 = v403;
              v374[0] = v368;
              v85 = v346;

              sub_CBBBC(&v402, v381);
              sub_C8964(v374, v369, 1, &v382, v85, &v402);
              goto LABEL_271;
            }

            v247 = *(*(&v406 + 1) + 64);
            v354 = *(&v406 + 1) + 64;
            v248 = 1 << *(*(&v406 + 1) + 32);
            if (v248 < 64)
            {
              v249 = ~(-1 << v248);
            }

            else
            {
              v249 = -1;
            }

            v365 = v249 & v247;
            v352 = *(&v406 + 1);
            v353 = (v248 + 63) >> 6;
            v358 = v398;
            v250 = v398 + 56;
            v251 = v369 + 7;

            v252 = 0;
            v357 = v250;
            while (2)
            {
              v253 = v365;
              if (v365)
              {
                v254 = v252;
LABEL_214:
                v255 = (v254 << 9) | (8 * __clz(__rbit64(v253)));
                v256 = *(*(v352 + 48) + v255);
                v257 = *(*(v352 + 56) + v255);
                v365 = (v253 - 1) & v253;
                v366 = v257;
                if (*(v358 + 16))
                {
                  v258 = v358;
                  v259 = sub_1B57E4();
                  v260 = -1 << *(v258 + 32);
                  v261 = v259 & ~v260;
                  if ((*(v250 + ((v261 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v261))
                  {
                    v262 = ~v260;
                    while (*(*(v358 + 48) + 8 * v261) != v256)
                    {
                      v261 = (v261 + 1) & v262;
                      if (((*(v250 + ((v261 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v261) & 1) == 0)
                      {
                        goto LABEL_219;
                      }
                    }

                    v252 = v254;
                    continue;
                  }
                }

LABEL_219:
                v345 = v256;
                v263 = v366;
                v264 = *(v366 + 16);

                if (!v264)
                {
                  v266 = _swiftEmptyArrayStorage;
LABEL_245:
                  if ((v410 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_284;
                  }

                  v295 = v266[2];
                  if (v295 >= v410)
                  {
                    v296 = v410;
                  }

                  else
                  {
                    v296 = v266[2];
                  }

                  if (v410)
                  {
                    v297 = v296;
                  }

                  else
                  {
                    v297 = 0;
                  }

                  if (v295 != v297)
                  {
                    sub_5136C(v266, (v266 + 4), 0, (2 * v297) | 1);
                    v323 = v322;

                    v266 = v323;
                  }

                  LODWORD(v76) = v360;
                  v250 = v357;
                  v298 = v266[2];
                  if (v298)
                  {
                    *v374 = _swiftEmptyArrayStorage;
                    sub_9ACC4(v298);
                    v299 = *v374;
                    v300 = v298 - 1;
                    for (i = 4; ; i += 17)
                    {
                      v302 = *&v266[i];
                      v303 = *&v266[i + 2];
                      v304 = *&v266[i + 4];
                      v385 = *&v266[i + 6];
                      v384 = v304;
                      v383 = v303;
                      v382 = v302;
                      sub_42BA4(&v382, v381);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_375F8(0, v299[2] + 1, 1);
                        v299 = *v374;
                      }

                      v306 = v299[2];
                      v305 = v299[3];
                      if (v306 >= v305 >> 1)
                      {
                        sub_375F8((v305 > 1), v306 + 1, 1);
                        v299 = *v374;
                      }

                      v299[2] = v306 + 1;
                      v307 = &v299[8 * v306];
                      v308 = v382;
                      v309 = v383;
                      v310 = v385;
                      v307[4] = v384;
                      v307[5] = v310;
                      v307[2] = v308;
                      v307[3] = v309;
                      if (!v300)
                      {
                        break;
                      }

                      --v300;
                    }

                    LODWORD(v76) = v360;
                    v250 = v357;
                  }

                  else
                  {

                    v299 = _swiftEmptyArrayStorage;
                  }

                  if (v299[2] < *(&v409 + 1))
                  {

                    v252 = v254;
                    v75 = v359;
                  }

                  else
                  {
                    *&v382 = v299;
                    sub_2B0C(&qword_229500, &unk_1BC580);
                    sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
                    v311 = v339;
                    sub_1B43C4();
                    v312 = v356;
                    if ((*v350)(v311, 1, v356) == 1)
                    {
                      sub_42F48(v311, &qword_2296F0, &unk_1C3A10);
                    }

                    else
                    {
                      v313 = v337;
                      (*v336)(v337, v311, v312);
                      v314 = sub_2B0C(&qword_229740, &qword_1C6EE0);
                      v315 = *(v314 + 48);
                      v316 = *(v314 + 64);
                      v317 = v341;
                      (*v335)(v341, v313, v312);
                      *(v317 + v315) = v345;
                      *(v317 + v316) = 2;
                      swift_storeEnumTagMultiPayload();
                      v318 = sub_1AB914(*(&v410 + 1));
                      v319 = v342;
                      sub_CB8C0(v317, v342, type metadata accessor for CollectionRecommendation);
                      v320 = v364;
                      *(v319 + *(v364 + 20)) = v368;
                      *(v319 + *(v320 + 24)) = 1;
                      *(v319 + *(v320 + 28)) = v318;
                      v76 = v415;
                      swift_beginAccess();
                      v321 = v76;
                      LODWORD(v76) = v360;
                      sub_BE058(v319, v321);
                      swift_endAccess();
                      sub_25FBC(v319, type metadata accessor for ScoredCollectionRecommendation);
                      sub_25FBC(v317, type metadata accessor for CollectionRecommendation);
                      (*v334)(v337, v312);
                    }

                    v252 = v254;
                    v75 = v359;
                    v250 = v357;
                  }

                  continue;
                }

                v265 = 0;
                v367 = v263 + 32;
                v266 = _swiftEmptyArrayStorage;
                while (2)
                {
                  if (v265 >= *(v263 + 16))
                  {
                    goto LABEL_275;
                  }

                  v267 = (v367 + 136 * v265);
                  v382 = *v267;
                  v268 = v267[1];
                  v269 = v267[2];
                  v270 = v267[3];
                  v386 = v267[4];
                  v385 = v270;
                  v384 = v269;
                  v383 = v268;
                  v271 = v267[5];
                  v272 = v267[6];
                  v273 = v267[7];
                  LOBYTE(v390) = *(v267 + 128);
                  v389 = v273;
                  v388 = v272;
                  v387 = v271;
                  ++v265;
                  v274 = BYTE8(v382);
                  if (v369[2])
                  {
                    v275 = v382;
                    v276 = v369;
                    v277 = sub_1B57E4();
                    v278 = *(v276 + 32);
                    v263 = v366;
                    v279 = -1 << v278;
                    v280 = v277 & ~(-1 << v278);
                    if ((*(v251 + ((v280 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v280))
                    {
                      v281 = ~v279;
                      while (*(v369[6] + 8 * v280) != v275)
                      {
                        v280 = (v280 + 1) & v281;
                        if (((*(v251 + ((v280 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v280) & 1) == 0)
                        {
                          goto LABEL_229;
                        }
                      }

LABEL_222:
                      if (v265 == v264)
                      {
                        goto LABEL_245;
                      }

                      continue;
                    }
                  }

                  break;
                }

LABEL_229:
                if (v368)
                {
                  if (v368 == 1)
                  {
                    if ((v274 & 1) == 0)
                    {
                      v282 = sub_1B5604();
                      sub_429F8(&v382, v381);

                      if (v282)
                      {
                        goto LABEL_239;
                      }

LABEL_221:
                      sub_5C740(&v382);
                      goto LABEL_222;
                    }

                    goto LABEL_238;
                  }

                  sub_429F8(&v382, v381);
                }

                else
                {
                  if (v274)
                  {
                    v283 = sub_1B5604();
                    sub_429F8(&v382, v381);

                    if (v283)
                    {
                      goto LABEL_239;
                    }

                    goto LABEL_221;
                  }

LABEL_238:
                  sub_429F8(&v382, v381);
                }

LABEL_239:
                v284 = swift_isUniquelyReferenced_nonNull_native();
                *v374 = v266;
                if ((v284 & 1) == 0)
                {
                  sub_37574(0, v266[2] + 1, 1);
                  v266 = *v374;
                }

                v286 = v266[2];
                v285 = v266[3];
                v287 = v286 + 1;
                if (v286 >= v285 >> 1)
                {
                  sub_37574((v285 > 1), v286 + 1, 1);
                  v287 = v286 + 1;
                  v266 = *v374;
                }

                v266[2] = v287;
                v288 = &v266[17 * v286];
                *(v288 + 2) = v382;
                v289 = v383;
                v290 = v384;
                v291 = v386;
                *(v288 + 5) = v385;
                *(v288 + 6) = v291;
                *(v288 + 3) = v289;
                *(v288 + 4) = v290;
                v292 = v387;
                v293 = v388;
                v294 = v389;
                *(v288 + 160) = v390;
                *(v288 + 8) = v293;
                *(v288 + 9) = v294;
                *(v288 + 7) = v292;
                goto LABEL_222;
              }

              break;
            }

            while (1)
            {
              v254 = v252 + 1;
              if (__OFADD__(v252, 1))
              {
                break;
              }

              if (v254 >= v353)
              {
                goto LABEL_34;
              }

              v253 = *(v354 + 8 * v254);
              ++v252;
              if (v253)
              {
                goto LABEL_214;
              }
            }

LABEL_279:
            __break(1u);
LABEL_280:
            __break(1u);
LABEL_281:
            __break(1u);
LABEL_282:
            __break(1u);
LABEL_283:
            __break(1u);
LABEL_284:
            __break(1u);
LABEL_285:
            __break(1u);
            JUMPOUT(0xBDF54);
          }

          v170 = *(v407 + 64);
          v354 = v407 + 64;
          v171 = 1 << *(v407 + 32);
          if (v171 < 64)
          {
            v172 = ~(-1 << v171);
          }

          else
          {
            v172 = -1;
          }

          v365 = v172 & v170;
          v352 = v407;
          v353 = (v171 + 63) >> 6;
          v358 = v400;
          v173 = v400 + 56;
          v174 = v369 + 7;

          v175 = 0;
          v357 = v173;
          while (1)
          {
            while (1)
            {
              v176 = v365;
              if (!v365)
              {
                while (1)
                {
                  v177 = v175 + 1;
                  if (__OFADD__(v175, 1))
                  {
                    break;
                  }

                  if (v177 >= v353)
                  {
LABEL_34:

                    v65 = v351;
                    v66 = v355;
                    goto LABEL_35;
                  }

                  v176 = *(v354 + 8 * v177);
                  ++v175;
                  if (v176)
                  {
                    goto LABEL_148;
                  }
                }

                __break(1u);
LABEL_278:
                __break(1u);
                goto LABEL_279;
              }

              v177 = v175;
LABEL_148:
              v178 = (v177 << 9) | (8 * __clz(__rbit64(v176)));
              v179 = *(*(v352 + 48) + v178);
              v180 = *(*(v352 + 56) + v178);
              v365 = (v176 - 1) & v176;
              v366 = v180;
              if (!*(v358 + 16))
              {
                break;
              }

              v181 = v358;
              v182 = sub_1B57E4();
              v183 = -1 << *(v181 + 32);
              v184 = v182 & ~v183;
              if (((*(v173 + ((v184 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v184) & 1) == 0)
              {
                break;
              }

              v185 = ~v183;
              while (*(*(v358 + 48) + 8 * v184) != v179)
              {
                v184 = (v184 + 1) & v185;
                if (((*(v173 + ((v184 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v184) & 1) == 0)
                {
                  goto LABEL_153;
                }
              }

              v175 = v177;
            }

LABEL_153:
            v345 = v179;
            v186 = v366;
            v187 = *(v366 + 16);

            if (v187)
            {
              break;
            }

            v189 = _swiftEmptyArrayStorage;
LABEL_179:
            if ((v410 & 0x8000000000000000) != 0)
            {
              goto LABEL_283;
            }

            v218 = v189[2];
            if (v218 >= v410)
            {
              v219 = v410;
            }

            else
            {
              v219 = v189[2];
            }

            if (v410)
            {
              v220 = v219;
            }

            else
            {
              v220 = 0;
            }

            if (v218 != v220)
            {
              sub_5136C(v189, (v189 + 4), 0, (2 * v220) | 1);
              v246 = v245;

              v189 = v246;
            }

            LODWORD(v76) = v360;
            v173 = v357;
            v221 = v189[2];
            if (v221)
            {
              *v374 = _swiftEmptyArrayStorage;
              sub_9ACC4(v221);
              v222 = *v374;
              v223 = v221 - 1;
              for (j = 4; ; j += 17)
              {
                v225 = *&v189[j];
                v226 = *&v189[j + 2];
                v227 = *&v189[j + 4];
                v385 = *&v189[j + 6];
                v384 = v227;
                v383 = v226;
                v382 = v225;
                sub_42BA4(&v382, v381);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_375F8(0, v222[2] + 1, 1);
                  v222 = *v374;
                }

                v229 = v222[2];
                v228 = v222[3];
                if (v229 >= v228 >> 1)
                {
                  sub_375F8((v228 > 1), v229 + 1, 1);
                  v222 = *v374;
                }

                v222[2] = v229 + 1;
                v230 = &v222[8 * v229];
                v231 = v382;
                v232 = v383;
                v233 = v385;
                v230[4] = v384;
                v230[5] = v233;
                v230[2] = v231;
                v230[3] = v232;
                if (!v223)
                {
                  break;
                }

                --v223;
              }

              LODWORD(v76) = v360;
              v173 = v357;
            }

            else
            {

              v222 = _swiftEmptyArrayStorage;
            }

            if (v222[2] < *(&v409 + 1))
            {

              v175 = v177;
              v75 = v359;
            }

            else
            {
              *&v382 = v222;
              sub_2B0C(&qword_229500, &unk_1BC580);
              sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
              v234 = v340;
              sub_1B43C4();
              v235 = v356;
              if ((*v350)(v234, 1, v356) == 1)
              {
                sub_42F48(v234, &qword_2296F0, &unk_1C3A10);
              }

              else
              {
                v236 = v338;
                (*v336)(v338, v234, v235);
                v237 = sub_2B0C(&qword_229740, &qword_1C6EE0);
                v238 = *(v237 + 48);
                v239 = *(v237 + 64);
                v240 = v341;
                (*v335)(v341, v236, v235);
                *(v240 + v238) = v345;
                *(v240 + v239) = 2;
                swift_storeEnumTagMultiPayload();
                v241 = sub_1AB914(*(&v410 + 1));
                v242 = v342;
                sub_CB8C0(v240, v342, type metadata accessor for CollectionRecommendation);
                v243 = v364;
                *(v242 + *(v364 + 20)) = v368;
                *(v242 + *(v243 + 24)) = 1;
                *(v242 + *(v243 + 28)) = v241;
                v76 = v415;
                swift_beginAccess();
                v244 = v76;
                LODWORD(v76) = v360;
                sub_BE058(v242, v244);
                swift_endAccess();
                sub_25FBC(v242, type metadata accessor for ScoredCollectionRecommendation);
                sub_25FBC(v240, type metadata accessor for CollectionRecommendation);
                (*v334)(v338, v235);
              }

              v175 = v177;
              v75 = v359;
              v173 = v357;
            }
          }

          v188 = 0;
          v367 = v186 + 32;
          v189 = _swiftEmptyArrayStorage;
          while (2)
          {
            if (v188 >= *(v186 + 16))
            {
              goto LABEL_274;
            }

            v190 = (v367 + 136 * v188);
            v382 = *v190;
            v191 = v190[1];
            v192 = v190[2];
            v193 = v190[3];
            v386 = v190[4];
            v385 = v193;
            v384 = v192;
            v383 = v191;
            v194 = v190[5];
            v195 = v190[6];
            v196 = v190[7];
            LOBYTE(v390) = *(v190 + 128);
            v389 = v196;
            v388 = v195;
            v387 = v194;
            ++v188;
            v197 = BYTE8(v382);
            if (v369[2])
            {
              v198 = v382;
              v199 = v369;
              v200 = sub_1B57E4();
              v201 = *(v199 + 32);
              v186 = v366;
              v202 = -1 << v201;
              v203 = v200 & ~(-1 << v201);
              if ((*(v174 + ((v203 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v203))
              {
                v204 = ~v202;
                while (*(v369[6] + 8 * v203) != v198)
                {
                  v203 = (v203 + 1) & v204;
                  if (((*(v174 + ((v203 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v203) & 1) == 0)
                  {
                    goto LABEL_163;
                  }
                }

LABEL_156:
                if (v188 == v187)
                {
                  goto LABEL_179;
                }

                continue;
              }
            }

            break;
          }

LABEL_163:
          if (v368)
          {
            if (v368 == 1)
            {
              if ((v197 & 1) == 0)
              {
                v205 = sub_1B5604();
                sub_429F8(&v382, v381);

                if (v205)
                {
                  goto LABEL_173;
                }

LABEL_155:
                sub_5C740(&v382);
                goto LABEL_156;
              }

              goto LABEL_172;
            }

            sub_429F8(&v382, v381);
          }

          else
          {
            if (v197)
            {
              v206 = sub_1B5604();
              sub_429F8(&v382, v381);

              if (v206)
              {
                goto LABEL_173;
              }

              goto LABEL_155;
            }

LABEL_172:
            sub_429F8(&v382, v381);
          }

LABEL_173:
          v207 = swift_isUniquelyReferenced_nonNull_native();
          *v374 = v189;
          if ((v207 & 1) == 0)
          {
            sub_37574(0, v189[2] + 1, 1);
            v189 = *v374;
          }

          v209 = v189[2];
          v208 = v189[3];
          v210 = v209 + 1;
          if (v209 >= v208 >> 1)
          {
            sub_37574((v208 > 1), v209 + 1, 1);
            v210 = v209 + 1;
            v189 = *v374;
          }

          v189[2] = v210;
          v211 = &v189[17 * v209];
          *(v211 + 2) = v382;
          v212 = v383;
          v213 = v384;
          v214 = v386;
          *(v211 + 5) = v385;
          *(v211 + 6) = v214;
          *(v211 + 3) = v212;
          *(v211 + 4) = v213;
          v215 = v387;
          v216 = v388;
          v217 = v389;
          *(v211 + 160) = v390;
          *(v211 + 8) = v216;
          *(v211 + 9) = v217;
          *(v211 + 7) = v215;
          goto LABEL_156;
        }

        if (v76 == 1)
        {
          v392 = v412;
          v393 = v413;
          v394 = v414;
          v395 = v415;
          v388 = v408;
          v389 = v409;
          v390 = v410;
          v391 = v411;
          v384 = v404;
          v385 = v405;
          v386 = v406;
          v387 = v407;
          v382 = v402;
          v383 = v403;
          v374[0] = v368;
          v324 = v346;

          sub_CBBBC(&v402, v381);
          sub_C8158(v374, v369, 1, &v382, v324, &v402);
LABEL_271:
          sub_CB960(&v402);

LABEL_35:
          v77 = v363;
LABEL_36:
          if (v75 == v362)
          {
            goto LABEL_30;
          }

          continue;
        }

        if (v76 != 2)
        {
          goto LABEL_36;
        }

        v86 = *(&v407 + 1) + 64;
        v87 = 1 << *(*(&v407 + 1) + 32);
        if (v87 < 64)
        {
          v88 = ~(-1 << v87);
        }

        else
        {
          v88 = -1;
        }

        v89 = v88 & *(*(&v407 + 1) + 64);
        v90 = (v87 + 63) >> 6;
        v365 = v399 + 56;
        v366 = v399;
        v91 = v369 + 7;
        v354 = *(&v407 + 1);

        v92 = 0;
        v352 = v90;
        v353 = v86;
        if (!v89)
        {
          while (1)
          {
LABEL_63:
            v93 = v92 + 1;
            if (__OFADD__(v92, 1))
            {
              goto LABEL_278;
            }

            if (v93 >= v90)
            {
              break;
            }

            v89 = *(v86 + 8 * v93);
            ++v92;
            if (v89)
            {
              v92 = v93;
              goto LABEL_67;
            }
          }

          v75 = v359;
          LODWORD(v76) = v360;
          goto LABEL_35;
        }

LABEL_67:
        while (2)
        {
          v357 = v92;
          v358 = (v89 - 1) & v89;
          v94 = __clz(__rbit64(v89)) | (v92 << 6);
          v95 = (*(v354 + 48) + 568 * v94);
          memcpy(v416, v95, 0x231uLL);
          v96 = *(*(v354 + 56) + 8 * v94);
          memmove(&v382, v95, 0x231uLL);
          v396 = v96;
          memcpy(v381, v416, 0x231uLL);
          if (*(v366 + 16))
          {
            v97 = *&v416[0];
            v372[2] = *(&v416[2] + 8);
            v372[3] = *(&v416[3] + 8);
            v372[4] = *(&v416[4] + 8);
            *&v372[5] = *(&v416[5] + 1);
            v372[0] = *(v416 + 8);
            v372[1] = *(&v416[1] + 8);
            v379 = v416[8];
            v378 = v416[7];
            v377 = v416[6];
            v98 = *&v381[9];
            v376 = *(&v416[9] + 8);
            memcpy(v380, &v416[10] + 8, sizeof(v380));
            v99 = LOBYTE(v381[35]);
            sub_1B57F4();
            sub_1B5834(v97);

            sub_4299C(v416, v374);
            Book.Metadata.hash(into:)(v375);
            if (v98 >> 1 == 0xFFFFFFFF)
            {
              sub_1B5814(0);
            }

            else
            {
              v372[0] = v377;
              v372[1] = v378;
              v372[2] = v379;
              *&v372[3] = v98;
              *(&v372[3] + 8) = v376;
              v371[0] = v377;
              v371[1] = v378;
              v371[2] = v379;
              v371[3] = v372[3];
              *&v371[4] = *(&v376 + 1);
              sub_1B5814(1u);
              sub_42CD4(v372, v374);
              InternalAffinitySource.hash(into:)(v375);
              *&v374[16] = v371[1];
              *&v374[32] = v371[2];
              *&v374[48] = v371[3];
              *&v374[64] = *&v371[4];
              *v374 = v371[0];
              sub_42D30(v374);
            }

            memcpy(v373, v380, 0x179uLL);
            if (sub_42D84(v373) == 1)
            {
              sub_1B5814(0);
            }

            else
            {
              memcpy(v374, v380, 0x179uLL);
              sub_1B5814(1u);
              BookHistory.hash(into:)();
            }

            sub_12CC70(v375, *(&v416[34] + 1));
            if (v99 == 12)
            {
              sub_1B5814(0);
            }

            else
            {
              v374[0] = v99;
              sub_1B5814(1u);
              PositiveAffinitySource.hash(into:)(v375);
            }

            v100 = sub_1B5844();
            v101 = -1 << *(v366 + 32);
            v102 = v100 & ~v101;
            if ((*(v365 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102))
            {
              v103 = ~v101;
              while (1)
              {
                v104 = *(v366 + 48) + 568 * v102;
                memcpy(v372, v104, 0x231uLL);
                memcpy(v371, v104, 0x231uLL);
                sub_4299C(v372, &v370);
                LOBYTE(v104) = _s20BooksPersonalization8SeedBookV2eeoiySbAC_ACtFZ_0(v371, v381);
                memcpy(v374, v371, sizeof(v374));
                sub_2601C(v374);
                if (v104)
                {
                  break;
                }

                v102 = (v102 + 1) & v103;
                if (((*(v365 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
                {
                  goto LABEL_82;
                }
              }

              sub_42F48(&v382, &qword_22B480, &unk_1C3A28);
LABEL_136:
              v90 = v352;
              v86 = v353;
              v92 = v357;
              v89 = v358;
              if (!v358)
              {
                goto LABEL_63;
              }

              continue;
            }
          }

          else
          {

            sub_4299C(v416, v374);
          }

          break;
        }

LABEL_82:
        v105 = *(v96 + 16);
        if (!v105)
        {
          v107 = _swiftEmptyArrayStorage;
LABEL_108:
          if ((v410 & 0x8000000000000000) != 0)
          {
            goto LABEL_282;
          }

          v136 = v107[2];
          if (v136 >= v410)
          {
            v137 = v410;
          }

          else
          {
            v137 = v107[2];
          }

          if (v410)
          {
            v138 = v137;
          }

          else
          {
            v138 = 0;
          }

          if (v136 != v138)
          {
            sub_5136C(v107, (v107 + 4), 0, (2 * v138) | 1);
            v140 = v139;

            v136 = v140[2];
            v107 = v140;
          }

          v141 = _swiftEmptyArrayStorage;
          if (v136)
          {
            *&v372[0] = _swiftEmptyArrayStorage;
            sub_9ACC4(v136);
            v141 = *&v372[0];
            v142 = v136 - 1;
            for (k = 4; ; k += 17)
            {
              v144 = *&v107[k];
              v145 = *&v107[k + 2];
              v146 = *&v107[k + 4];
              v381[3] = *&v107[k + 6];
              v381[2] = v146;
              v381[1] = v145;
              v381[0] = v144;
              sub_42BA4(v381, v374);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_375F8(0, v141[2] + 1, 1);
                v141 = *&v372[0];
              }

              v148 = v141[2];
              v147 = v141[3];
              if (v148 >= v147 >> 1)
              {
                sub_375F8((v147 > 1), v148 + 1, 1);
                v141 = *&v372[0];
              }

              v141[2] = v148 + 1;
              v149 = &v141[8 * v148];
              v150 = v381[0];
              v151 = v381[1];
              v152 = v381[3];
              v149[4] = v381[2];
              v149[5] = v152;
              v149[2] = v150;
              v149[3] = v151;
              if (!v142)
              {
                break;
              }

              --v142;
            }
          }

          v154 = v347;
          v153 = v348;
          v66 = v355;
          v155 = v356;
          if (v141[2] >= *(&v409 + 1))
          {
            *&v381[0] = v141;
            sub_2B0C(&qword_229500, &unk_1BC580);
            sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
            sub_1B43C4();
            if ((*v350)(v153, 1, v155) != 1)
            {
              (*v336)(v154, v153, v155);
              v156 = v408;
              if (*(v408 + 16) && (v157 = sub_3ABBC(v416), (v158 & 1) != 0))
              {
                v159 = *(*(v156 + 56) + 8 * v157);
                v160 = sub_2B0C(&qword_228F40, &unk_1BB360);
                v161 = *(v160 + 48);
                v162 = v333;
                (*v335)(v333, v154, v155);
                memcpy(&v162[v161], v416, 0x231uLL);
                *&v162[*(v160 + 64)] = v159;

                v163 = v162;
              }

              else
              {
                v164 = *(sub_2B0C(&qword_228F40, &unk_1BB360) + 48);
                v163 = v333;
                (*v335)(v333, v154, v155);
                memcpy((v163 + v164), v416, 0x231uLL);
                *(v163 + *(sub_2B0C(&qword_228F40, &unk_1BB360) + 64)) = _swiftEmptySetSingleton;
              }

              swift_storeEnumTagMultiPayload();
              v165 = *(&v410 + 1);
              sub_4299C(v416, v381);
              v166 = sub_1AB914(v165);
              v167 = v342;
              sub_CB8C0(v163, v342, type metadata accessor for CollectionRecommendation);
              v168 = v364;
              *(v167 + *(v364 + 20)) = v368;
              *(v167 + *(v168 + 24)) = 1;
              *(v167 + *(v168 + 28)) = v166;
              v169 = v415;
              swift_beginAccess();
              sub_BE058(v167, v169);
              swift_endAccess();
              sub_25FBC(v167, type metadata accessor for ScoredCollectionRecommendation);
              sub_25FBC(v163, type metadata accessor for CollectionRecommendation);
              (*v334)(v154, v155);
              sub_42F48(&v382, &qword_22B480, &unk_1C3A28);
              v65 = v351;
              v66 = v355;
              goto LABEL_136;
            }

            sub_42F48(v153, &qword_2296F0, &unk_1C3A10);
          }

          else
          {
          }

          sub_42F48(&v382, &qword_22B480, &unk_1C3A28);
          v65 = v351;
          goto LABEL_136;
        }

        v106 = 0;
        v367 = v96 + 32;
        v107 = _swiftEmptyArrayStorage;
        while (2)
        {
          if (v106 < *(v96 + 16))
          {
            v108 = v367 + 136 * v106;
            v381[0] = *v108;
            v109 = *(v108 + 16);
            v110 = *(v108 + 32);
            v111 = *(v108 + 48);
            v381[4] = *(v108 + 64);
            v381[3] = v111;
            v381[2] = v110;
            v381[1] = v109;
            v112 = *(v108 + 80);
            v113 = *(v108 + 96);
            v114 = *(v108 + 112);
            LOBYTE(v381[8]) = *(v108 + 128);
            v381[7] = v114;
            v381[6] = v113;
            v381[5] = v112;
            ++v106;
            v115 = BYTE8(v381[0]);
            if (v369[2])
            {
              v116 = *&v381[0];
              v117 = v96;
              v118 = v369;
              v119 = sub_1B57E4();
              v120 = *(v118 + 32);
              v96 = v117;
              v121 = -1 << v120;
              v122 = v119 & ~(-1 << v120);
              if ((*(v91 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122))
              {
                v123 = ~v121;
                while (*(v369[6] + 8 * v122) != v116)
                {
                  v122 = (v122 + 1) & v123;
                  if (((*(v91 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122) & 1) == 0)
                  {
                    goto LABEL_92;
                  }
                }

LABEL_85:
                if (v106 == v105)
                {
                  goto LABEL_108;
                }

                continue;
              }
            }

LABEL_92:
            if (v368)
            {
              if (v368 == 1)
              {
                if ((v115 & 1) == 0)
                {
                  v124 = sub_1B5604();
                  sub_429F8(v381, v374);

                  if (v124)
                  {
                    goto LABEL_102;
                  }

LABEL_84:
                  sub_5C740(v381);
                  goto LABEL_85;
                }

                goto LABEL_101;
              }

              sub_429F8(v381, v374);
            }

            else
            {
              if (v115)
              {
                v125 = sub_1B5604();
                sub_429F8(v381, v374);

                if (v125)
                {
                  goto LABEL_102;
                }

                goto LABEL_84;
              }

LABEL_101:
              sub_429F8(v381, v374);
            }

LABEL_102:
            v126 = swift_isUniquelyReferenced_nonNull_native();
            *&v372[0] = v107;
            if ((v126 & 1) == 0)
            {
              sub_37574(0, v107[2] + 1, 1);
              v107 = *&v372[0];
            }

            v128 = v107[2];
            v127 = v107[3];
            if (v128 >= v127 >> 1)
            {
              sub_37574((v127 > 1), v128 + 1, 1);
              v107 = *&v372[0];
            }

            v107[2] = v128 + 1;
            v129 = &v107[17 * v128];
            *(v129 + 2) = v381[0];
            v130 = v381[1];
            v131 = v381[2];
            v132 = v381[4];
            *(v129 + 5) = v381[3];
            *(v129 + 6) = v132;
            *(v129 + 3) = v130;
            *(v129 + 4) = v131;
            v133 = v381[5];
            v134 = v381[6];
            v135 = v381[7];
            *(v129 + 160) = v381[8];
            *(v129 + 8) = v134;
            *(v129 + 9) = v135;
            *(v129 + 7) = v133;
            goto LABEL_85;
          }

          break;
        }

        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        *&v382 = v397;
        sub_42F48(&v382, &qword_2292C8, &unk_1BCB00);
        *&v381[0] = v398;
        sub_42F48(v381, &qword_2292C8, &unk_1BCB00);
        *v374 = v399;
        sub_42F48(v374, &qword_229300, &qword_1BC3B8);
        *&v372[0] = v400;
        sub_42F48(v372, &qword_2292C8, &unk_1BCB00);
        *&v371[0] = v401;
        v68 = v371;
LABEL_29:
        sub_42F48(v68, &qword_22B478, &qword_1C3A20);

        v70 = sub_BB174(v69);
        v72 = v71;

        v73 = sub_C6EA8(v70, v72);

        sub_CB960(&v402);

        sub_CB960(&v402);

        sub_CB960(&v402);

        return v73;
    }
  }
}

uint64_t sub_BDF88(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4 <= a2)
  {
    goto LABEL_7;
  }

  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v4 == 1)
  {
LABEL_13:
    result = sub_1B5234();
    __break(1u);
    return result;
  }

  if (!*(v3 + 88))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v3 + 96) >= *(result + 8))
  {
    return result;
  }

  v5 = result;
  sub_C5694();
  result = v5;
LABEL_7:

  return sub_BAAD4(result);
}

uint64_t sub_BE058(uint64_t a1, uint64_t a2)
{
  v5 = sub_2B0C(&qword_229408, &unk_1BCC10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ScoredCollectionRecommendation(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v2 + 16);
  if (v13 > a2)
  {
    if (v13)
    {
      if (v13 == 1)
      {
LABEL_13:
        result = sub_1B5234();
        __break(1u);
        return result;
      }

      sub_43050(*v2 + *(v6 + 72) + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v8, &qword_229408, &unk_1BCC10);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        sub_CBA88(v8, v12, type metadata accessor for ScoredCollectionRecommendation);
        v14 = *(v9 + 28);
        v15 = *(a1 + v14);
        v16 = *&v12[v14];
        result = sub_25FBC(v12, type metadata accessor for ScoredCollectionRecommendation);
        if (v16 < v15)
        {
          sub_C5ADC();
          return sub_BADCC(a1);
        }

        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  return sub_BADCC(a1);
}

uint64_t sub_BE2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v94 = type metadata accessor for CollectionRecommendation(0);
  v6 = __chkstk_darwin(v94);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v77 = &v76 - v9;
  v79 = type metadata accessor for ScoredCollectionRecommendation(0);
  v10 = *(v79 - 8);
  v11 = __chkstk_darwin(v79);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v96 = &v76 - v15;
  __chkstk_darwin(v14);
  v17 = &v76 - v16;
  v87 = a1;
  CollectionRecommendation.collectionRecommendationType.getter(v97);
  v95 = v97[0];
  v18 = v3[3];
  v19 = *(v18 + 16);

  v20 = 1.0;
  v21 = 1.0;
  if (v19)
  {
    v22 = sub_3AA80(v95);
    if (v23)
    {
      v21 = *(*(v18 + 56) + 8 * v22);
    }
  }

  v24 = v3[4];
  v25 = *(v24 + 16);

  v86 = v24;
  if (v25)
  {
    v26 = sub_3AA80(v95);
    if (v27)
    {
      v20 = *(*(v86 + 56) + 8 * v26);
    }
  }

  v80 = v18;
  v81 = v13;
  v83 = v3;
  v84 = a2;
  v28 = *v3;
  v29 = *(*v3 + 16);
  v82 = v10;
  v78 = v28;
  v85 = v29;
  if (v29)
  {
    v30 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v31 = *(v10 + 72);
    v32 = v28 + v30;
    v92 = 0x80000000001D47A0;
    v93 = v30;
    v90 = 0x80000000001D4760;
    v91 = 0x80000000001D4780;
    v89 = 0x80000000001D4740;
    v33 = _swiftEmptyArrayStorage;
    v88 = 0x80000000001D4FE0;
    while (2)
    {
      sub_CB8C0(v32, v17, type metadata accessor for ScoredCollectionRecommendation);
      sub_CB8C0(v17, v8, type metadata accessor for CollectionRecommendation);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_25FBC(v8, type metadata accessor for CollectionRecommendation);
          v34 = 0xE500000000000000;
          v35 = 0x736B6F6F62;
          break;
        case 2u:
          v38 = sub_2B0C(&qword_228F40, &unk_1BB360);
          memcpy(v97, &v8[*(v38 + 48)], 0x231uLL);
          sub_2601C(v97);

          v39 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v39 - 8) + 8))(v8, v39);
          v35 = 0xD000000000000010;
          v34 = v88;
          break;
        case 3u:
          v40 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v40 - 8) + 8))(v8, v40);
          v35 = 0x417942736B6F6F62;
          v34 = 0xED0000726F687475;
          break;
        case 4u:
          v37 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v37 - 8) + 8))(v8, v37);
          v35 = 0xD000000000000017;
          v34 = v89;
          break;
        case 5u:
          v42 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v42 - 8) + 8))(v8, v42);
          v35 = 0x476E49736B6F6F62;
          v34 = 0xEC00000065726E65;
          break;
        case 6u:
          v43 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v43 - 8) + 8))(v8, v43);
          v35 = 0xD000000000000011;
          v34 = v90;
          break;
        case 7u:
          v41 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v41 - 8) + 8))(v8, v41);
          v35 = 0xD000000000000011;
          v34 = v91;
          break;
        case 8u:
          v44 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v44 - 8) + 8))(v8, v44);
          v35 = 0xD000000000000013;
          v34 = v92;
          break;
        case 9u:
          sub_25FBC(v8, type metadata accessor for CollectionRecommendation);
          v34 = 0xE600000000000000;
          v35 = 0x736569726573;
          break;
        case 0xAu:
          sub_25FBC(v8, type metadata accessor for CollectionRecommendation);
          v36 = 1954047342;
          goto LABEL_24;
        case 0xBu:
          sub_25FBC(v8, type metadata accessor for CollectionRecommendation);
          v36 = 1701998445;
LABEL_24:
          v35 = v36 | 0x65536E4900000000;
          v34 = 0xEC00000073656972;
          break;
        case 0xCu:
          sub_25FBC(v8, type metadata accessor for CollectionRecommendation);
          v35 = 0x6867696C68676968;
          v34 = 0xEA00000000007374;
          break;
        default:
          sub_25FBC(v8, type metadata accessor for CollectionRecommendation);
          v34 = 0xE400000000000000;
          v35 = 1802465122;
          break;
      }

      v45 = 0xE400000000000000;
      v46 = 1802465122;
      switch(v95)
      {
        case 1:
          v45 = 0xE500000000000000;
          if (v35 == 0x736B6F6F62)
          {
            goto LABEL_49;
          }

          goto LABEL_52;
        case 2:
          v45 = v88;
          if (v35 != 0xD000000000000010)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 3:
          v45 = 0xED0000726F687475;
          if (v35 != 0x417942736B6F6F62)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 4:
          v45 = v89;
          if (v35 != 0xD000000000000017)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 5:
          v47 = 0x476E49736B6F6F62;
          v48 = 1701998181;
          goto LABEL_43;
        case 6:
          v45 = v90;
          if (v35 != 0xD000000000000011)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 7:
          v45 = v91;
          if (v35 != 0xD000000000000011)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 8:
          v45 = v92;
          if (v35 != 0xD000000000000013)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 9:
          v45 = 0xE600000000000000;
          if (v35 != 0x736569726573)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 10:
          v46 = 0x65536E497478656ELL;
          v45 = 0xEC00000073656972;
          goto LABEL_48;
        case 11:
          v47 = 0x65536E4965726F6DLL;
          v48 = 1936025970;
LABEL_43:
          v45 = v48 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v35 != v47)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        case 12:
          v45 = 0xEA00000000007374;
          if (v35 != 0x6867696C68676968)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        default:
LABEL_48:
          if (v35 != v46)
          {
            goto LABEL_52;
          }

LABEL_49:
          if (v34 == v45)
          {
          }

          else
          {
LABEL_52:
            v49 = sub_1B5604();

            if ((v49 & 1) == 0)
            {
              sub_25FBC(v17, type metadata accessor for ScoredCollectionRecommendation);
              goto LABEL_10;
            }
          }

          sub_CBA88(v17, v96, type metadata accessor for ScoredCollectionRecommendation);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98 = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_37934(0, v33[2] + 1, 1);
            v33 = v98;
          }

          v52 = v33[2];
          v51 = v33[3];
          if (v52 >= v51 >> 1)
          {
            sub_37934((v51 > 1), v52 + 1, 1);
            v33 = v98;
          }

          v33[2] = v52 + 1;
          sub_CBA88(v96, v33 + v93 + v52 * v31, type metadata accessor for ScoredCollectionRecommendation);
LABEL_10:
          v32 += v31;
          if (--v29)
          {
            continue;
          }

          goto LABEL_59;
      }
    }
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_59:
  v53 = v33[2];

  v54 = v77;
  sub_CB8C0(v87, v77, type metadata accessor for CollectionRecommendation);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v55 = *(v54 + *(sub_2B0C(&qword_229740, &qword_1C6EE0) + 48));
    v56 = sub_2B0C(&qword_228F38, &qword_1BCB50);
    (*(*(v56 - 8) + 8))(v54, v56);
    v58 = v83;
    v57 = v84;
    v59 = v83[5];
    v60 = 1.0;
    v62 = v81;
    v61 = v82;
    v63 = v86;
    if (*(v59 + 16))
    {
      v64 = sub_43124(v55);
      if (v65)
      {
        v60 = *(*(v59 + 56) + 8 * v64);
      }
    }
  }

  else
  {
    sub_25FBC(v54, type metadata accessor for CollectionRecommendation);
    v60 = 1.0;
    v58 = v83;
    v57 = v84;
    v62 = v81;
    v61 = v82;
    v63 = v86;
  }

  v66 = *(v87 + *(v79 + 28));
  v68 = *(v58 + 1);
  v67 = *(v58 + 2);
  sub_CB8C0(v87, v62, type metadata accessor for ScoredCollectionRecommendation);
  v69 = v78;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v69 = sub_33C88(0, v85 + 1, 1, v69);
  }

  v71 = v69[2];
  v70 = v69[3];
  v72 = v69;
  if (v71 >= v70 >> 1)
  {
    v72 = sub_33C88((v70 > 1), v71 + 1, 1, v69);
  }

  v73 = v66 * pow(v67, v85);
  v74 = v68 + v60 * (v21 * (v73 * pow(v20, v53)));
  v72[2] = v71 + 1;
  sub_CBA88(v62, v72 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v71, type metadata accessor for ScoredCollectionRecommendation);

  *v57 = v72;
  *(v57 + 8) = v74;
  *(v57 + 16) = v67;
  *(v57 + 24) = v80;
  *(v57 + 32) = v63;
  *(v57 + 40) = result;
  *(v57 + 48) = 0;
  return result;
}

uint64_t sub_BEF28@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();

  v4 = sub_BB45C(v3);
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t sub_BEF94@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(result + 32);
    v6 = *(result + 40);
    v5 = *(result + 48);
    v7 = *(result + 56);
    v8 = *(result + 64);
    v9 = *(result + 72);
    v10 = *(result + 80);
    v11 = result;

    v12 = v11 + 8;
    v13 = 1;
LABEL_3:
    v14 = v12 + 56 * v13;
    while (1)
    {
      if (v3 == v13)
      {
        *a2 = v4;
        *(a2 + 8) = v6;
        *(a2 + 16) = v5;
        *(a2 + 24) = v7;
        *(a2 + 32) = v8;
        *(a2 + 40) = v9;
        *(a2 + 48) = v10 & 1;
        return result;
      }

      if (v13 >= v3)
      {
        break;
      }

      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_12;
      }

      v16 = *(v14 + 32);
      ++v13;
      v14 += 56;
      if (v6 < v16)
      {
        v21 = v12;
        v4 = *(v14 - 32);
        v5 = *(v14 - 16);
        v17 = *(v14 - 8);
        v18 = *v14;
        v19 = *(v14 + 8);
        v20 = *(v14 + 16);

        v12 = v21;
        v13 = v15;
        v6 = v16;
        v7 = v17;
        v10 = v20;
        v8 = v18;
        v9 = v19;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_BF11C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_BF160(uint64_t a1)
{
  v3 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  __chkstk_darwin(v3 - 8);
  v5 = &v129 - v4;
  v6 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v146 = *(v6 - 8);
  __chkstk_darwin(v6);
  v144 = &v129 - v7;
  v8 = type metadata accessor for CollectionRecommendation(0);
  v139 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v140 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v129 - v11;
  v13 = v1[2];
  if (!*(v13 + 16) || (v14 = v1[13], v15 = v1[16], v136 = v1[15], v141 = v15, v16 = sub_3AA80(12), (v17 & 1) == 0) || (v18 = *(v13 + 56) + 24 * v16, (*(v18 + 8) & 1) != 0) || *v18 < 1)
  {

    return a1;
  }

  v147 = v14;
  v132 = v8;
  v142 = v6;
  v138 = v5;
  v19 = *(a1 + 16);
  v150 = *(v18 + 16);
  v130 = a1;
  if (v19)
  {
    v20 = a1 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v21 = *(v139 + 72);

    v22 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_CB8C0(v20, v12, type metadata accessor for CollectionRecommendation);
      v24 = CollectionRecommendation.books.getter();
      result = sub_25FBC(v12, type metadata accessor for CollectionRecommendation);
      v25 = *(v24 + 2);
      v26 = *(v22 + 2);
      v27 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_126;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v27 <= *(v22 + 3) >> 1)
      {
        if (*(v24 + 2))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v26 <= v27)
        {
          v28 = v26 + v25;
        }

        else
        {
          v28 = v26;
        }

        result = sub_3349C(result, v28, 1, v22);
        v22 = result;
        if (*(v24 + 2))
        {
LABEL_18:
          if ((*(v22 + 3) >> 1) - *(v22 + 2) < v25)
          {
            goto LABEL_128;
          }

          swift_arrayInitWithCopy();

          if (v25)
          {
            v29 = *(v22 + 2);
            v30 = __OFADD__(v29, v25);
            v31 = v29 + v25;
            if (v30)
            {
              goto LABEL_129;
            }

            *(v22 + 2) = v31;
          }

          goto LABEL_8;
        }
      }

      if (v25)
      {
        goto LABEL_127;
      }

LABEL_8:
      v20 += v21;
      if (!--v19)
      {
        goto LABEL_25;
      }
    }
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_25:
  v32 = *(v22 + 2);
  v33 = v147;
  if (v32)
  {
    *&v153 = _swiftEmptyArrayStorage;
    sub_3741C(0, v32, 0);
    v34 = v153;
    v35 = *(v153 + 16);
    v36 = 32;
    do
    {
      v37 = *&v22[v36];
      *&v153 = v34;
      v38 = v34[3];
      if (v35 >= v38 >> 1)
      {
        sub_3741C((v38 > 1), v35 + 1, 1);
        v34 = v153;
      }

      v34[2] = v35 + 1;
      v34[v35 + 4] = v37;
      v36 += 64;
      ++v35;
      --v32;
    }

    while (v32);
  }

  else
  {

    v34 = _swiftEmptyArrayStorage;
  }

  v39 = sub_40854(v34);

  v40 = 0;
  v41 = v150;
  v149 = v150 + 56;
  v151 = v33 + 32;
  v42 = v39 + 56;
  v137 = (v146 + 48);
  v131 = (v146 + 16);
  v133 = (v146 + 8);
  v134 = (v146 + 32);
  v135 = _swiftEmptyArrayStorage;
  v148 = v39;
  while (1)
  {
    if (!*(v41 + 16))
    {
      goto LABEL_35;
    }

    v146 = v40;
    v43 = *(&off_2131F8 + v40 + 32);
    sub_1B57F4();

    sub_1B4884();

    v44 = sub_1B5844();
    v45 = -1 << *(v41 + 32);
    v46 = v44 & ~v45;
    if ((*(v149 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
    {
      break;
    }

LABEL_33:

LABEL_34:
    v40 = v146;
LABEL_35:
    if (++v40 == 3)
    {

      *&v153 = v130;

      sub_5F428(v135);
      return v153;
    }
  }

  v47 = ~v45;
  while (!*(*(v150 + 48) + v46))
  {
    v49 = 0xE500000000000000;
    v48 = 0x6B6F6F6265;
    if (!v43)
    {
      goto LABEL_53;
    }

LABEL_44:
    if (v43 == 1)
    {
      v50 = 0x6F6F626F69647561;
    }

    else
    {
      v50 = 0x646578696DLL;
    }

    if (v43 == 1)
    {
      v51 = 0xE90000000000006BLL;
    }

    else
    {
      v51 = 0xE500000000000000;
    }

    if (v48 == v50)
    {
      goto LABEL_54;
    }

LABEL_55:
    v52 = sub_1B5604();

    if (v52)
    {
      goto LABEL_59;
    }

    v46 = (v46 + 1) & v47;
    if (((*(v149 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
    {
      v41 = v150;
      goto LABEL_33;
    }
  }

  if (*(*(v150 + 48) + v46) == 1)
  {
    v48 = 0x6F6F626F69647561;
    v49 = 0xE90000000000006BLL;
    if (!v43)
    {
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  v49 = 0xE500000000000000;
  v48 = 0x646578696DLL;
  if (v43)
  {
    goto LABEL_44;
  }

LABEL_53:
  v51 = 0xE500000000000000;
  if (v48 != 0x6B6F6F6265)
  {
    goto LABEL_55;
  }

LABEL_54:
  if (v49 != v51)
  {
    goto LABEL_55;
  }

LABEL_59:

  v53 = *(v33 + 16);
  v54 = v148;
  if (!v53)
  {
    v56 = _swiftEmptyArrayStorage;
LABEL_76:
    v77 = v56[2];
    if (v77)
    {
      v78 = 0;
      v145 = v56 + 4;
      v143 = v77 - 1;
      v79 = _swiftEmptyArrayStorage;
LABEL_78:
      v80 = &v145[17 * v78];
      v81 = v78;
      while (1)
      {
        if (v81 >= v56[2])
        {
          goto LABEL_125;
        }

        v153 = *v80;
        v82 = *(v80 + 1);
        v83 = *(v80 + 2);
        v84 = *(v80 + 4);
        v156 = *(v80 + 3);
        v157 = v84;
        v154 = v82;
        v155 = v83;
        v85 = *(v80 + 5);
        v86 = *(v80 + 6);
        v87 = *(v80 + 7);
        v161 = *(v80 + 128);
        v159 = v86;
        v160 = v87;
        v158 = v85;
        if (v43)
        {
          if (v43 != 1)
          {
            sub_429F8(&v153, v152);
            goto LABEL_91;
          }

          if (BYTE8(v153))
          {
            goto LABEL_90;
          }

          v88 = sub_1B5604();
          sub_429F8(&v153, v152);

          if (v88)
          {
            goto LABEL_91;
          }
        }

        else
        {
          if ((BYTE8(v153) & 1) == 0)
          {
LABEL_90:
            sub_429F8(&v153, v152);

LABEL_91:
            result = swift_isUniquelyReferenced_nonNull_native();
            v162 = v79;
            if ((result & 1) == 0)
            {
              result = sub_37574(0, v79[2] + 1, 1);
              v79 = v162;
            }

            v91 = v79[2];
            v90 = v79[3];
            v92 = v91 + 1;
            if (v91 >= v90 >> 1)
            {
              result = sub_37574((v90 > 1), v91 + 1, 1);
              v92 = v91 + 1;
              v79 = v162;
            }

            v78 = v81 + 1;
            v79[2] = v92;
            v93 = &v79[17 * v91];
            *(v93 + 2) = v153;
            v94 = v154;
            v95 = v155;
            v96 = v157;
            *(v93 + 5) = v156;
            *(v93 + 6) = v96;
            *(v93 + 3) = v94;
            *(v93 + 4) = v95;
            v97 = v158;
            v98 = v159;
            v99 = v160;
            *(v93 + 160) = v161;
            *(v93 + 8) = v98;
            *(v93 + 9) = v99;
            *(v93 + 7) = v97;
            if (v143 != v81)
            {
              goto LABEL_78;
            }

            goto LABEL_98;
          }

          v89 = sub_1B5604();
          sub_429F8(&v153, v152);

          if (v89)
          {
            goto LABEL_91;
          }
        }

        ++v81;
        result = sub_5C740(&v153);
        v80 += 17;
        if (v77 == v81)
        {
          goto LABEL_98;
        }
      }
    }

    v79 = _swiftEmptyArrayStorage;
LABEL_98:

    v100 = v79[2];
    if (v100)
    {
      v162 = _swiftEmptyArrayStorage;
      sub_375F8(0, v100, 0);
      v101 = v162;
      v102 = v100 - 1;
      for (i = 4; ; i += 17)
      {
        v104 = *&v79[i];
        v105 = *&v79[i + 2];
        v106 = *&v79[i + 6];
        v155 = *&v79[i + 4];
        v156 = v106;
        v153 = v104;
        v154 = v105;
        sub_42BA4(&v153, v152);
        v162 = v101;
        v108 = v101[2];
        v107 = v101[3];
        if (v108 >= v107 >> 1)
        {
          sub_375F8((v107 > 1), v108 + 1, 1);
          v101 = v162;
        }

        v101[2] = v108 + 1;
        v109 = &v101[8 * v108];
        v110 = v153;
        v111 = v154;
        v112 = v156;
        v109[4] = v155;
        v109[5] = v112;
        v109[2] = v110;
        v109[3] = v111;
        if (!v102)
        {
          break;
        }

        --v102;
      }
    }

    v33 = v147;
    v114 = sub_43174();
    v116 = v115;
    v118 = v117;
    if (v117)
    {
      v120 = v113;
      sub_1B5744();
      swift_unknownObjectRetain_n();
      v121 = swift_dynamicCastClass();
      if (!v121)
      {
        swift_unknownObjectRelease();
        v121 = _swiftEmptyArrayStorage;
      }

      v122 = v121[2];

      if (__OFSUB__(v118 >> 1, v116))
      {
        goto LABEL_130;
      }

      if (v122 == (v118 >> 1) - v116)
      {
        v119 = swift_dynamicCastClass();
        v33 = v147;
        if (!v119)
        {
          swift_unknownObjectRelease();
          v119 = _swiftEmptyArrayStorage;
        }

LABEL_112:
        *&v153 = v119;
        sub_2B0C(&qword_229500, &unk_1BC580);
        sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
        v123 = v138;
        sub_1B43C4();
        v124 = v142;
        if ((*v137)(v123, 1, v142) == 1)
        {
          swift_unknownObjectRelease();
          sub_42F48(v123, &qword_2296F0, &unk_1C3A10);
          v41 = v150;
        }

        else
        {
          result = (*v134)(v144, v123, v124);
          v125 = (v118 >> 1) - v116;
          if (__OFSUB__(v118 >> 1, v116))
          {
            goto LABEL_131;
          }

          v41 = v150;
          if (v125 >= v136)
          {
            (*v131)(v140, v144, v142);
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v135 = sub_33474(0, v135[2] + 1, 1, v135);
            }

            v127 = v135[2];
            v126 = v135[3];
            if (v127 >= v126 >> 1)
            {
              v135 = sub_33474((v126 > 1), v127 + 1, 1, v135);
            }

            swift_unknownObjectRelease();
            (*v133)(v144, v142);
            v128 = v135;
            v135[2] = v127 + 1;
            sub_CBA88(v140, v128 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v127, type metadata accessor for CollectionRecommendation);
          }

          else
          {
            (*v133)(v144, v142);
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_34;
      }

      swift_unknownObjectRelease();
      v113 = v120;
      v33 = v147;
    }

    sub_511BC(v114, v113, v116, v118);
    goto LABEL_112;
  }

  v55 = 0;
  v56 = _swiftEmptyArrayStorage;
  while (v55 < *(v33 + 16))
  {
    v57 = (v151 + 136 * v55);
    v58 = v57[1];
    v59 = v57[2];
    v60 = v57[4];
    v156 = v57[3];
    v157 = v60;
    v154 = v58;
    v155 = v59;
    v61 = v57[5];
    v62 = v57[6];
    v63 = v57[7];
    v161 = *(v57 + 128);
    v159 = v62;
    v160 = v63;
    v158 = v61;
    v153 = *v57;
    ++v55;
    if (*(v54 + 16) && (v64 = v153, result = sub_1B57E4(), v65 = -1 << *(v54 + 32), v66 = result & ~v65, ((*(v42 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) != 0))
    {
      v67 = ~v65;
      while (*(*(v54 + 48) + 8 * v66) != v64)
      {
        v66 = (v66 + 1) & v67;
        if (((*(v42 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      sub_429F8(&v153, v152);
      result = swift_isUniquelyReferenced_nonNull_native();
      v162 = v56;
      if ((result & 1) == 0)
      {
        result = sub_37574(0, v56[2] + 1, 1);
        v56 = v162;
      }

      v69 = v56[2];
      v68 = v56[3];
      if (v69 >= v68 >> 1)
      {
        result = sub_37574((v68 > 1), v69 + 1, 1);
        v56 = v162;
      }

      v56[2] = v69 + 1;
      v70 = &v56[17 * v69];
      *(v70 + 2) = v153;
      v71 = v154;
      v72 = v155;
      v73 = v157;
      *(v70 + 5) = v156;
      *(v70 + 6) = v73;
      *(v70 + 3) = v71;
      *(v70 + 4) = v72;
      v74 = v158;
      v75 = v159;
      v76 = v160;
      *(v70 + 160) = v161;
      *(v70 + 8) = v75;
      *(v70 + 9) = v76;
      *(v70 + 7) = v74;
      v33 = v147;
      v54 = v148;
      if (v55 == v53)
      {
        goto LABEL_76;
      }
    }

    else
    {
LABEL_61:
      if (v55 == v53)
      {
        goto LABEL_76;
      }
    }
  }

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
  return result;
}

uint64_t sub_BFFCC(void *__src, char **a2, uint64_t a3)
{
  memcpy(__dst, __src, 0x231uLL);
  sub_4299C(__dst, v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = *a2;
  v7 = v28[0];
  *a2 = 0x8000000000000000;
  v9 = sub_3ABBC(__dst);
  v10 = *(v7 + 2);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
LABEL_15:
    v7 = sub_33358(0, *(v7 + 2) + 1, 1, v7);
    *(v3 + 8 * v9) = v7;
    goto LABEL_11;
  }

  v13 = v8;
  if (*(v7 + 3) >= v12)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_186EBC();
      v7 = v28[0];
    }
  }

  else
  {
    sub_1810D4(v12, isUniquelyReferenced_nonNull_native);
    v7 = v28[0];
    v14 = sub_3ABBC(__dst);
    if ((v13 & 1) != (v15 & 1))
    {
      result = sub_1B5784();
      __break(1u);
      return result;
    }

    v9 = v14;
  }

  *a2 = v7;

  v16 = *a2;
  if (v13)
  {
    sub_2601C(__dst);
  }

  else
  {
    sub_15BB6C(v9, __dst, _swiftEmptyArrayStorage, *a2);
  }

  v3 = *(v16 + 56);
  v7 = *(v3 + 8 * v9);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 8 * v9) = v7;
  if ((v17 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v19 = *(v7 + 2);
  v18 = *(v7 + 3);
  if (v19 >= v18 >> 1)
  {
    v7 = sub_33358((v18 > 1), v19 + 1, 1, v7);
    *(v3 + 8 * v9) = v7;
  }

  *(v7 + 2) = v19 + 1;
  v20 = &v7[136 * v19];
  *(v20 + 2) = *a3;
  v21 = *(a3 + 16);
  v22 = *(a3 + 32);
  v23 = *(a3 + 64);
  *(v20 + 5) = *(a3 + 48);
  *(v20 + 6) = v23;
  *(v20 + 3) = v21;
  *(v20 + 4) = v22;
  v24 = *(a3 + 80);
  v25 = *(a3 + 96);
  v26 = *(a3 + 112);
  v20[160] = *(a3 + 128);
  *(v20 + 8) = v25;
  *(v20 + 9) = v26;
  *(v20 + 7) = v24;
  return sub_429F8(a3, v28);
}

uint64_t sub_C01C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 >= 2;
  v3 = v1 - 2;
  if (v2)
  {
    v25 = v3;
    v5 = *(a1 + 48);
    v30 = *(a1 + 32);
    v31 = v5;
    v6 = *(a1 + 80);
    v32 = *(a1 + 64);
    v33 = v6;
    v7 = sub_880FC();

    for (i = 168; ; i += 136)
    {
      v9 = *(a1 + i + 80);
      v10 = *(a1 + i + 112);
      v36 = *(a1 + i + 96);
      v37 = v10;
      v11 = *(a1 + i + 16);
      v12 = *(a1 + i + 48);
      v32 = *(a1 + i + 32);
      v33 = v12;
      v13 = *(a1 + i + 48);
      v34 = *(a1 + i + 64);
      v35 = v9;
      v14 = *(a1 + i + 16);
      v30 = *(a1 + i);
      v31 = v14;
      *&v26[136] = v30;
      v27 = v11;
      v38 = *(a1 + i + 128);
      v28 = v32;
      v29 = v13;
      sub_429F8(&v30, v26);
      v15 = sub_880FC();
      v16 = v7[32];
      v17 = v16 & 0x3F;
      v18 = ((1 << v16) + 63) >> 6;
      v19 = 8 * v18;

      if (v17 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        __chkstk_darwin(isStackAllocationSafe);
        bzero(&v24 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0), v19);
        v21 = sub_C6BC8(&v24 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0), v18, v7, v15);

        sub_5C740(&v30);
      }

      else
      {
        v22 = swift_slowAlloc();

        v21 = sub_C68E4(v22, v18, v7, v15);

        swift_bridgeObjectRelease_n();

        sub_5C740(&v30);
      }

      v7 = v21;
      if (!*(v21 + 16))
      {

        return 0;
      }

      if (!v25)
      {
        break;
      }

      --v25;
    }
  }

  return 1;
}

void sub_C04B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3747C(0, v1, 0);
    v3 = (a1 + 88);
    while (1)
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v13._countAndFlagsBits = sub_1B5594();
      sub_1B48D4(v13);

      v14._countAndFlagsBits = 58;
      v14._object = 0xE100000000000000;
      sub_1B48D4(v14);
      sub_1B51F4();
      v15._countAndFlagsBits = 58;
      v15._object = 0xE100000000000000;
      sub_1B48D4(v15);
      sub_2B0C(&qword_22A048, &unk_1BFC60);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1BCA80;
      *(v6 + 56) = &type metadata for Double;
      *(v6 + 64) = &protocol witness table for Double;
      *(v6 + 32) = v5;
      v16._countAndFlagsBits = sub_1B47F4();
      sub_1B48D4(v16);

      v17._countAndFlagsBits = 58;
      v17._object = 0xE100000000000000;
      sub_1B48D4(v17);
      if (!v4)
      {
        break;
      }

      v18._countAndFlagsBits = sub_C5268();
      sub_1B48D4(v18);

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_3747C((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = 0;
      v9[5] = 0xE000000000000000;
      v3 += 17;
      if (!--v1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_2B0C(&qword_228590, &qword_1B6590);
    sub_42094(&qword_229000, &qword_228590, &qword_1B6590, &protocol conformance descriptor for [A]);
    v10 = sub_1B4764();
    v12 = v11;

    v19._countAndFlagsBits = v10;
    v19._object = v12;
    sub_1B48D4(v19);

    v20._countAndFlagsBits = 93;
    v20._object = 0xE100000000000000;
    sub_1B48D4(v20);
  }
}

uint64_t sub_C0794@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v69 = a2;
  v3 = a1[1];
  v76 = *a1;
  v77 = v3;
  v4 = a1[3];
  v78 = a1[2];
  v79 = v4;
  v6 = *(a1 + 12);
  v5 = *(a1 + 13);
  v7 = *(a1 + 112);
  v8 = *(a1 + 15);
  v9 = *(a1 + 128);
  v10 = *(v2 + 64);
  v11 = *(v2 + 152);
  v12 = sub_2AF30(10, v11);
  if (v12)
  {
    v13 = v7;
    if (v7 == 2)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v12 = sub_2AF30(11, v11);
    v13 = v7;
    if ((v12 & 1) == 0 || v7 == 2)
    {
      goto LABEL_43;
    }
  }

  v66 = v6;
  v67 = v11;
  v14 = 0;
  v72[0] = v6;
  v72[1] = v5;
  v68 = v5;
  v65 = v13;
  v73 = v13 & 1;
  v74 = v8;
  v75 = v9 & 1;
  __chkstk_darwin(v12);
  v63[2] = v72;
  v15 = v10;
  v16 = v10[32];
  v17 = v16 & 0x3F;
  v18 = ((1 << v16) + 63) >> 6;
  v19 = 8 * v18;

  if (v17 > 0xD)
  {
LABEL_61:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_64;
    }
  }

  __chkstk_darwin(v20);
  v21 = v63 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v21, v19);
  v22 = 0;
  v23 = 0;
  v24 = 1 << v15[32];
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v15 + 7);
  v19 = v68;
  while (1)
  {
    if (!v26)
    {
      v29 = v23;
      while (1)
      {
        v23 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v23 >= ((v24 + 63) >> 6))
        {
          goto LABEL_23;
        }

        v30 = *&v15[8 * v23 + 56];
        ++v29;
        if (v30)
        {
          v26 = (v30 - 1) & v30;
          v28 = __clz(__rbit64(v30)) | (v23 << 6);
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_61;
    }

    v27 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v28 = v27 | (v23 << 6);
LABEL_17:
    v31 = *(v15 + 6) + 40 * v28;
    if (*(v31 + 8) == v19 || (*(v31 + 32) & 1) == 0 && *(v31 + 24) == v19)
    {
      *&v21[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
      if (__OFADD__(v22++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  v18 = sub_3D908(v21, v18, v22, v15);
  while (1)
  {
    v33 = *(v18 + 16);
    if (!v33)
    {
      break;
    }

    v64 = v14;
    v34 = sub_3542C(v33, 0);
    v35 = sub_3FB64(v71, (v34 + 32), v33, v18);
    v36 = v71[0];
    v14 = v71[1];
    v15 = v71[3];

    sub_417B8(v36);
    if (v35 == v33)
    {
      v19 = v68;
      v14 = v64;
      goto LABEL_28;
    }

    __break(1u);
LABEL_64:
    v62 = swift_slowAlloc();
    v18 = sub_C6974(v62, v18, v15, sub_CBDAC);

    v19 = v68;
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_28:
  v71[0] = v34;
  sub_B98E0(v71);
  if (v14)
  {

    __break(1u);
    return result;
  }

  v37 = v71[0];
  v38 = *(v71[0] + 2);
  if (v38)
  {
    v71[0] = _swiftEmptyArrayStorage;
    sub_37904(0, v38, 0);
    v39 = v71[0];
    v40 = *(v71[0] + 2);
    v41 = 32;
    do
    {
      v42 = *&v37[v41];
      v71[0] = v39;
      v43 = *(v39 + 3);
      if (v40 >= v43 >> 1)
      {
        sub_37904((v43 > 1), v40 + 1, 1);
        v39 = v71[0];
      }

      *(v39 + 2) = v40 + 1;
      *&v39[8 * v40 + 32] = v42;
      v41 += 40;
      ++v40;
      --v38;
    }

    while (v38);

    v19 = v68;
  }

  else
  {

    v39 = _swiftEmptyArrayStorage;
  }

  v44 = *(v39 + 2);
  v6 = v66;
  v11 = v67;
  if (v44)
  {
    v45 = *&v39[8 * v44 + 24];

    if (v65)
    {
      if (__OFADD__(v45, 1))
      {
        __break(1u);
      }

      if (v45 + 1 == v6 && (sub_2AF30(10, v11) & 1) != 0)
      {
        goto LABEL_54;
      }
    }

    else if (sub_2AF30(11, v11))
    {
LABEL_54:
      v47 = v77;
      v48 = v69;
      *v69 = v76;
      v48[1] = v47;
      v49 = v79;
      v48[2] = v78;
      v48[3] = v49;
      v50 = type metadata accessor for CollectionRecommendation(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v50 - 8) + 56))(v48, 0, 1, v50);
      return sub_42BA4(&v76, v71);
    }

    goto LABEL_55;
  }

  v5 = v19;

  v13 = v65;
LABEL_43:
  if ((sub_2AF30(9, v11) & 1) == 0)
  {
    v46 = (v13 != 2) & v13;
    goto LABEL_47;
  }

  if (v13 == 2)
  {
    v46 = 0;
LABEL_47:
    if ((sub_2AF30(0, v11) & 1) != 0 && (v46 & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  if ((v13 & 1) != 0 && v6 >= 2)
  {
    sub_2AF30(0, v11);
LABEL_55:
    v52 = type metadata accessor for CollectionRecommendation(0);
    return (*(*(v52 - 8) + 56))(v69, 1, 1, v52);
  }

  v53 = BYTE8(v76);
  v54 = v79;
  if (v79)
  {
    sub_42BA4(&v76, v71);
    v55 = v54;
  }

  else
  {
    sub_42BA4(&v76, v71);
    v55 = sub_130214(_swiftEmptyArrayStorage);
  }

  *&v70[23] = v77;
  *&v70[7] = v76;
  *&v70[39] = v78;
  *&v70[55] = v79;
  v56 = *v70;
  v57 = v69;
  *(v69 + 25) = *&v70[16];
  v58 = *&v70[48];
  *(v57 + 41) = *&v70[32];
  *(v57 + 57) = v58;
  v59 = *(&v79 + 1);
  *v57 = v5;
  *(v57 + 8) = v53;
  v60 = *&v70[63];
  *(v57 + 9) = v56;
  *(v57 + 9) = v60;
  *(v57 + 10) = v55;
  *(v57 + 11) = v59;
  v61 = type metadata accessor for CollectionRecommendation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v61 - 8) + 56))(v57, 0, 1, v61);
}

uint64_t sub_C0EDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  sub_2B0C(&qword_22B4A0, &qword_1C3A68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFC80;
  *(inited + 32) = v3;
  *(inited + 40) = 0;
  *(inited + 48) = v4;
  *(inited + 56) = v5 & 1;
  v7 = *(a2 + 8);
  v8 = v3 == v7;
  v9 = (v4 == v7) & ~v5;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

uint64_t sub_C0F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 208);
  swift_beginAccess();
  sub_BE058(a1, v4);
  return swift_endAccess();
}

uint64_t sub_C0FE8(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v343 = v2;
  v344 = v3;
  v354 = v4;
  v6 = v5;
  v8 = v7;
  v9 = v1;
  v338 = type metadata accessor for ScoredCollectionRecommendation(0);
  __chkstk_darwin(v338);
  v337 = &v321[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v330 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v330);
  v336 = &v321[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  v13 = __chkstk_darwin(v12 - 8);
  v328 = &v321[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v327 = &v321[-v16];
  __chkstk_darwin(v15);
  v331 = &v321[-v17];
  v346 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v18 = __chkstk_darwin(v346 - 8);
  v324 = &v321[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v323 = &v321[-v21];
  __chkstk_darwin(v20);
  v326 = &v321[-v23];
  v24 = *v9;
  v25 = *(v8 + 16);
  v26 = v25 + 56;
  v27 = 1 << *(v25 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & *(v25 + 56);
  v30 = (v27 + 63) >> 6;
  v31 = *v8;
  if (*(v8 + 8))
  {
    v31 = 1;
  }

  v349 = v31;
  v345 = (v22 + 48);
  v329 = (v22 + 16);
  v334 = (v22 + 8);
  v335 = (v22 + 32);

  v33 = 0;
  v350 = v30;
  v351 = v25 + 56;
  v341 = v6;
  v340 = v24;
  v339 = v25;
  while (1)
  {
LABEL_7:
    if (!v29)
    {
      do
      {
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_311;
        }

        if (v34 >= v30)
        {
        }

        v29 = *(v26 + 8 * v34);
        ++v33;
      }

      while (!v29);
      v33 = v34;
    }

    v352 = v33;
    v358 = *(*(v25 + 48) + (__clz(__rbit64(v29)) | (v33 << 6)));
    v35 = *(v6 + 32);
    if (*(v35 + 16) && (v36 = sub_3AA80(v24), (v37 & 1) != 0))
    {
      v38 = *(*(v35 + 56) + 8 * v36);
    }

    else
    {
      v38 = _swiftEmptyDictionarySingleton;
    }

    v29 &= v29 - 1;
    v39 = v38[2];
    v353 = v29;
    if (v39 && (v40 = sub_3AF28(v358), (v41 & 1) != 0))
    {
      v42 = *(v38[7] + 8 * v40);

      v43 = v42 < v349;
      v33 = v352;
      v29 = v353;
      if (!v43)
      {
        continue;
      }
    }

    else
    {

      v33 = v352;
      if (v349 <= 0)
      {
        continue;
      }
    }

    v359 = *v6;
    if (v24 <= 2)
    {
      break;
    }

    switch(v24)
    {
      case 3:
        v153 = *(v6 + 24);
        v154 = *(v354 + 80);
        v155 = *(v154 + 64);
        v348 = v154 + 64;
        v156 = 1 << *(v154 + 32);
        if (v156 < 64)
        {
          v157 = ~(-1 << v156);
        }

        else
        {
          v157 = -1;
        }

        v355 = v157 & v155;
        v347 = (v156 + 63) >> 6;
        *&v325 = v153 + 56;
        v158 = v359 + 7;
        v342 = v154;

        v159 = 0;
        v333 = v153;
        while (1)
        {
          v160 = v355;
          if (!v355)
          {
            break;
          }

          v161 = v159;
LABEL_187:
          v355 = (v160 - 1) & v160;
          v162 = (v161 << 9) | (8 * __clz(__rbit64(v160)));
          v163 = *(*(v342 + 48) + v162);
          v357 = *(*(v342 + 56) + v162);
          if (*(v153 + 16) && (result = sub_1B57E4(), v164 = -1 << *(v153 + 32), v165 = result & ~v164, ((*(v325 + ((v165 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v165) & 1) != 0))
          {
            v166 = ~v164;
            while (*(*(v153 + 48) + 8 * v165) != v163)
            {
              v165 = (v165 + 1) & v166;
              if (((*(v325 + ((v165 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v165) & 1) == 0)
              {
                goto LABEL_192;
              }
            }

            v159 = v161;
          }

          else
          {
LABEL_192:
            v332 = v163;
            v167 = *(v357 + 16);

            if (v167)
            {
              v168 = 0;
              v169 = result + 32;
              v356 = _swiftEmptyArrayStorage;
              v170 = v357;
              while (1)
              {
                if (v168 >= *(v170 + 16))
                {
                  goto LABEL_312;
                }

                v171 = v169 + 136 * v168;
                v367[0] = *v171;
                v172 = *(v171 + 16);
                v173 = *(v171 + 32);
                v174 = *(v171 + 64);
                v367[3] = *(v171 + 48);
                v367[4] = v174;
                v367[1] = v172;
                v367[2] = v173;
                v175 = *(v171 + 80);
                v176 = *(v171 + 96);
                v177 = *(v171 + 112);
                LOBYTE(v367[8]) = *(v171 + 128);
                v367[6] = v176;
                v367[7] = v177;
                v367[5] = v175;
                ++v168;
                v178 = BYTE8(v367[0]);
                if (v359[2])
                {
                  v179 = *&v367[0];
                  v180 = v359;
                  result = sub_1B57E4();
                  v181 = *(v180 + 32);
                  v170 = v357;
                  v182 = -1 << v181;
                  v183 = result & ~(-1 << v181);
                  if ((*(v158 + ((v183 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v183))
                  {
                    v184 = ~v182;
                    while (*(v359[6] + 8 * v183) != v179)
                    {
                      v183 = (v183 + 1) & v184;
                      if (((*(v158 + ((v183 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v183) & 1) == 0)
                      {
                        goto LABEL_202;
                      }
                    }

                    goto LABEL_195;
                  }
                }

LABEL_202:
                if (v358)
                {
                  if (v358 != 1)
                  {
                    sub_429F8(v367, v376);
LABEL_212:
                    v187 = v356;
                    result = swift_isUniquelyReferenced_nonNull_native();
                    v188 = v187;
                    *&v378[0] = v187;
                    if ((result & 1) == 0)
                    {
                      result = sub_37574(0, v187[2] + 1, 1);
                      v170 = v357;
                      v188 = *&v378[0];
                    }

                    v190 = v188[2];
                    v189 = v188[3];
                    if (v190 >= v189 >> 1)
                    {
                      result = sub_37574((v189 > 1), v190 + 1, 1);
                      v170 = v357;
                      v188 = *&v378[0];
                    }

                    v188[2] = v190 + 1;
                    v356 = v188;
                    v191 = &v188[17 * v190];
                    *(v191 + 2) = v367[0];
                    v192 = v367[1];
                    v193 = v367[2];
                    v194 = v367[4];
                    *(v191 + 5) = v367[3];
                    *(v191 + 6) = v194;
                    *(v191 + 3) = v192;
                    *(v191 + 4) = v193;
                    v195 = v367[5];
                    v196 = v367[6];
                    v197 = v367[7];
                    *(v191 + 160) = v367[8];
                    *(v191 + 8) = v196;
                    *(v191 + 9) = v197;
                    *(v191 + 7) = v195;
                    goto LABEL_195;
                  }

                  if (v178)
                  {
                    goto LABEL_211;
                  }

                  v185 = sub_1B5604();
                  sub_429F8(v367, v376);

                  if (v185)
                  {
                    goto LABEL_212;
                  }
                }

                else
                {
                  if ((v178 & 1) == 0)
                  {
LABEL_211:
                    sub_429F8(v367, v376);

                    goto LABEL_212;
                  }

                  v186 = sub_1B5604();
                  sub_429F8(v367, v376);

                  if (v186)
                  {
                    goto LABEL_212;
                  }
                }

                result = sub_5C740(v367);
LABEL_195:
                if (v168 == v167)
                {
                  goto LABEL_218;
                }
              }
            }

            v356 = _swiftEmptyArrayStorage;
LABEL_218:
            v198 = v354;
            v202 = sub_43174();
            if ((v201 & 1) == 0)
            {
              goto LABEL_219;
            }

            v205 = v201;
            v206 = v200;
            v207 = v199;
            sub_1B5744();
            swift_unknownObjectRetain_n();
            v208 = swift_dynamicCastClass();
            if (!v208)
            {
              swift_unknownObjectRelease();
              v208 = _swiftEmptyArrayStorage;
            }

            v209 = v208[2];

            if (__OFSUB__(v205 >> 1, v206))
            {
              goto LABEL_319;
            }

            if (v209 != (v205 >> 1) - v206)
            {
              swift_unknownObjectRelease();
              v201 = v205;
              v200 = v206;
              v199 = v207;
              v198 = v354;
LABEL_219:
              sub_5136C(v202, v199, v200, v201);
              v204 = v203;
              v29 = v353;
              goto LABEL_234;
            }

            v204 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            v29 = v353;
            v198 = v354;
            if (v204)
            {
              v210 = v204[2];
              if (!v210)
              {
                goto LABEL_235;
              }

              goto LABEL_226;
            }

            v204 = _swiftEmptyArrayStorage;
LABEL_234:
            swift_unknownObjectRelease();
            v210 = v204[2];
            if (!v210)
            {
LABEL_235:

              v211 = _swiftEmptyArrayStorage;
              goto LABEL_236;
            }

LABEL_226:
            *&v378[0] = _swiftEmptyArrayStorage;
            sub_375F8(0, v210, 0);
            v211 = *&v378[0];
            v212 = v210 - 1;
            for (i = 4; ; i += 17)
            {
              v214 = *&v204[i];
              v215 = *&v204[i + 2];
              v216 = *&v204[i + 6];
              v367[2] = *&v204[i + 4];
              v367[3] = v216;
              v367[0] = v214;
              v367[1] = v215;
              sub_42BA4(v367, v376);
              *&v378[0] = v211;
              v218 = v211[2];
              v217 = v211[3];
              if (v218 >= v217 >> 1)
              {
                sub_375F8((v217 > 1), v218 + 1, 1);
                v211 = *&v378[0];
              }

              v211[2] = v218 + 1;
              v219 = &v211[8 * v218];
              v220 = v367[0];
              v221 = v367[1];
              v222 = v367[3];
              v219[4] = v367[2];
              v219[5] = v222;
              v219[2] = v220;
              v219[3] = v221;
              if (!v212)
              {
                break;
              }

              --v212;
            }

            v29 = v353;
            v198 = v354;
LABEL_236:
            if (v211[2] < *(v198 + 120))
            {
            }

            else
            {
              *&v367[0] = v211;
              sub_2B0C(&qword_229500, &unk_1BC580);
              sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
              v223 = v328;
              sub_1B43C4();
              v224 = v346;
              if ((*v345)(v223, 1, v346) == 1)
              {
                sub_42F48(v223, &qword_2296F0, &unk_1C3A10);
              }

              else
              {
                v225 = v324;
                (*v335)(v324, v223, v224);
                v226 = sub_2B0C(&qword_229740, &qword_1C6EE0);
                v227 = *(v226 + 48);
                v228 = *(v226 + 64);
                v229 = v336;
                (*v329)(v336, v225, v224);
                *&v229[v227] = v332;
                v229[v228] = 2;
                swift_storeEnumTagMultiPayload();
                v230 = sub_1AB914(*(v354 + 136));
                v231 = v337;
                sub_CB8C0(v229, v337, type metadata accessor for CollectionRecommendation);
                v232 = v338;
                v231[*(v338 + 20)] = v358;
                v231[*(v232 + 24)] = 0;
                *&v231[*(v232 + 28)] = v230;
                v343(v231);
                v233 = v231;
                v29 = v353;
                sub_25FBC(v233, type metadata accessor for ScoredCollectionRecommendation);
                sub_25FBC(v229, type metadata accessor for CollectionRecommendation);
                (*v334)(v225, v224);
              }
            }

            v159 = v161;
            v30 = v350;
            v26 = v351;
            v153 = v333;
          }
        }

        while (1)
        {
          v161 = v159 + 1;
          if (__OFADD__(v159, 1))
          {
            goto LABEL_314;
          }

          if (v161 >= v347)
          {
            break;
          }

          v160 = *(v348 + 8 * v161);
          ++v159;
          if (v160)
          {
            goto LABEL_187;
          }
        }

LABEL_306:

        v6 = v341;
        v24 = v340;
        v25 = v339;
        v33 = v352;
        break;
      case 5:
        v234 = *(v6 + 8);
        v235 = *(v354 + 72);
        v236 = *(v235 + 64);
        v348 = v235 + 64;
        v237 = 1 << *(v235 + 32);
        if (v237 < 64)
        {
          v238 = ~(-1 << v237);
        }

        else
        {
          v238 = -1;
        }

        v355 = v238 & v236;
        v347 = (v237 + 63) >> 6;
        *&v325 = v234 + 56;
        v239 = v359 + 7;
        v342 = v235;

        v240 = 0;
        v333 = v234;
        while (1)
        {
          while (1)
          {
            v241 = v355;
            if (!v355)
            {
              while (1)
              {
                v242 = v240 + 1;
                if (__OFADD__(v240, 1))
                {
                  goto LABEL_315;
                }

                if (v242 >= v347)
                {
                  goto LABEL_306;
                }

                v241 = *(v348 + 8 * v242);
                ++v240;
                if (v241)
                {
                  goto LABEL_251;
                }
              }
            }

            v242 = v240;
LABEL_251:
            v355 = (v241 - 1) & v241;
            v243 = (v242 << 9) | (8 * __clz(__rbit64(v241)));
            v244 = *(*(v342 + 48) + v243);
            v357 = *(*(v342 + 56) + v243);
            if (!*(v234 + 16))
            {
              break;
            }

            result = sub_1B57E4();
            v245 = -1 << *(v234 + 32);
            v246 = result & ~v245;
            if (((*(v325 + ((v246 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v246) & 1) == 0)
            {
              break;
            }

            v247 = ~v245;
            while (*(*(v234 + 48) + 8 * v246) != v244)
            {
              v246 = (v246 + 1) & v247;
              if (((*(v325 + ((v246 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v246) & 1) == 0)
              {
                goto LABEL_256;
              }
            }

            v240 = v242;
          }

LABEL_256:
          v332 = v244;
          v248 = *(v357 + 16);

          if (v248)
          {
            v249 = 0;
            v250 = result + 32;
            v356 = _swiftEmptyArrayStorage;
            v251 = v357;
            while (1)
            {
              if (v249 >= *(v251 + 16))
              {
                goto LABEL_313;
              }

              v252 = v250 + 136 * v249;
              v367[0] = *v252;
              v253 = *(v252 + 16);
              v254 = *(v252 + 32);
              v255 = *(v252 + 64);
              v367[3] = *(v252 + 48);
              v367[4] = v255;
              v367[1] = v253;
              v367[2] = v254;
              v256 = *(v252 + 80);
              v257 = *(v252 + 96);
              v258 = *(v252 + 112);
              LOBYTE(v367[8]) = *(v252 + 128);
              v367[6] = v257;
              v367[7] = v258;
              v367[5] = v256;
              ++v249;
              v259 = BYTE8(v367[0]);
              if (v359[2])
              {
                v260 = *&v367[0];
                v261 = v359;
                result = sub_1B57E4();
                v262 = *(v261 + 32);
                v251 = v357;
                v263 = -1 << v262;
                v264 = result & ~(-1 << v262);
                if ((*(v239 + ((v264 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v264))
                {
                  v265 = ~v263;
                  while (*(v359[6] + 8 * v264) != v260)
                  {
                    v264 = (v264 + 1) & v265;
                    if (((*(v239 + ((v264 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v264) & 1) == 0)
                    {
                      goto LABEL_266;
                    }
                  }

                  goto LABEL_259;
                }
              }

LABEL_266:
              if (v358)
              {
                if (v358 != 1)
                {
                  sub_429F8(v367, v376);
LABEL_276:
                  v268 = v356;
                  result = swift_isUniquelyReferenced_nonNull_native();
                  v269 = v268;
                  *&v378[0] = v268;
                  if ((result & 1) == 0)
                  {
                    result = sub_37574(0, v268[2] + 1, 1);
                    v251 = v357;
                    v269 = *&v378[0];
                  }

                  v271 = v269[2];
                  v270 = v269[3];
                  if (v271 >= v270 >> 1)
                  {
                    result = sub_37574((v270 > 1), v271 + 1, 1);
                    v251 = v357;
                    v269 = *&v378[0];
                  }

                  v269[2] = v271 + 1;
                  v356 = v269;
                  v272 = &v269[17 * v271];
                  *(v272 + 2) = v367[0];
                  v273 = v367[1];
                  v274 = v367[2];
                  v275 = v367[4];
                  *(v272 + 5) = v367[3];
                  *(v272 + 6) = v275;
                  *(v272 + 3) = v273;
                  *(v272 + 4) = v274;
                  v276 = v367[5];
                  v277 = v367[6];
                  v278 = v367[7];
                  *(v272 + 160) = v367[8];
                  *(v272 + 8) = v277;
                  *(v272 + 9) = v278;
                  *(v272 + 7) = v276;
                  goto LABEL_259;
                }

                if (v259)
                {
                  goto LABEL_275;
                }

                v266 = sub_1B5604();
                sub_429F8(v367, v376);

                if (v266)
                {
                  goto LABEL_276;
                }
              }

              else
              {
                if ((v259 & 1) == 0)
                {
LABEL_275:
                  sub_429F8(v367, v376);

                  goto LABEL_276;
                }

                v267 = sub_1B5604();
                sub_429F8(v367, v376);

                if (v267)
                {
                  goto LABEL_276;
                }
              }

              result = sub_5C740(v367);
LABEL_259:
              if (v249 == v248)
              {
                goto LABEL_282;
              }
            }
          }

          v356 = _swiftEmptyArrayStorage;
LABEL_282:
          v282 = sub_43174();
          if ((v281 & 1) == 0)
          {
            goto LABEL_283;
          }

          v285 = v281;
          v286 = v280;
          v287 = v279;
          sub_1B5744();
          swift_unknownObjectRetain_n();
          v288 = swift_dynamicCastClass();
          if (!v288)
          {
            swift_unknownObjectRelease();
            v288 = _swiftEmptyArrayStorage;
          }

          v289 = v288[2];

          if (__OFSUB__(v285 >> 1, v286))
          {
            goto LABEL_318;
          }

          if (v289 != (v285 >> 1) - v286)
          {
            break;
          }

          v284 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v30 = v350;
          v26 = v351;
          v29 = v353;
          if (v284)
          {
            v290 = v284[2];
            if (!v290)
            {
              goto LABEL_299;
            }

            goto LABEL_290;
          }

          v284 = _swiftEmptyArrayStorage;
LABEL_298:
          swift_unknownObjectRelease();
          v290 = v284[2];
          if (!v290)
          {
LABEL_299:

            v291 = _swiftEmptyArrayStorage;
            v303 = v354;
            goto LABEL_300;
          }

LABEL_290:
          *&v378[0] = _swiftEmptyArrayStorage;
          sub_375F8(0, v290, 0);
          v291 = *&v378[0];
          v292 = v290 - 1;
          for (j = 4; ; j += 17)
          {
            v294 = *&v284[j];
            v295 = *&v284[j + 2];
            v296 = *&v284[j + 6];
            v367[2] = *&v284[j + 4];
            v367[3] = v296;
            v367[0] = v294;
            v367[1] = v295;
            sub_42BA4(v367, v376);
            *&v378[0] = v291;
            v298 = v291[2];
            v297 = v291[3];
            if (v298 >= v297 >> 1)
            {
              sub_375F8((v297 > 1), v298 + 1, 1);
              v291 = *&v378[0];
            }

            v291[2] = v298 + 1;
            v299 = &v291[8 * v298];
            v300 = v367[0];
            v301 = v367[1];
            v302 = v367[3];
            v299[4] = v367[2];
            v299[5] = v302;
            v299[2] = v300;
            v299[3] = v301;
            if (!v292)
            {
              break;
            }

            --v292;
          }

          v29 = v353;
          v303 = v354;
          v30 = v350;
          v26 = v351;
LABEL_300:
          if (v291[2] < *(v303 + 120))
          {

            v240 = v242;
            v234 = v333;
          }

          else
          {
            *&v367[0] = v291;
            sub_2B0C(&qword_229500, &unk_1BC580);
            sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
            v304 = v327;
            sub_1B43C4();
            v305 = v346;
            if ((*v345)(v304, 1, v346) == 1)
            {
              sub_42F48(v304, &qword_2296F0, &unk_1C3A10);
            }

            else
            {
              v306 = v323;
              (*v335)(v323, v304, v305);
              v307 = sub_2B0C(&qword_229740, &qword_1C6EE0);
              v308 = *(v307 + 48);
              v309 = *(v307 + 64);
              v310 = v336;
              (*v329)(v336, v306, v305);
              *&v310[v308] = v332;
              v310[v309] = 2;
              swift_storeEnumTagMultiPayload();
              v311 = sub_1AB914(*(v354 + 136));
              v312 = v337;
              sub_CB8C0(v310, v337, type metadata accessor for CollectionRecommendation);
              v313 = v338;
              v312[*(v338 + 20)] = v358;
              v312[*(v313 + 24)] = 0;
              *&v312[*(v313 + 28)] = v311;
              v343(v312);
              v314 = v312;
              v29 = v353;
              sub_25FBC(v314, type metadata accessor for ScoredCollectionRecommendation);
              sub_25FBC(v310, type metadata accessor for CollectionRecommendation);
              (*v334)(v306, v305);
            }

            v240 = v242;
            v30 = v350;
            v26 = v351;
            v234 = v333;
          }
        }

        swift_unknownObjectRelease();
        v281 = v285;
        v280 = v286;
        v279 = v287;
LABEL_283:
        sub_5136C(v282, v279, v280, v281);
        v284 = v283;
        v30 = v350;
        v26 = v351;
        v29 = v353;
        goto LABEL_298;
      case 8:
        v44 = *(v354 + 176);
        v367[10] = *(v354 + 160);
        v367[11] = v44;
        v367[12] = *(v354 + 192);
        *&v367[13] = *(v354 + 208);
        v45 = *(v354 + 112);
        v367[6] = *(v354 + 96);
        v367[7] = v45;
        v46 = *(v354 + 144);
        v367[8] = *(v354 + 128);
        v367[9] = v46;
        v47 = *(v354 + 48);
        v367[2] = *(v354 + 32);
        v367[3] = v47;
        v48 = *(v354 + 80);
        v367[4] = *(v354 + 64);
        v367[5] = v48;
        v49 = *(v354 + 16);
        v367[0] = *v354;
        v367[1] = v49;
        v376[0] = v358;
        result = sub_C3F48(v376, v359, 0, v343, v344);
        v33 = v352;
        break;
    }
  }

  if (v24 == 1)
  {
    v315 = *(v354 + 176);
    v367[10] = *(v354 + 160);
    v367[11] = v315;
    v367[12] = *(v354 + 192);
    *&v367[13] = *(v354 + 208);
    v316 = *(v354 + 112);
    v367[6] = *(v354 + 96);
    v367[7] = v316;
    v317 = *(v354 + 144);
    v367[8] = *(v354 + 128);
    v367[9] = v317;
    v318 = *(v354 + 48);
    v367[2] = *(v354 + 32);
    v367[3] = v318;
    v319 = *(v354 + 80);
    v367[4] = *(v354 + 64);
    v367[5] = v319;
    v320 = *(v354 + 16);
    v367[0] = *v354;
    v367[1] = v320;
    v376[0] = v358;
    result = sub_C375C(v376, v359, 0, v343, v344);
    v33 = v352;
    goto LABEL_7;
  }

  if (v24 != 2)
  {
    goto LABEL_7;
  }

  v50 = *(v6 + 16);
  v51 = *(v354 + 88);
  v52 = v51 + 64;
  v53 = 1 << *(v51 + 32);
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  else
  {
    v54 = -1;
  }

  v348 = v54 & *(v51 + 64);
  v55 = (v53 + 63) >> 6;
  v355 = v50;
  v356 = (v50 + 56);
  v56 = v359 + 7;
  v342 = v51;

  v57 = 0;
  v332 = v55;
  v333 = v52;
  v58 = v348;
  if (v348)
  {
    goto LABEL_33;
  }

  do
  {
LABEL_34:
    v59 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_316;
    }

    if (v59 >= v55)
    {

      v6 = v341;
      v24 = v340;
      v25 = v339;
      v30 = v350;
      v26 = v351;
      v33 = v352;
      goto LABEL_7;
    }

    v58 = *(v52 + 8 * v59);
    ++v57;
  }

  while (!v58);
  while (2)
  {
    v347 = v59;
    v348 = (v58 - 1) & v58;
    v60 = __clz(__rbit64(v58)) | (v59 << 6);
    v61 = (*(v342 + 48) + 568 * v60);
    memcpy(v375, v61, 0x231uLL);
    v62 = *(*(v342 + 56) + 8 * v60);
    memmove(v376, v61, 0x231uLL);
    v377 = v62;
    memcpy(v374, v375, 0x231uLL);
    memcpy(v378, v375, 0x231uLL);
    v63 = *(v355 + 16);
    v357 = v62;
    if (v63)
    {
      memcpy(v367, v375, 0x231uLL);
      sub_1B57F4();
      sub_4299C(v375, v373);

      SeedBook.hash(into:)(v368);
      result = sub_1B5844();
      v64 = v355;
      v65 = -1 << *(v355 + 32);
      v66 = result & ~v65;
      if (((*(v356 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
      {
        goto LABEL_124;
      }

      v67 = ~v65;
LABEL_43:
      result = memcpy(v373, (*(v64 + 48) + 568 * v66), sizeof(v373));
      if (*v373 != *&v378[0])
      {
        goto LABEL_42;
      }

      v68 = v67;
      if (v373[8])
      {
        v69 = 0x6F6F626F69647561;
      }

      else
      {
        v69 = 0x6B6F6F6265;
      }

      if (v373[8])
      {
        v70 = 0xE90000000000006BLL;
      }

      else
      {
        v70 = 0xE500000000000000;
      }

      if (BYTE8(v378[0]))
      {
        v71 = 0x6F6F626F69647561;
      }

      else
      {
        v71 = 0x6B6F6F6265;
      }

      if (BYTE8(v378[0]))
      {
        v72 = 0xE90000000000006BLL;
      }

      else
      {
        v72 = 0xE500000000000000;
      }

      if (v69 == v71 && v70 == v72)
      {
        sub_4299C(v373, v367);
        sub_5EDD8(&v373[8], v367);
        sub_5EDD8(v378 + 8, v367);
      }

      else
      {
        v74 = sub_1B5604();
        sub_4299C(v373, v367);
        sub_5EDD8(&v373[8], v367);
        sub_5EDD8(v378 + 8, v367);

        if ((v74 & 1) == 0)
        {
          sub_85554(v378 + 8);
          sub_85554(&v373[8]);
          goto LABEL_62;
        }
      }

      v75 = sub_9144();
      v64 = v355;
      if ((v75 & 1) == 0 || (sub_2E0DC(*&v373[24], *(&v378[1] + 1)) & 1) == 0)
      {
        sub_85554(v378 + 8);
        sub_85554(&v373[8]);
        result = sub_2601C(v373);
        goto LABEL_41;
      }

      v76 = BYTE8(v378[2]);
      v67 = v68;
      if (v373[40])
      {
        if (!BYTE8(v378[2]))
        {
          goto LABEL_81;
        }

LABEL_72:
        if (v373[64] == 2)
        {
          if (LOBYTE(v378[4]) != 2)
          {
            goto LABEL_81;
          }

LABEL_77:
          v77 = *(&v378[5] + 1);
          if (*&v373[88])
          {
            if (!*(&v378[5] + 1))
            {
              sub_85554(v378 + 8);
              sub_85554(&v373[8]);
              goto LABEL_91;
            }

            v78 = sub_80F4();
            sub_85554(v378 + 8);
            sub_85554(&v373[8]);
            if ((v78 & 1) == 0)
            {
LABEL_91:
              result = sub_2601C(v373);
              v64 = v355;
              goto LABEL_42;
            }
          }

          else
          {
            sub_85554(v378 + 8);
            sub_85554(&v373[8]);
            if (v77)
            {
              goto LABEL_91;
            }
          }

          v371 = *&v373[112];
          v372 = *&v373[128];
          v79 = *&v373[144];
          v369 = *&v373[152];
          v370 = *&v373[96];
          if (*&v373[144] >> 1 == 0xFFFFFFFFLL)
          {
            if (*&v378[9] >> 1 == 0xFFFFFFFFLL)
            {
              v367[0] = *&v373[96];
              v367[1] = *&v373[112];
              v367[2] = *&v373[128];
              *&v367[3] = *&v373[144];
              *(&v367[3] + 8) = *&v373[152];
              sub_43050(&v373[96], v368, &qword_22A4E0, &unk_1C01D0);
              sub_43050(&v378[6], v368, &qword_22A4E0, &unk_1C01D0);
              sub_42F48(v367, &qword_22A4E0, &unk_1C01D0);
              v67 = v68;
              goto LABEL_87;
            }

LABEL_93:
            v367[0] = *&v373[96];
            v367[1] = *&v373[112];
            v367[2] = *&v373[128];
            *(&v367[3] + 8) = *&v373[152];
            *(&v367[4] + 8) = v378[6];
            *(&v367[5] + 8) = v378[7];
            *(&v367[6] + 8) = v378[8];
            *&v367[3] = *&v373[144];
            *(&v367[7] + 1) = *&v378[9];
            v367[8] = *(&v378[9] + 8);
            sub_43050(&v373[96], v368, &qword_22A4E0, &unk_1C01D0);
            sub_43050(&v378[6], v368, &qword_22A4E0, &unk_1C01D0);
            sub_42F48(v367, &qword_22B488, &qword_1C3A38);
LABEL_62:
            result = sub_2601C(v373);
            v64 = v355;
LABEL_41:
            v67 = v68;
            goto LABEL_42;
          }

          v368[0] = *&v373[96];
          v368[1] = *&v373[112];
          v368[2] = *&v373[128];
          *&v368[3] = *&v373[144];
          *(&v368[3] + 8) = *&v373[152];
          if (*&v378[9] >> 1 == 0xFFFFFFFFLL)
          {
            goto LABEL_93;
          }

          v366[0] = v378[6];
          v366[1] = v378[7];
          v366[2] = v378[8];
          *&v366[3] = *&v378[9];
          *(&v366[3] + 8) = *(&v378[9] + 8);
          v81 = *(&v378[9] + 8);
          v82 = BYTE8(v368[0]);
          v367[0] = v368[0];
          v367[1] = v368[1];
          v367[2] = v368[2];
          LOBYTE(v367[3]) = v373[144];
          BYTE7(v367[3]) = v373[151];
          *(&v367[3] + 5) = *&v373[148] >> 8;
          *(&v367[3] + 1) = *&v373[144] >> 8;
          *(&v367[4] + 8) = v378[6];
          *(&v367[3] + 8) = *(&v368[3] + 8);
          *(&v367[5] + 8) = v378[7];
          *(&v367[6] + 8) = v378[8];
          *(&v367[7] + 1) = *&v378[9];
          v367[8] = *(&v378[9] + 8);
          v83 = *&v373[144] >> 62;
          if ((*&v373[144] >> 62) > 1)
          {
            if (v83 == 2)
            {
              if (*&v378[9] >> 62 != 2)
              {
                goto LABEL_117;
              }

              v364[0] = v368[0];
              v364[1] = v368[1];
              v364[2] = v368[2];
              LOBYTE(v364[3]) = v373[144] & 1;
              v360 = v378[6];
              v361 = v378[7];
              v362 = v378[8];
              v363 = v378[9] & 1;
              v325 = *(&v368[3] + 8);
              v322 = _s20BooksPersonalization19FeatureAffinityInfoV2eeoiySbAC_ACtFZ_0(v364, &v360);
              sub_43050(v368, v365, &qword_22A4E0, &unk_1C01D0);
              sub_43050(&v373[96], v365, &qword_22A4E0, &unk_1C01D0);
              v67 = v68;
              sub_43050(&v378[6], v365, &qword_22A4E0, &unk_1C01D0);
              sub_42F48(v367, &qword_22B490, &unk_1C3A40);
              if ((v322 & 1) != 0 && *&v325 == *&v81 && *(&v325 + 1) == *(&v81 + 1))
              {
                goto LABEL_112;
              }
            }

            else if (*&v378[9] >> 62 == 3 && (v325 = v378[6], (sub_9024(*&v368[0], *&v378[6]) & 1) != 0))
            {
              v87 = BYTE8(v325);
              sub_43050(v368, v365, &qword_22A4E0, &unk_1C01D0);
              sub_43050(v368, v365, &qword_22A4E0, &unk_1C01D0);
              sub_43050(&v373[96], v365, &qword_22A4E0, &unk_1C01D0);
              sub_43050(&v378[6], v365, &qword_22A4E0, &unk_1C01D0);
              sub_43050(v366, v365, &qword_22A4E0, &unk_1C01D0);
              v88 = sub_27D7C(v82, v87);
              sub_42F48(v367, &qword_22B490, &unk_1C3A40);
              sub_42F48(v366, &qword_22A4E0, &unk_1C01D0);
              v67 = v68;
              sub_42F48(v368, &qword_22A4E0, &unk_1C01D0);
              if (v88)
              {
                goto LABEL_112;
              }
            }

            else
            {
LABEL_117:
              sub_43050(v368, v365, &qword_22A4E0, &unk_1C01D0);
              sub_43050(&v373[96], v365, &qword_22A4E0, &unk_1C01D0);
              sub_43050(&v378[6], v365, &qword_22A4E0, &unk_1C01D0);
              sub_42F48(v367, &qword_22B490, &unk_1C3A40);
            }
          }

          else
          {
            if (v83)
            {
              if (*&v378[9] >> 62 != 1)
              {
                goto LABEL_117;
              }
            }

            else if (*&v378[9] >> 62)
            {
              goto LABEL_117;
            }

            v364[0] = v368[0];
            v364[1] = v368[1];
            v364[2] = v368[2];
            LOBYTE(v364[3]) = v373[144] & 1;
            v360 = v378[6];
            v361 = v378[7];
            v362 = v378[8];
            v363 = v378[9] & 1;
            v86 = _s20BooksPersonalization19FeatureAffinityInfoV2eeoiySbAC_ACtFZ_0(v364, &v360);
            sub_43050(v368, v365, &qword_22A4E0, &unk_1C01D0);
            sub_43050(&v373[96], v365, &qword_22A4E0, &unk_1C01D0);
            sub_43050(&v378[6], v365, &qword_22A4E0, &unk_1C01D0);
            sub_42F48(v367, &qword_22B490, &unk_1C3A40);
            if (v86)
            {
LABEL_112:
              v365[0] = v370;
              v365[1] = v371;
              v365[2] = v372;
              *&v365[3] = v79;
              *(&v365[3] + 8) = v369;
              sub_42F48(v365, &qword_22A4E0, &unk_1C01D0);
LABEL_87:
              memcpy(v367, &v373[168], 0x179uLL);
              memcpy(&v367[24], &v378[10] + 8, 0x179uLL);
              memcpy(v368, &v373[168], 0x179uLL);
              if (sub_42D84(v368) == 1)
              {
                memcpy(v366, &v367[24], 0x179uLL);
                v80 = sub_42D84(v366);
                v64 = v355;
                if (v80 == 1)
                {
LABEL_100:
                  if (sub_C554C(*&v373[552], *(&v378[34] + 1)))
                  {
                    v85 = LOBYTE(v378[35]);
                    if (v373[560] == 12)
                    {
                      result = sub_2601C(v373);
                      if (v85 == 12)
                      {
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      LOBYTE(v367[0]) = v373[560];
                      if (LOBYTE(v378[35]) == 12)
                      {
                        result = sub_2601C(v373);
                      }

                      else
                      {
                        LOBYTE(v366[0]) = v378[35];
                        v89 = _s20BooksPersonalization22PositiveAffinitySourceO2eeoiySbAC_ACtFZ_0(v367, v366);
                        result = sub_2601C(v373);
                        if (v89)
                        {
LABEL_175:
                          result = sub_42F48(v376, &qword_22B480, &unk_1C3A28);
                          v57 = v347;
                          v29 = v353;
LABEL_172:
                          v55 = v332;
                          v52 = v333;
                          v58 = v348;
                          if (!v348)
                          {
                            goto LABEL_34;
                          }

LABEL_33:
                          v59 = v57;
                          continue;
                        }
                      }
                    }

                    v64 = v355;
                    goto LABEL_42;
                  }
                }
              }

              else
              {
                memcpy(v365, v367, 0x179uLL);
                memcpy(v366, &v367[24], 0x179uLL);
                v84 = sub_42D84(v366);
                v64 = v355;
                if (v84 != 1)
                {
                  memcpy(v364, &v367[24], 0x179uLL);
                  if (_s20BooksPersonalization11BookHistoryV2eeoiySbAC_ACtFZ_0(v365, v364))
                  {
                    goto LABEL_100;
                  }
                }
              }

LABEL_82:
              result = sub_2601C(v373);
              goto LABEL_42;
            }
          }

          v365[0] = v370;
          v365[1] = v371;
          v365[2] = v372;
          *&v365[3] = v79;
          *(&v365[3] + 8) = v369;
          sub_42F48(v365, &qword_22A4E0, &unk_1C01D0);
          result = sub_2601C(v373);
          v64 = v355;
LABEL_42:
          v66 = (v66 + 1) & v67;
          if (((*(v356 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
          {
            goto LABEL_124;
          }

          goto LABEL_43;
        }

        v367[0] = *&v373[48];
        v367[1] = *&v373[64];
        LOBYTE(v367[2]) = v373[80];
        if (LOBYTE(v378[4]) != 2)
        {
          v368[0] = v378[3];
          LOBYTE(v368[1]) = v378[4] & 1;
          *(&v368[1] + 1) = *(&v378[4] + 1);
          LOBYTE(v368[2]) = v378[5] & 1;
          if (_s20BooksPersonalization4BookV8MetadataV16SeriesMembershipV2eeoiySbAG_AGtFZ_0(v367, v368))
          {
            goto LABEL_77;
          }
        }
      }

      else
      {
        if (*&v373[32] != *&v378[2])
        {
          v76 = 1;
        }

        if ((v76 & 1) == 0)
        {
          goto LABEL_72;
        }
      }

LABEL_81:
      sub_85554(v378 + 8);
      sub_85554(&v373[8]);
      goto LABEL_82;
    }

    break;
  }

  sub_4299C(v375, v367);

LABEL_124:
  v90 = v357;
  v91 = *(v357 + 16);
  if (!v91)
  {
LABEL_149:
    v123 = sub_43174();
    if (v122)
    {
      v126 = v122;
      v127 = v121;
      v128 = v120;
      sub_1B5744();
      swift_unknownObjectRetain_n();
      v129 = swift_dynamicCastClass();
      if (!v129)
      {
        swift_unknownObjectRelease();
        v129 = _swiftEmptyArrayStorage;
      }

      v130 = v129[2];

      if (__OFSUB__(v126 >> 1, v127))
      {
        goto LABEL_317;
      }

      if (v130 == (v126 >> 1) - v127)
      {
        v125 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v125)
        {
          v131 = v125[2];
          if (!v131)
          {
LABEL_165:

            v132 = _swiftEmptyArrayStorage;
LABEL_166:
            v29 = v353;
            if (v132[2] >= *(v354 + 120))
            {
              *&v367[0] = v132;
              sub_2B0C(&qword_229500, &unk_1BC580);
              sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
              v144 = v331;
              sub_1B43C4();
              v145 = v346;
              if ((*v345)(v144, 1, v346) == 1)
              {
                sub_42F48(v144, &qword_2296F0, &unk_1C3A10);
              }

              else
              {
                v146 = v326;
                (*v335)(v326, v144, v145);
                v147 = v336;
                v148 = v354;
                sub_C48DC(v146, v374, v354, v336);
                v149 = sub_1AB914(*(v148 + 136));
                v150 = v337;
                sub_CB8C0(v147, v337, type metadata accessor for CollectionRecommendation);
                v151 = v338;
                v150[*(v338 + 20)] = v358;
                v150[*(v151 + 24)] = 0;
                *&v150[*(v151 + 28)] = v149;
                v343(v150);
                v152 = v150;
                v29 = v353;
                sub_25FBC(v152, type metadata accessor for ScoredCollectionRecommendation);
                sub_25FBC(v147, type metadata accessor for CollectionRecommendation);
                (*v334)(v146, v145);
              }
            }

            else
            {
            }

            result = sub_42F48(v376, &qword_22B480, &unk_1C3A28);
            v57 = v347;
            goto LABEL_172;
          }

LABEL_157:
          *&v368[0] = _swiftEmptyArrayStorage;
          sub_375F8(0, v131, 0);
          v132 = *&v368[0];
          v133 = v131 - 1;
          for (k = 4; ; k += 17)
          {
            v135 = *&v125[k];
            v136 = *&v125[k + 2];
            v137 = *&v125[k + 6];
            v367[2] = *&v125[k + 4];
            v367[3] = v137;
            v367[0] = v135;
            v367[1] = v136;
            sub_42BA4(v367, v373);
            *&v368[0] = v132;
            v139 = v132[2];
            v138 = v132[3];
            if (v139 >= v138 >> 1)
            {
              sub_375F8((v138 > 1), v139 + 1, 1);
              v132 = *&v368[0];
            }

            v132[2] = v139 + 1;
            v140 = &v132[8 * v139];
            v141 = v367[0];
            v142 = v367[1];
            v143 = v367[3];
            v140[4] = v367[2];
            v140[5] = v143;
            v140[2] = v141;
            v140[3] = v142;
            if (!v133)
            {
              break;
            }

            --v133;
          }

          goto LABEL_166;
        }

        v125 = _swiftEmptyArrayStorage;
LABEL_164:
        swift_unknownObjectRelease();
        v131 = v125[2];
        if (!v131)
        {
          goto LABEL_165;
        }

        goto LABEL_157;
      }

      swift_unknownObjectRelease();
      v122 = v126;
      v121 = v127;
      v120 = v128;
    }

    sub_5136C(v123, v120, v121, v122);
    v125 = v124;
    goto LABEL_164;
  }

  v92 = 0;
  v93 = v357 + 32;
  v94 = _swiftEmptyArrayStorage;
  while (v92 < *(v90 + 16))
  {
    v95 = v93 + 136 * v92;
    v367[0] = *v95;
    v96 = *(v95 + 16);
    v97 = *(v95 + 32);
    v98 = *(v95 + 64);
    v367[3] = *(v95 + 48);
    v367[4] = v98;
    v367[1] = v96;
    v367[2] = v97;
    v99 = *(v95 + 80);
    v100 = *(v95 + 96);
    v101 = *(v95 + 112);
    LOBYTE(v367[8]) = *(v95 + 128);
    v367[6] = v100;
    v367[7] = v101;
    v367[5] = v99;
    ++v92;
    v102 = BYTE8(v367[0]);
    if (v359[2])
    {
      v103 = *&v367[0];
      v104 = v359;
      result = sub_1B57E4();
      v105 = *(v104 + 32);
      v90 = v357;
      v106 = -1 << v105;
      v107 = result & ~(-1 << v105);
      if ((*(v56 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107))
      {
        v108 = ~v106;
        while (*(v359[6] + 8 * v107) != v103)
        {
          v107 = (v107 + 1) & v108;
          if (((*(v56 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
          {
            goto LABEL_134;
          }
        }

        goto LABEL_127;
      }
    }

LABEL_134:
    if (v358)
    {
      if (v358 != 1)
      {
        sub_429F8(v367, v373);
LABEL_144:
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v368[0] = v94;
        if ((result & 1) == 0)
        {
          result = sub_37574(0, v94[2] + 1, 1);
          v94 = *&v368[0];
        }

        v112 = v94[2];
        v111 = v94[3];
        if (v112 >= v111 >> 1)
        {
          result = sub_37574((v111 > 1), v112 + 1, 1);
          v94 = *&v368[0];
        }

        v94[2] = v112 + 1;
        v113 = &v94[17 * v112];
        *(v113 + 2) = v367[0];
        v114 = v367[1];
        v115 = v367[2];
        v116 = v367[4];
        *(v113 + 5) = v367[3];
        *(v113 + 6) = v116;
        *(v113 + 3) = v114;
        *(v113 + 4) = v115;
        v117 = v367[5];
        v118 = v367[6];
        v119 = v367[7];
        *(v113 + 160) = v367[8];
        *(v113 + 8) = v118;
        *(v113 + 9) = v119;
        *(v113 + 7) = v117;
        goto LABEL_127;
      }

      if (v102)
      {
        goto LABEL_143;
      }

      v109 = sub_1B5604();
      sub_429F8(v367, v373);

      if (v109)
      {
        goto LABEL_144;
      }
    }

    else
    {
      if ((v102 & 1) == 0)
      {
LABEL_143:
        sub_429F8(v367, v373);

        goto LABEL_144;
      }

      v110 = sub_1B5604();
      sub_429F8(v367, v373);

      if (v110)
      {
        goto LABEL_144;
      }
    }

    result = sub_5C740(v367);
LABEL_127:
    if (v92 == v91)
    {
      goto LABEL_149;
    }
  }

  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
  return result;
}

uint64_t sub_C375C(unsigned __int8 *a1, uint64_t a2, int a3, void (*a4)(uint64_t), uint64_t a5)
{
  v80 = a5;
  v81 = a4;
  v79 = a3;
  v78 = type metadata accessor for ScoredCollectionRecommendation(0);
  __chkstk_darwin(v78);
  v77 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v75);
  v76 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  __chkstk_darwin(v10 - 8);
  v82 = &v74 - v11;
  v12 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v83 = *(v12 - 8);
  v84 = v12;
  __chkstk_darwin(v12);
  v74 = &v74 - v13;
  v88 = *a1;
  v14 = *(v5 + 104);
  v15 = *(v5 + 128);
  v85 = *(v5 + 120);
  v86 = v15;
  v16 = *(v5 + 136);
  v17 = *(v14 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = a2 + 56;
    v87 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v18 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v21 = v14 + 32 + 136 * v18;
      v90 = *v21;
      v22 = *(v21 + 16);
      v23 = *(v21 + 32);
      v24 = *(v21 + 64);
      v93 = *(v21 + 48);
      v94 = v24;
      v91 = v22;
      v92 = v23;
      v25 = *(v21 + 80);
      v26 = *(v21 + 96);
      v27 = *(v21 + 112);
      v98 = *(v21 + 128);
      v96 = v26;
      v97 = v27;
      v95 = v25;
      ++v18;
      v5 = BYTE8(v90);
      if (*(a2 + 16))
      {
        v28 = v90;
        v29 = sub_1B57E4();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if ((*(v19 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
        {
          v32 = ~v30;
          while (*(*(a2 + 48) + 8 * v31) != v28)
          {
            v31 = (v31 + 1) & v32;
            if (((*(v19 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          goto LABEL_18;
        }
      }

LABEL_13:
      if (v88)
      {
        if (v88 != 1)
        {
          sub_429F8(&v90, v89);
LABEL_22:
          v5 = v87;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v99 = v5;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_37574(0, *(v5 + 16) + 1, 1);
            v5 = v99;
          }

          v36 = *(v5 + 16);
          v35 = *(v5 + 24);
          v37 = (v36 + 1);
          if (v36 >= v35 >> 1)
          {
            v87 = (v36 + 1);
            sub_37574((v35 > 1), v36 + 1, 1);
            v37 = v87;
            v5 = v99;
          }

          *(v5 + 16) = v37;
          v87 = v5;
          v38 = v5 + 136 * v36;
          *(v38 + 32) = v90;
          v39 = v91;
          v40 = v92;
          v41 = v94;
          *(v38 + 80) = v93;
          *(v38 + 96) = v41;
          *(v38 + 48) = v39;
          *(v38 + 64) = v40;
          v42 = v95;
          v43 = v96;
          v44 = v97;
          *(v38 + 160) = v98;
          *(v38 + 128) = v43;
          *(v38 + 144) = v44;
          *(v38 + 112) = v42;
          goto LABEL_18;
        }

        if (v5)
        {
LABEL_21:
          sub_429F8(&v90, v89);

          goto LABEL_22;
        }

        v33 = sub_1B5604();
        sub_429F8(&v90, v89);

        if (v33)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if ((v5 & 1) == 0)
        {
          goto LABEL_21;
        }

        v20 = sub_1B5604();
        sub_429F8(&v90, v89);

        if (v20)
        {
          goto LABEL_22;
        }
      }

      sub_5C740(&v90);
LABEL_18:
      if (v18 == v17)
      {
        goto LABEL_28;
      }
    }
  }

  v87 = _swiftEmptyArrayStorage;
LABEL_28:
  v5 = sub_43174();
  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

  v18 = v47;
  a2 = v46;
  v14 = v45;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v50 = swift_dynamicCastClass();
  if (!v50)
  {
    swift_unknownObjectRelease();
    v50 = _swiftEmptyArrayStorage;
  }

  v51 = v50[2];

  if (__OFSUB__(v18 >> 1, a2))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v51 != (v18 >> 1) - a2)
  {
LABEL_52:
    swift_unknownObjectRelease();
    v47 = v18;
    v46 = a2;
    v45 = v14;
LABEL_29:
    sub_5136C(v5, v45, v46, v47);
    v49 = v48;
    goto LABEL_43;
  }

  v49 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v49)
  {
    v49 = _swiftEmptyArrayStorage;
LABEL_43:
    swift_unknownObjectRelease();
    v52 = v49[2];
    if (!v52)
    {
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  v52 = v49[2];
  if (!v52)
  {
LABEL_44:

    v53 = _swiftEmptyArrayStorage;
    goto LABEL_45;
  }

LABEL_36:
  v99 = _swiftEmptyArrayStorage;
  sub_375F8(0, v52, 0);
  v53 = v99;
  v54 = v52 - 1;
  for (i = 4; ; i += 17)
  {
    v56 = *&v49[i];
    v57 = *&v49[i + 2];
    v58 = *&v49[i + 6];
    v92 = *&v49[i + 4];
    v93 = v58;
    v90 = v56;
    v91 = v57;
    sub_42BA4(&v90, v89);
    v99 = v53;
    v60 = v53[2];
    v59 = v53[3];
    if (v60 >= v59 >> 1)
    {
      sub_375F8((v59 > 1), v60 + 1, 1);
      v53 = v99;
    }

    v53[2] = v60 + 1;
    v61 = &v53[8 * v60];
    v62 = v90;
    v63 = v91;
    v64 = v93;
    v61[4] = v92;
    v61[5] = v64;
    v61[2] = v62;
    v61[3] = v63;
    if (!v54)
    {
      break;
    }

    --v54;
  }

LABEL_45:
  if (v53[2] < v85)
  {
  }

  *&v90 = v53;
  sub_2B0C(&qword_229500, &unk_1BC580);
  sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
  v66 = v82;
  sub_1B43C4();
  v67 = v83;
  v68 = v84;
  if ((*(v83 + 48))(v66, 1, v84) == 1)
  {
    return sub_42F48(v66, &qword_2296F0, &unk_1C3A10);
  }

  v69 = v74;
  (*(v67 + 32))(v74, v66, v68);
  v70 = v76;
  (*(v67 + 16))(v76, v69, v68);
  swift_storeEnumTagMultiPayload();
  v71 = sub_1AB914(v16);
  v72 = v77;
  sub_CB8C0(v70, v77, type metadata accessor for CollectionRecommendation);
  v73 = v78;
  *(v72 + *(v78 + 20)) = v88;
  *(v72 + *(v73 + 24)) = v79 & 1;
  *(v72 + *(v73 + 28)) = v71;
  v81(v72);
  sub_25FBC(v72, type metadata accessor for ScoredCollectionRecommendation);
  sub_25FBC(v70, type metadata accessor for CollectionRecommendation);
  return (*(v67 + 8))(v69, v68);
}

uint64_t sub_C3F48(unsigned __int8 *a1, void *a2, int a3, void (*a4)(uint64_t), uint64_t a5)
{
  v89 = a5;
  v90 = a4;
  v88 = a3;
  v87 = type metadata accessor for ScoredCollectionRecommendation(0);
  __chkstk_darwin(v87);
  v86 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v84);
  v85 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2B0C(&qword_2296F0, &unk_1C3A10);
  __chkstk_darwin(v11 - 8);
  v91 = &v83 - v12;
  v13 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v92 = *(v13 - 8);
  v93 = v13;
  __chkstk_darwin(v13);
  v83 = &v83 - v14;
  v97 = *a1;
  v15 = v5[13];
  v16 = v5[16];
  v94 = v5[15];
  v95 = v16;
  v17 = *(v5 + 17);
  v18 = *(v15 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = v5[7];
    v21 = v15 + 32;
    v98 = v20;
    v99 = a2;
    v22 = a2 + 7;
    v96 = _swiftEmptyArrayStorage;
    v23 = 136;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (v19 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_51;
          }

          v24 = v21 + 136 * v19;
          v101 = *v24;
          v25 = *(v24 + 16);
          v26 = *(v24 + 32);
          v27 = *(v24 + 64);
          v104 = *(v24 + 48);
          v105 = v27;
          v102 = v25;
          v103 = v26;
          v28 = *(v24 + 80);
          v29 = *(v24 + 96);
          v30 = *(v24 + 112);
          v109 = *(v24 + 128);
          v107 = v29;
          v108 = v30;
          v106 = v28;
          ++v19;
          v6 = v27;
          sub_429F8(&v101, v100);
          if ((sub_C4788(v6, v20) & 1) == 0)
          {
            break;
          }

          sub_5C740(&v101);
          if (v19 == v18)
          {
            goto LABEL_28;
          }
        }

        v31 = v21;
        v32 = BYTE8(v101);
        if (v99[2])
        {
          v6 = v101;
          v33 = v15;
          v34 = v18;
          v35 = v99;
          v36 = sub_1B57E4();
          v37 = *(v35 + 32);
          v18 = v34;
          v15 = v33;
          v23 = 136;
          v38 = -1 << v37;
          v39 = v36 & ~(-1 << v37);
          if ((*(v22 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
          {
            v40 = ~v38;
            while (*(v99[6] + 8 * v39) != v6)
            {
              v39 = (v39 + 1) & v40;
              if (((*(v22 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
              {
                goto LABEL_11;
              }
            }

            goto LABEL_18;
          }
        }

LABEL_11:
        if (v97)
        {
          break;
        }

        if ((v32 & 1) == 0)
        {
LABEL_20:

          goto LABEL_21;
        }

        v6 = sub_1B5604();

        if ((v6 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_21:
        v41 = v96;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v41;
        v110 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_37574(0, v41[2] + 1, 1);
          v43 = v110;
        }

        v21 = v31;
        v6 = v43[2];
        v44 = v43[3];
        v45 = (v6 + 1);
        if (v6 >= v44 >> 1)
        {
          v96 = (v6 + 1);
          sub_37574((v44 > 1), v6 + 1, 1);
          v45 = v96;
          v21 = v31;
          v43 = v110;
        }

        v43[2] = v45;
        v96 = v43;
        v46 = &v43[17 * v6];
        *(v46 + 2) = v101;
        v47 = v102;
        v48 = v103;
        v49 = v105;
        *(v46 + 5) = v104;
        *(v46 + 6) = v49;
        *(v46 + 3) = v47;
        *(v46 + 4) = v48;
        v50 = v106;
        v51 = v107;
        v52 = v108;
        *(v46 + 160) = v109;
        *(v46 + 8) = v51;
        *(v46 + 9) = v52;
        *(v46 + 7) = v50;
        v20 = v98;
        if (v19 == v18)
        {
          goto LABEL_28;
        }
      }

      if (v97 != 1)
      {
        goto LABEL_21;
      }

      if (v32)
      {
        goto LABEL_20;
      }

      v6 = sub_1B5604();

      if (v6)
      {
        goto LABEL_21;
      }

LABEL_18:
      sub_5C740(&v101);
      v21 = v31;
      v20 = v98;
      if (v19 == v18)
      {
        goto LABEL_28;
      }
    }
  }

  v96 = _swiftEmptyArrayStorage;
LABEL_28:
  v21 = sub_43174();
  if ((v55 & 1) == 0)
  {
    goto LABEL_29;
  }

  v6 = v55;
  v20 = v54;
  v23 = v53;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v58 = swift_dynamicCastClass();
  if (!v58)
  {
    swift_unknownObjectRelease();
    v58 = _swiftEmptyArrayStorage;
  }

  v59 = v58[2];

  if (__OFSUB__(v6 >> 1, v20))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v59 != (v6 >> 1) - v20)
  {
LABEL_52:
    swift_unknownObjectRelease();
    v55 = v6;
    v54 = v20;
    v53 = v23;
LABEL_29:
    sub_5136C(v21, v53, v54, v55);
    v57 = v56;
    goto LABEL_43;
  }

  v57 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v57)
  {
    v57 = _swiftEmptyArrayStorage;
LABEL_43:
    swift_unknownObjectRelease();
    v60 = v57[2];
    if (!v60)
    {
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  v60 = v57[2];
  if (!v60)
  {
LABEL_44:

    v61 = _swiftEmptyArrayStorage;
    goto LABEL_45;
  }

LABEL_36:
  v110 = _swiftEmptyArrayStorage;
  sub_375F8(0, v60, 0);
  v61 = v110;
  v62 = v60 - 1;
  for (i = 4; ; i += 17)
  {
    v64 = *&v57[i];
    v65 = *&v57[i + 2];
    v66 = *&v57[i + 6];
    v103 = *&v57[i + 4];
    v104 = v66;
    v101 = v64;
    v102 = v65;
    sub_42BA4(&v101, v100);
    v110 = v61;
    v68 = v61[2];
    v67 = v61[3];
    if (v68 >= v67 >> 1)
    {
      sub_375F8((v67 > 1), v68 + 1, 1);
      v61 = v110;
    }

    v61[2] = v68 + 1;
    v69 = &v61[8 * v68];
    v70 = v101;
    v71 = v102;
    v72 = v104;
    v69[4] = v103;
    v69[5] = v72;
    v69[2] = v70;
    v69[3] = v71;
    if (!v62)
    {
      break;
    }

    --v62;
  }

LABEL_45:
  if (v61[2] < v94)
  {
  }

  *&v101 = v61;
  sub_2B0C(&qword_229500, &unk_1BC580);
  sub_42094(&qword_2296F8, &qword_229500, &unk_1BC580, &protocol conformance descriptor for [A]);
  v74 = v91;
  sub_1B43C4();
  v76 = v92;
  v75 = v93;
  if ((*(v92 + 48))(v74, 1, v93) == 1)
  {
    return sub_42F48(v74, &qword_2296F0, &unk_1C3A10);
  }

  v77 = v83;
  (*(v76 + 32))(v83, v74, v75);
  v78 = *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48);
  v79 = v85;
  (*(v76 + 16))(v85, v77, v75);
  *(v79 + v78) = 2;
  swift_storeEnumTagMultiPayload();
  v80 = sub_1AB914(v17);
  v81 = v86;
  sub_CB8C0(v79, v86, type metadata accessor for CollectionRecommendation);
  v82 = v87;
  *(v81 + *(v87 + 20)) = v97;
  *(v81 + *(v82 + 24)) = v88 & 1;
  *(v81 + *(v82 + 28)) = v80;
  v90(v81);
  sub_25FBC(v81, type metadata accessor for ScoredCollectionRecommendation);
  sub_25FBC(v79, type metadata accessor for CollectionRecommendation);
  return (*(v76 + 8))(v77, v75);
}

uint64_t sub_C4788(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
      result = sub_1B57E4();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + 8 * v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_C48DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  memcpy(__dst, a2, 0x231uLL);
  v8 = *(a3 + 96);
  if (*(v8 + 16) && (v5 = __dst, v9 = sub_3ABBC(__dst), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    v12 = sub_2B0C(&qword_228F40, &unk_1BB360);
    v13 = *(v12 + 48);
    v14 = sub_2B0C(&qword_228F38, &qword_1BCB50);
    (*(*(v14 - 8) + 16))(a4, a1, v14);
    memcpy((a4 + v13), __dst, 0x231uLL);
    *(a4 + *(v12 + 64)) = v11;
  }

  else
  {
    v15 = *(sub_2B0C(&qword_228F40, &unk_1BB360) + 48);
    v16 = sub_2B0C(&qword_228F38, &qword_1BCB50);
    (*(*(v16 - 8) + 16))(a4, a1, v16);
    memcpy((a4 + v15), v5, 0x231uLL);
    *(a4 + *(sub_2B0C(&qword_228F40, &unk_1BB360) + 64)) = _swiftEmptySetSingleton;
  }

  type metadata accessor for CollectionRecommendation(0);
  swift_storeEnumTagMultiPayload();
  return sub_4299C(__dst, &v18);
}

uint64_t sub_C4AF4()
{
  v6 = 0;
  v7 = 0xE000000000000000;
  sub_1B5084(29);
  v8._countAndFlagsBits = 123;
  v8._object = 0xE100000000000000;
  sub_1B48D4(v8);
  CollectionRecommendation.collectionRecommendationType.getter(&v5);
  v9._countAndFlagsBits = CollectionRecommendationType.rawValue.getter();
  sub_1B48D4(v9);

  v10._countAndFlagsBits = 0x7954616964656D20;
  v10._object = 0xEB000000003D6570;
  sub_1B48D4(v10);
  v1 = type metadata accessor for ScoredCollectionRecommendation(0);
  if (*(v0 + *(v1 + 20)))
  {
    if (*(v0 + *(v1 + 20)) == 1)
    {
      v2 = 0xE90000000000006BLL;
      v3._countAndFlagsBits = 0x6F6F626F69647561;
    }

    else
    {
      v2 = 0xE500000000000000;
      v3._countAndFlagsBits = 0x646578696DLL;
    }
  }

  else
  {
    v2 = 0xE500000000000000;
    v3._countAndFlagsBits = 0x6B6F6F6265;
  }

  v3._object = v2;
  sub_1B48D4(v3);

  v11._countAndFlagsBits = 0x3D65726F637320;
  v11._object = 0xE700000000000000;
  sub_1B48D4(v11);
  sub_1B4C94();
  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  sub_1B48D4(v12);
  v13._countAndFlagsBits = CollectionRecommendation.clusteringDebugDescription.getter();
  sub_1B48D4(v13);

  v14._countAndFlagsBits = 125;
  v14._object = 0xE100000000000000;
  sub_1B48D4(v14);
  return v6;
}

uint64_t CollectionRecommendation.clusteringDebugDescription.getter()
{
  v1 = type metadata accessor for CollectionRecommendation(0);
  __chkstk_darwin(v1);
  v3 = (v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_CB8C0(v0, v3, type metadata accessor for CollectionRecommendation);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v4 = v3[3];
    v38[2] = v3[2];
    v38[3] = v4;
    v5 = v3[5];
    v38[4] = v3[4];
    v39 = v5;
    v6 = v3[1];
    v38[0] = *v3;
    v38[1] = v6;
    v36 = 0x3D736569726573;
    v37 = 0xE700000000000000;
    v40 = *&v38[0];
    v41._countAndFlagsBits = sub_1B5594();
    sub_1B48D4(v41);

    v42._countAndFlagsBits = 58;
    v42._object = 0xE100000000000000;
    sub_1B48D4(v42);
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BCA80;
    v8 = *(&v39 + 1);
    *(v7 + 56) = &type metadata for Double;
    *(v7 + 64) = &protocol witness table for Double;
    *(v7 + 32) = v8;
    sub_C6088(v38);
    v43._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v43);

    v10 = v36;
    v9 = v37;
LABEL_21:
    *&v38[0] = 123;
    *(&v38[0] + 1) = 0xE100000000000000;
    CollectionRecommendation.collectionRecommendationType.getter(&v36);
    v51._countAndFlagsBits = CollectionRecommendationType.rawValue.getter();
    sub_1B48D4(v51);

    v52._countAndFlagsBits = 32;
    v52._object = 0xE100000000000000;
    sub_1B48D4(v52);
    v53._countAndFlagsBits = v10;
    v53._object = v9;
    sub_1B48D4(v53);

    v54._countAndFlagsBits = 125;
    v54._object = 0xE100000000000000;
    sub_1B48D4(v54);
    return *&v38[0];
  }

  sub_25FBC(v3, type metadata accessor for CollectionRecommendation);
  v34[1] = v0;
  v11 = CollectionRecommendation.books.getter();
  v12 = v11;
  v13 = *(v11 + 2);
  if (v13 >= 3)
  {
    v14 = 3;
  }

  else
  {
    v14 = *(v11 + 2);
  }

  if (!v13)
  {

    v16 = _swiftEmptyArrayStorage;
LABEL_14:
    *&v38[0] = v16;
    sub_2B0C(&qword_228590, &qword_1B6590);
    sub_42094(&qword_229000, &qword_228590, &qword_1B6590, &protocol conformance descriptor for [A]);
    v27 = sub_1B4764();
    v29 = v28;

    *&v38[0] = 0x28736B6F6F62;
    *(&v38[0] + 1) = 0xE600000000000000;
    v30 = *(CollectionRecommendation.books.getter() + 2);

    v36 = v30;
    v48._countAndFlagsBits = sub_1B5594();
    sub_1B48D4(v48);

    v49._countAndFlagsBits = 15657;
    v49._object = 0xE200000000000000;
    sub_1B48D4(v49);
    v50._countAndFlagsBits = v27;
    v50._object = v29;
    sub_1B48D4(v50);

    v31 = *(CollectionRecommendation.books.getter() + 2);

    if (v31 <= 3)
    {
      v32._countAndFlagsBits = 0;
    }

    else
    {
      v32._countAndFlagsBits = 10911970;
    }

    if (v31 <= 3)
    {
      v33 = 0xE000000000000000;
    }

    else
    {
      v33 = 0xA300000000000000;
    }

    v32._object = v33;
    sub_1B48D4(v32);

    v9 = *(&v38[0] + 1);
    v10 = *&v38[0];
    goto LABEL_21;
  }

  v36 = _swiftEmptyArrayStorage;
  result = sub_3747C(0, v14, 0);
  v16 = v36;
  v34[0] = v12;
  v17 = v12 + 3;
  v35 = xmmword_1BCA80;
  while (v14)
  {
    v18 = *(v17 - 2);
    v19 = *(v17 - 8);
    v20 = *v17;
    v21 = *(v17 + 5);
    v22 = *(v17 + 8);
    *&v38[0] = 0;
    *(&v38[0] + 1) = 0xE000000000000000;
    v40 = v18;
    sub_43688(v20, v22);

    v44._countAndFlagsBits = sub_1B5594();
    sub_1B48D4(v44);

    v45._countAndFlagsBits = 58;
    v45._object = 0xE100000000000000;
    sub_1B48D4(v45);
    LOBYTE(v40) = v19;
    sub_1B51F4();
    v46._countAndFlagsBits = 58;
    v46._object = 0xE100000000000000;
    sub_1B48D4(v46);
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v23 = swift_allocObject();
    *(v23 + 16) = v35;
    *(v23 + 56) = &type metadata for Double;
    *(v23 + 64) = &protocol witness table for Double;
    *(v23 + 32) = v21;
    v47._countAndFlagsBits = sub_1B47F4();
    sub_1B48D4(v47);

    sub_43CE0(v20, v22);

    v24 = v38[0];
    v36 = v16;
    v26 = v16[2];
    v25 = v16[3];
    if (v26 >= v25 >> 1)
    {
      result = sub_3747C((v25 > 1), v26 + 1, 1);
      v16 = v36;
    }

    v16[2] = v26 + 1;
    *&v16[2 * v26 + 4] = v24;
    v17 += 4;
    if (!--v14)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void *sub_C5268()
{
  v1 = *(v0 + 8);
  sub_2B0C(&qword_22B458, &qword_1C39C8);
  result = sub_1B5294();
  v3 = result;
  v4 = 0;
  v5 = *(v1 + 64);
  v31 = v1 + 64;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v34 = result + 8;
  v35 = v1;
  v32 = v9;
  v33 = result;
  if ((v7 & v5) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = *(*(v35 + 48) + v13);
      v15 = *(*(*(v35 + 56) + 8 * v13) + 16);
      if (v15)
      {
        v36 = *(*(v35 + 48) + v13);
        v37 = v10 | (v4 << 6);
        v38 = v8;

        sub_3747C(0, v15, 0);
        v16 = _swiftEmptyArrayStorage;
        v17 = 32;
        do
        {
          v18 = sub_1B5594();
          v39 = v16;
          v21 = v16[2];
          v20 = v16[3];
          if (v21 >= v20 >> 1)
          {
            v30 = v18;
            v23 = v19;
            sub_3747C((v20 > 1), v21 + 1, 1);
            v19 = v23;
            v18 = v30;
            v16 = v39;
          }

          v16[2] = v21 + 1;
          v22 = &v16[2 * v21];
          v22[4] = v18;
          v22[5] = v19;
          v17 += 568;
          --v15;
        }

        while (v15);

        v9 = v32;
        v3 = v33;
        v13 = v37;
        v8 = v38;
        v14 = v36;
      }

      else
      {
        v16 = _swiftEmptyArrayStorage;
      }

      *(v34 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v3[6] + v13) = v14;
      *(v3[7] + 8 * v13) = v16;
      v24 = v3[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v3[2] = v26;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        sub_2B0C(&qword_228590, &qword_1B6590);
        sub_42EA0();
        v27 = sub_1B46B4();
        v29 = v28;

        v40._countAndFlagsBits = v27;
        v40._object = v29;
        sub_1B48D4(v40);

        return 0;
      }

      v12 = *(v31 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_C551C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_130C10(_swiftEmptyArrayStorage);
  *a1 = result;
  return result;
}

uint64_t sub_C554C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = *(*(v3 + 56) + 8 * v12);
    v15 = v14 == 0;

    if (!v14)
    {
      return v15;
    }

    v16 = sub_3A6F0(v13);
    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v18 = sub_9024(*(*(a2 + 56) + 8 * v16), v14);

    if ((v18 & 1) == 0)
    {
      return v15;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_C5694()
{
  v1 = *(*v0 + 16);
  if (v1 == 1)
  {
LABEL_42:
    result = sub_1B5234();
    __break(1u);
    return result;
  }

  sub_B9588(1uLL, v1 - 1);
  sub_49760(*(*v0 + 16) - 1, v68);
  result = sub_CB990(v68[0], v68[1], v68[2], v68[3], v68[4], v68[5]);
  v56 = v0;
  v3 = *v0;
  v4 = *(*v0 + 16);
  if (v4 >= 3)
  {
    v5 = 2;
    v6 = 1;
    while (1)
    {
      v66 = v6;
      v67 = v3;
      if (v5 < (v4 - 1))
      {
        if (v5 >= v4)
        {
          goto LABEL_32;
        }

        v7 = &v3[7 * v5 + 4];
        if (!*v7)
        {
          goto LABEL_40;
        }

        if ((v5 | 1) >= v4)
        {
          goto LABEL_33;
        }

        v8 = &v3[7 * (v5 | 1) + 4];
        v9 = *v8;
        if (!*v8)
        {
          goto LABEL_41;
        }

        v11 = *(v8 + 32);
        v10 = *(v8 + 40);
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        v14 = *(v8 + 8);
        v15 = *(v7 + 8);
        sub_CBA28(*v7, v15, *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40));
        sub_CBA28(v9, v14, v13, v12, v11, v10);

        if (*&v14 < *&v15)
        {
          v5 |= 1uLL;
        }

        v6 = v66;
        v3 = v67;
        v4 = v67[2];
      }

      if (v6 >= v4)
      {
        break;
      }

      v16 = &v3[7 * v6 + 4];
      if (!*v16)
      {
        goto LABEL_38;
      }

      if (v5 >= v4)
      {
        goto LABEL_30;
      }

      v65 = v5;
      v60 = 7 * v5;
      v61 = 7 * v6;
      v17 = &v3[7 * v5 + 4];
      v18 = *v17;
      if (!*v17)
      {
        goto LABEL_39;
      }

      v20 = *(v17 + 32);
      v19 = *(v17 + 40);
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      v23 = *(v17 + 8);
      v24 = *(v16 + 8);
      sub_CBA28(*v16, v24, *(v16 + 16), *(v16 + 24), *(v16 + 32), *(v16 + 40));
      sub_CBA28(v18, v23, v22, v21, v20, v19);

      v3 = v67;
      v25 = v65;
      if (*&v23 >= *&v24)
      {
        return result;
      }

      if (v66 != v65)
      {
        v26 = v67[2];
        if (v66 >= v26)
        {
          goto LABEL_34;
        }

        if (v65 >= v26)
        {
          goto LABEL_35;
        }

        v27 = *v16;
        v28 = *(v16 + 8);
        v29 = *(v16 + 16);
        v30 = *(v16 + 24);
        v31 = *(v16 + 32);
        v32 = *(v16 + 40);
        v33 = *(v16 + 48);
        v35 = *v17;
        v34 = *(v17 + 8);
        v36 = *(v17 + 16);
        v37 = *(v17 + 24);
        v38 = *(v17 + 32);
        v39 = *(v17 + 40);
        v40 = *(v17 + 48);
        v62 = v28;
        v63 = v27;
        v58 = v30;
        v59 = v29;
        v57 = v31;
        v64 = v33;
        sub_CBA28(v27, v28, v29, v30, v31, v32);
        sub_CBA28(v35, v34, v36, v37, v38, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_56ACC(v67);
        }

        v3 = v67;
        if (v66 >= v67[2])
        {
          goto LABEL_36;
        }

        v41 = v67 + 4;
        v42 = &v67[v61 + 4];
        v43 = *v42;
        v44 = v42[1];
        v45 = v42[2];
        v46 = v42[3];
        v47 = v42[4];
        v48 = v42[5];
        *v42 = v35;
        v42[1] = v34;
        v42[2] = v36;
        v42[3] = v37;
        v42[4] = v38;
        v42[5] = v39;
        *(v42 + 48) = v40;
        sub_CB990(v43, v44, v45, v46, v47, v48);
        v25 = v65;
        if (v65 >= v67[2])
        {
          goto LABEL_37;
        }

        v49 = &v41[v60];
        v50 = v41[v60];
        v51 = v41[v60 + 1];
        v52 = v41[v60 + 2];
        v53 = v41[v60 + 3];
        v54 = v41[v60 + 4];
        v55 = v41[v60 + 5];
        *v49 = v63;
        v49[1] = v62;
        v49[2] = v59;
        v49[3] = v58;
        v49[4] = v57;
        v49[5] = v32;
        *(v49 + 48) = v64;
        result = sub_CB990(v50, v51, v52, v53, v54, v55);
        *v56 = v67;
      }

      if ((v25 + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v6 = v25;
      v4 = v3[2];
      v5 = 2 * v25;
      if (v4 <= 2 * v25)
      {
        return result;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_C5ADC()
{
  v1 = sub_2B0C(&qword_229408, &unk_1BCC10);
  v61 = *(v1 - 8);
  v2 = __chkstk_darwin(v1 - 8);
  v56 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v57 = &v52 - v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - v7;
  v9 = __chkstk_darwin(v6);
  v63 = &v52 - v10;
  v11 = __chkstk_darwin(v9);
  v54 = &v52 - v12;
  v13 = __chkstk_darwin(v11);
  v58 = &v52 - v14;
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v17 = *(*v0 + 16);
  if (v17 == 1)
  {
LABEL_40:
    result = sub_1B5234();
    __break(1u);
    return result;
  }

  sub_B972C(1uLL, v17 - 1);
  sub_49804(*(*v0 + 16) - 1, v16);
  result = sub_42F48(v16, &qword_229408, &unk_1BCC10);
  v53 = v0;
  v19 = *v0;
  v20 = *(*v0 + 16);
  if (v20 >= 3)
  {
    v21 = 2;
    v22 = 1;
    v55 = v8;
    while (1)
    {
      if (v21 < (v20 - 1))
      {
        if (v21 >= v20)
        {
          goto LABEL_31;
        }

        v62 = v22;
        v23 = v19 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
        v24 = *(v61 + 72);
        v25 = v58;
        sub_43050(&v23[v24 * v21], v58, &qword_229408, &unk_1BCC10);
        v26 = type metadata accessor for ScoredCollectionRecommendation(0);
        v27 = *(*(v26 - 8) + 48);
        if (v27(v25, 1, v26) == 1)
        {
          goto LABEL_38;
        }

        if ((v21 | 1) >= v20)
        {
          goto LABEL_32;
        }

        v28 = &v23[v24 * (v21 | 1)];
        v29 = v54;
        sub_43050(v28, v54, &qword_229408, &unk_1BCC10);
        if (v27(v29, 1, v26) == 1)
        {
          goto LABEL_39;
        }

        v30 = *(v26 + 28);
        v31 = v58;
        v32 = *(v58 + v30);
        v33 = *(v29 + v30);
        sub_25FBC(v29, type metadata accessor for ScoredCollectionRecommendation);
        sub_25FBC(v31, type metadata accessor for ScoredCollectionRecommendation);
        if (v33 < v32)
        {
          v21 |= 1uLL;
        }

        v20 = v19[2];
        v22 = v62;
      }

      if (v22 >= v20)
      {
        break;
      }

      v34 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v62 = v19;
      v59 = v34;
      v35 = v19 + v34;
      v36 = *(v61 + 72);
      v37 = v22;
      v60 = v36 * v22;
      v38 = v19 + v34 + v36 * v22;
      v39 = v63;
      sub_43050(v38, v63, &qword_229408, &unk_1BCC10);
      v40 = type metadata accessor for ScoredCollectionRecommendation(0);
      v41 = *(*(v40 - 8) + 48);
      if (v41(v39, 1, v40) == 1)
      {
        goto LABEL_36;
      }

      if (v21 >= v20)
      {
        goto LABEL_29;
      }

      v42 = v36 * v21;
      v43 = &v35[v36 * v21];
      v44 = v55;
      sub_43050(v43, v55, &qword_229408, &unk_1BCC10);
      if (v41(v44, 1, v40) == 1)
      {
        goto LABEL_37;
      }

      v45 = *(v40 + 28);
      v46 = v63;
      v47 = *(v63 + v45);
      v48 = *(v44 + v45);
      sub_25FBC(v44, type metadata accessor for ScoredCollectionRecommendation);
      result = sub_25FBC(v46, type metadata accessor for ScoredCollectionRecommendation);
      v19 = v62;
      if (v48 >= v47)
      {
        return result;
      }

      if (v37 != v21)
      {
        v49 = v62[2];
        if (v37 >= v49)
        {
          goto LABEL_33;
        }

        v50 = v60;
        sub_43050(&v35[v60], v57, &qword_229408, &unk_1BCC10);
        if (v21 >= v49)
        {
          goto LABEL_34;
        }

        sub_43050(&v35[v42], v56, &qword_229408, &unk_1BCC10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_56AE0(v19);
        }

        v51 = v19 + v59;
        sub_CBCD4(v56, v19 + v59 + v50);
        if (v21 >= v19[2])
        {
          goto LABEL_35;
        }

        result = sub_CBCD4(v57, &v51[v42]);
        *v53 = v19;
      }

      if ((v21 + 0x4000000000000000) < 0)
      {
        goto LABEL_30;
      }

      v22 = v21;
      v20 = v19[2];
      v21 *= 2;
      if (v20 <= v21)
      {
        return result;
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
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_C60DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v8);
      v8 = result;
    }

    v92 = v8 + 2;
    v93 = v8[2];
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = &v8[2 * v93];
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_C66B8((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7);
      v11 = 40 * v9;
      v12 = (*a3 + 40 * v9);
      v15 = *v12;
      v14 = v12 + 5;
      v13 = v15;
      v16 = v9 + 2;
      while (v6 != v16)
      {
        v17 = *v14;
        v18 = v14[5];
        v14 += 5;
        ++v16;
        if (v10 < v13 == v18 >= v17)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 40 * v7 - 40;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v11);
            v23 = *(v30 + v11 + 16);
            v24 = (v30 + v19);
            v25 = *(v22 + 3);
            v26 = *(v22 + 32);
            v27 = *v22;
            v28 = *(v24 + 4);
            v29 = v24[1];
            *v22 = *v24;
            v22[1] = v29;
            *(v22 + 4) = v28;
            *v24 = v27;
            *(v24 + 16) = v23;
            *(v24 + 3) = v25;
            *(v24 + 32) = v26;
          }

          ++v21;
          v19 -= 40;
          v11 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v45 = v8[2];
    v44 = v8[3];
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_32F04((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v46;
    v47 = v8 + 4;
    v48 = &v8[2 * v45 + 4];
    *v48 = v9;
    v48[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = v8[4];
          v51 = v8[5];
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = &v8[2 * v46];
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = &v47[2 * v49];
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = &v8[2 * v46];
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v47[2 * v49];
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = &v47[2 * v49 - 2];
        v88 = *v87;
        v89 = &v47[2 * v49];
        v90 = v89[1];
        sub_C66B8((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > v8[2])
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = v8[2];
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove(&v47[2 * v49], v89 + 2, 16 * (v91 - 1 - v49));
        v8[2] = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = &v47[2 * v46];
      v55 = *(v54 - 8);
      v56 = *(v54 - 7);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 6);
      v58 = *(v54 - 5);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = &v8[2 * v46];
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = &v47[2 * v49];
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v7 - 40;
  v33 = v9 - v7;
LABEL_30:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = v35 + 40;
    v37 = *(v35 + 40);
    if (v37 >= *v35)
    {
LABEL_29:
      ++v7;
      v32 += 40;
      --v33;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v35 + 48);
    v39 = *(v35 + 56);
    v40 = *(v35 + 64);
    result = *(v35 + 72);
    v41 = *(v35 + 16);
    *v36 = *v35;
    *(v35 + 56) = v41;
    v42 = *(v35 + 32);
    *v35 = v37;
    *(v35 + 8) = v38;
    *(v35 + 16) = v39;
    *(v35 + 24) = v40;
    *(v35 + 32) = result;
    v35 -= 40;
    *(v36 + 32) = v42;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}