uint64_t sub_232C48C68(uint64_t a1)
{
  v2 = v1;
  v36 = sub_232CE8E80();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_232B124A8(&qword_27DDC7B80, qword_232CFE500);
  result = sub_232CEA4B0();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_232C4883C(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_232C49FC4(&qword_2814E25D0, MEMORY[0x277CC99D8]);
    result = sub_232CE9C80();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_232C48FAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_232B124A8(&qword_27DDC7B90, &qword_232CFBE10);
  result = sub_232CEA4B0();
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
      sub_232C4883C(0, (v28 + 63) >> 6, v3 + 56);
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
    sub_232CEA820();
    sub_232CE9E40();
    result = sub_232CEA850();
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

uint64_t sub_232C49208(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_232CE8E80();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_232C48C68(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_232C49960(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_232C49FC4(&qword_2814E25D0, MEMORY[0x277CC99D8]);
      v14 = sub_232CE9C80();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_232C49FC4(&qword_2814E25C8, MEMORY[0x277CC99E0]);
        v16 = sub_232CE9CF0();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_232C495D4();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_232CEA790();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void sub_232C4946C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_232C48FAC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_232C49C64(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_232CEA820();
      sub_232CE9E40();
      v16 = sub_232CEA850();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_232CEA750() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_232C49808();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_232CEA790();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void *sub_232C495D4()
{
  v1 = v0;
  v2 = sub_232CE8E80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232B124A8(&qword_27DDC7B80, qword_232CFE500);
  v6 = *v0;
  v7 = sub_232CEA4A0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void sub_232C49808()
{
  v1 = v0;
  sub_232B124A8(&qword_27DDC7B90, &qword_232CFBE10);
  v2 = *v0;
  v3 = sub_232CEA4A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

uint64_t sub_232C49960(uint64_t a1)
{
  v2 = v1;
  v33 = sub_232CE8E80();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_232B124A8(&qword_27DDC7B80, qword_232CFE500);
  v7 = sub_232CEA4B0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_232C49FC4(&qword_2814E25D0, MEMORY[0x277CC99D8]);
        result = sub_232CE9C80();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_232C49C64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_232B124A8(&qword_27DDC7B90, &qword_232CFBE10);
  result = sub_232CEA4B0();
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
        sub_232CEA820();

        sub_232CE9E40();
        result = sub_232CEA850();
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

uint64_t sub_232C49EB0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_232CE9FE0();

  return v4;
}

unint64_t sub_232C49F1C()
{
  result = qword_27DDC7908;
  if (!qword_27DDC7908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC7908);
  }

  return result;
}

unint64_t sub_232C49F60()
{
  result = qword_27DDC8150;
  if (!qword_27DDC8150)
  {
    sub_232B27EEC(&qword_27DDC6AF0, &qword_232CF6E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8150);
  }

  return result;
}

uint64_t sub_232C49FC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_232CE8E80();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232C4A008(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_232C4A078(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_232C4A08C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232C4A0AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_232C4A158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_232CEA590();
}

uint64_t sub_232C4A178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return swift_beginAccess();
}

void sub_232C4A198()
{

  JUMPOUT(0x238391C30);
}

uint64_t sub_232C4A1B8()
{

  return sub_232CE9C60();
}

uint64_t sub_232C4A1D8(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_232C4A200@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v19 + 16) = a1;
  *(v19 + 8 * v20 + 32) = v22;

  return swift_endAccess();
}

double sub_232C4A220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{

  return result;
}

uint64_t sub_232C4A23C(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_232C4A278(uint64_t a1)
{
  *(v2 + v1) = a1;
}

double sub_232C4A2A0()
{

  return result;
}

id sub_232C4A2E4()
{

  return [v0 (v1 + 116)];
}

id sub_232C4A2FC()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_232C4A314()
{
  sub_232B0D210(v2, 0);
  sub_232B0D210(v1, 0);
  return sub_232B0D210(v0, 0);
}

void sub_232C4A364()
{

  JUMPOUT(0x238391C30);
}

uint64_t sub_232C4A37C()
{
}

double sub_232C4A3A0(uint64_t a1, uint64_t a2)
{

  return result;
}

uint64_t sub_232C4A3C4()
{

  return sub_232CEA5C0();
}

uint64_t sub_232C4A458()
{

  return sub_232CEA5C0();
}

uint64_t sub_232C4A478()
{

  return MEMORY[0x2821FFE88](0);
}

double sub_232C4A498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return result;
}

uint64_t sub_232C4A4B8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v19 + 16) = a1;
  *(v19 + 8 * v20 + 32) = v22;

  return swift_endAccess();
}

void *sub_232C4A4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_232B64944(v8, v7, v9, a4, v6, a6);
}

uint64_t sub_232C4A4F8()
{

  return sub_232CEA5C0();
}

uint64_t sub_232C4A518()
{

  return sub_232CEA5C0();
}

unint64_t sub_232C4A538()
{

  return sub_232B1F160(v0, v1);
}

id sub_232C4A550()
{

  return [v1 (v0 + 3320)];
}

void sub_232C4A568(void *a1, uint64_t a2)
{
  v4 = sub_232CE9D20();
  sub_232C4ACF0(v4, sel_bindNamedParam_toNSString_, ":cooccurrence_id");

  v5 = sub_232CE9D20();
  sub_232C4ACF0(v5, sel_bindNamedParam_toNSString_, ":name");

  v6 = sub_232CE9D20();
  sub_232C4ACF0(v6, sel_bindNamedParam_toNSString_, ":eid");

  v7 = sub_232CE9D20();
  sub_232C4ACF0(v7, sel_bindNamedParam_toNSString_, ":pid");

  if (*(a2 + OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_associatedFeatureData + 8) >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_232CE8C50();
  }

  v9 = v8;
  [a1 bindNamedParam:":associated_data" toNSData:?];
}

uint64_t sub_232C4A6C4(void *a1, uint64_t a2)
{
  v4 = [a1 getNSStringForColumn_];
  if (v4)
  {
    v5 = v4;
    v6 = sub_232CE9D50();
    v8 = v7;

    v9 = [a1 getNSStringForColumn_];
    if (v9)
    {
      v10 = v9;
      v11 = sub_232CE9D50();
      v13 = v12;

      swift_beginAccess();
      sub_232BAD0E4();
      v14 = *(*(a2 + 16) + 16);
      sub_232BAD230(v14);
      v15 = *(a2 + 16);
      *(v15 + 16) = v14 + 1;
      v16 = (v15 + 32 * v14);
      v16[4] = v6;
      v16[5] = v8;
      v16[6] = v11;
      v16[7] = v13;
      *(a2 + 16) = v15;
      swift_endAccess();
    }

    else
    {
    }
  }

  return *MEMORY[0x277D42690];
}

uint64_t sub_232C4A7D4(void *a1, uint64_t a2)
{
  v3 = [a1 getIntegerForColumn_];
  sub_232C4AC88(v3);
  *(a2 + 16) = v3;
  return *MEMORY[0x277D42698];
}

uint64_t sub_232C4A844(void *a1)
{
  v3 = sub_232C4ACC0(a1);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  sub_232CE9D50();

  v5 = sub_232C4ACE4();
  v7 = [v5 v6];
  if (!v7)
  {
LABEL_7:

LABEL_8:
    v24 = MEMORY[0x277D42690];
    return *v24;
  }

  v8 = v7;
  v9 = sub_232CE9D50();
  v11 = v10;

  v12 = sub_232C4ACE4();
  v14 = [v12 v13];
  if (!v14)
  {

    goto LABEL_7;
  }

  v15 = v14;
  v16 = sub_232CE9D50();
  v18 = v17;

  v19 = [v2 getNSDataForColumn_];
  if (v19)
  {
    v20 = v19;
    v21 = sub_232CE8C80();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  sub_232C4AC88(v19);
  sub_232C4ACA8();
  v1[4] = v9;
  v1[5] = v11;
  v1[6] = v16;
  v1[7] = v18;
  v1[8] = v21;
  v1[9] = v23;
  sub_232B267AC(v26, &qword_27DDC8118, &qword_232CFE2E0);
  v24 = MEMORY[0x277D42698];
  return *v24;
}

uint64_t sub_232C4A9A8(void *a1, void *a2)
{
  v4 = [a1 getNSStringForColumn_];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_232CE9D50();
  v8 = v7;

  v9 = [a1 getNSStringForColumn_];
  if (!v9)
  {

LABEL_6:
    v19 = MEMORY[0x277D42690];
    return *v19;
  }

  v10 = v9;
  v11 = sub_232CE9D50();
  v13 = v12;

  v14 = [a1 getNSDataForColumn_];
  if (v14)
  {
    v15 = v14;
    v16 = sub_232CE8C80();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  sub_232C4AC88(v14);
  v20 = a2[2];
  v21 = a2[3];
  v22 = a2[4];
  v23 = a2[5];
  v24 = a2[6];
  v25 = a2[7];
  a2[2] = v6;
  a2[3] = v8;
  a2[4] = v11;
  a2[5] = v13;
  a2[6] = v16;
  a2[7] = v18;
  sub_232C42784(v20, v21, v22, v23, v24, v25);
  v19 = MEMORY[0x277D42698];
  return *v19;
}

id sub_232C4AACC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_232C5A124(":query_pid", a2, a3, a1);

  return sub_232C5A124(":query_name", a4, a5, a1);
}

uint64_t sub_232C4AB30(void *a1)
{
  v3 = sub_232C4ACC0(a1);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  sub_232CE9D50();

  v5 = sub_232C4ACE4();
  v7 = [v5 v6];
  if (!v7)
  {
LABEL_7:

LABEL_8:
    v24 = MEMORY[0x277D42690];
    return *v24;
  }

  v8 = v7;
  v9 = sub_232CE9D50();
  v11 = v10;

  v12 = sub_232C4ACE4();
  v14 = [v12 v13];
  if (!v14)
  {

    goto LABEL_7;
  }

  v15 = v14;
  v16 = sub_232CE9D50();
  v18 = v17;

  v19 = [v2 getNSDataForColumn_];
  if (v19)
  {
    v20 = v19;
    v21 = sub_232CE8C80();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  sub_232C4AC88(v19);
  sub_232C4ACA8();
  v1[4] = v16;
  v1[5] = v18;
  v1[6] = v9;
  v1[7] = v11;
  v1[8] = v21;
  v1[9] = v23;
  sub_232B267AC(v26, &qword_27DDC8120, &qword_232CFE2E8);
  v24 = MEMORY[0x277D42698];
  return *v24;
}

uint64_t sub_232C4AC88(uint64_t a1, ...)
{

  return swift_beginAccess();
}

__n128 sub_232C4ACA8()
{
  result = v0[3];
  v0[1].n128_u64[0] = v2;
  v0[1].n128_u64[1] = v1;
  return result;
}

id sub_232C4ACC0(void *a1)
{

  return [a1 getNSStringForColumn_];
}

id sub_232C4ACF0(uint64_t a1, const char *a2, uint64_t a3)
{

  return [v3 a2];
}

void sub_232C4AD08(uint64_t a1, void *a2)
{
  v4 = 0;
  v30 = a1 & 0xC000000000000001;
  v31 = sub_232B26B10();
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1;
  while (v31 != v4)
  {
    if (v30)
    {
      v5 = MEMORY[0x2383922C0](v4, v29);
    }

    else
    {
      if (v4 >= *(v28 + 16))
      {
        goto LABEL_22;
      }

      v5 = *(v29 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v7 = sub_232C49EA4(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v32 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v11 = *a2;
      v33 = *a2;
      *a2 = 0x8000000000000000;
      v12 = sub_232B1F160(v9, v10);
      if (__OFADD__(v11[2], (v13 & 1) == 0))
      {
        goto LABEL_23;
      }

      v14 = v12;
      v15 = v13;
      sub_232B124A8(&qword_27DDC8170, &qword_232CFE548);
      if (sub_232CEA5C0())
      {
        v16 = sub_232B1F160(v9, v10);
        if ((v15 & 1) != (v17 & 1))
        {
          goto LABEL_26;
        }

        v14 = v16;
      }

      *a2 = v33;

      v18 = *a2;
      if (v15)
      {
      }

      else
      {
        v18[(v14 >> 6) + 8] |= 1 << v14;
        v19 = (v18[6] + 16 * v14);
        *v19 = v9;
        v19[1] = v10;
        v20 = v18[7] + 40 * v14;
        *(v20 + 32) = 0;
        *v20 = 0u;
        *(v20 + 16) = 0u;
        v21 = v18[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_25;
        }

        v18[2] = v23;
      }

      v24 = v18[7] + 40 * v14;
      v26 = *(v24 + 24);
      v25 = (v24 + 24);
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_24;
      }

      *v25 = v27;
      v6 = v32;
    }

    ++v4;
  }
}

void sub_232C4AF38(uint64_t a1, void *a2)
{
  v4 = 0;
  v30 = a1 & 0xC000000000000001;
  v31 = sub_232B26B10();
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1;
  while (v31 != v4)
  {
    if (v30)
    {
      v5 = MEMORY[0x2383922C0](v4, v29);
    }

    else
    {
      if (v4 >= *(v28 + 16))
      {
        goto LABEL_22;
      }

      v5 = *(v29 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v7 = sub_232C49EA4(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v32 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v11 = *a2;
      v33 = *a2;
      *a2 = 0x8000000000000000;
      v12 = sub_232B1F160(v9, v10);
      if (__OFADD__(v11[2], (v13 & 1) == 0))
      {
        goto LABEL_23;
      }

      v14 = v12;
      v15 = v13;
      sub_232B124A8(&qword_27DDC8170, &qword_232CFE548);
      if (sub_232CEA5C0())
      {
        v16 = sub_232B1F160(v9, v10);
        if ((v15 & 1) != (v17 & 1))
        {
          goto LABEL_26;
        }

        v14 = v16;
      }

      *a2 = v33;

      v18 = *a2;
      if (v15)
      {
      }

      else
      {
        v18[(v14 >> 6) + 8] |= 1 << v14;
        v19 = (v18[6] + 16 * v14);
        *v19 = v9;
        v19[1] = v10;
        v20 = v18[7] + 40 * v14;
        *(v20 + 32) = 0;
        *v20 = 0u;
        *(v20 + 16) = 0u;
        v21 = v18[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_25;
        }

        v18[2] = v23;
      }

      v24 = v18[7] + 40 * v14;
      v26 = *(v24 + 32);
      v25 = (v24 + 32);
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_24;
      }

      *v25 = v27;
      v6 = v32;
    }

    ++v4;
  }
}

void sub_232C4B168(uint64_t a1, void *a2)
{
  v4 = 0;
  v27 = a1 & 0xC000000000000001;
  v28 = sub_232B26B10();
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v26 = a1;
  while (v28 != v4)
  {
    if (v27)
    {
      v5 = MEMORY[0x2383922C0](v4, v26);
    }

    else
    {
      if (v4 >= *(v25 + 16))
      {
        goto LABEL_22;
      }

      v5 = *(v26 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v7 = sub_232C49EA4(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v29 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v11 = *a2;
      v30 = *a2;
      *a2 = 0x8000000000000000;
      v12 = sub_232B1F160(v9, v10);
      if (__OFADD__(v11[2], (v13 & 1) == 0))
      {
        goto LABEL_23;
      }

      v14 = v12;
      v15 = v13;
      sub_232B124A8(&qword_27DDC8170, &qword_232CFE548);
      if (sub_232CEA5C0())
      {
        v16 = sub_232B1F160(v9, v10);
        if ((v15 & 1) != (v17 & 1))
        {
          goto LABEL_26;
        }

        v14 = v16;
      }

      *a2 = v30;

      v18 = *a2;
      if (v15)
      {
      }

      else
      {
        v18[(v14 >> 6) + 8] |= 1 << v14;
        v19 = (v18[6] + 16 * v14);
        *v19 = v9;
        v19[1] = v10;
        v20 = v18[7] + 40 * v14;
        *(v20 + 32) = 0;
        *v20 = 0u;
        *(v20 + 16) = 0u;
        v21 = v18[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_25;
        }

        v18[2] = v23;
      }

      v24 = (v18[7] + 40 * v14);
      if (__OFADD__(*v24, 1))
      {
        goto LABEL_24;
      }

      ++*v24;
      v6 = v29;
    }

    ++v4;
  }
}

void sub_232C4B398(uint64_t a1, void *a2)
{
  v4 = 0;
  v30 = a1 & 0xC000000000000001;
  v31 = sub_232B26B10();
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1;
  while (v31 != v4)
  {
    if (v30)
    {
      v5 = MEMORY[0x2383922C0](v4, v29);
    }

    else
    {
      if (v4 >= *(v28 + 16))
      {
        goto LABEL_22;
      }

      v5 = *(v29 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v7 = sub_232C49EA4(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v32 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v11 = *a2;
      v33 = *a2;
      *a2 = 0x8000000000000000;
      v12 = sub_232B1F160(v9, v10);
      if (__OFADD__(v11[2], (v13 & 1) == 0))
      {
        goto LABEL_23;
      }

      v14 = v12;
      v15 = v13;
      sub_232B124A8(&qword_27DDC8170, &qword_232CFE548);
      if (sub_232CEA5C0())
      {
        v16 = sub_232B1F160(v9, v10);
        if ((v15 & 1) != (v17 & 1))
        {
          goto LABEL_26;
        }

        v14 = v16;
      }

      *a2 = v33;

      v18 = *a2;
      if (v15)
      {
      }

      else
      {
        v18[(v14 >> 6) + 8] |= 1 << v14;
        v19 = (v18[6] + 16 * v14);
        *v19 = v9;
        v19[1] = v10;
        v20 = v18[7] + 40 * v14;
        *(v20 + 32) = 0;
        *v20 = 0u;
        *(v20 + 16) = 0u;
        v21 = v18[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_25;
        }

        v18[2] = v23;
      }

      v24 = v18[7] + 40 * v14;
      v26 = *(v24 + 8);
      v25 = (v24 + 8);
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_24;
      }

      *v25 = v27;
      v6 = v32;
    }

    ++v4;
  }
}

void sub_232C4B5C8(uint64_t a1, void *a2)
{
  v4 = 0;
  v30 = a1 & 0xC000000000000001;
  v31 = sub_232B26B10();
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1;
  while (v31 != v4)
  {
    if (v30)
    {
      v5 = MEMORY[0x2383922C0](v4, v29);
    }

    else
    {
      if (v4 >= *(v28 + 16))
      {
        goto LABEL_22;
      }

      v5 = *(v29 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v7 = sub_232C49EA4(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v32 = v6;
      swift_isUniquelyReferenced_nonNull_native();
      v11 = *a2;
      v33 = *a2;
      *a2 = 0x8000000000000000;
      v12 = sub_232B1F160(v9, v10);
      if (__OFADD__(v11[2], (v13 & 1) == 0))
      {
        goto LABEL_23;
      }

      v14 = v12;
      v15 = v13;
      sub_232B124A8(&qword_27DDC8170, &qword_232CFE548);
      if (sub_232CEA5C0())
      {
        v16 = sub_232B1F160(v9, v10);
        if ((v15 & 1) != (v17 & 1))
        {
          goto LABEL_26;
        }

        v14 = v16;
      }

      *a2 = v33;

      v18 = *a2;
      if (v15)
      {
      }

      else
      {
        v18[(v14 >> 6) + 8] |= 1 << v14;
        v19 = (v18[6] + 16 * v14);
        *v19 = v9;
        v19[1] = v10;
        v20 = v18[7] + 40 * v14;
        *(v20 + 32) = 0;
        *v20 = 0u;
        *(v20 + 16) = 0u;
        v21 = v18[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_25;
        }

        v18[2] = v23;
      }

      v24 = v18[7] + 40 * v14;
      v26 = *(v24 + 16);
      v25 = (v24 + 16);
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_24;
      }

      *v25 = v27;
      v6 = v32;
    }

    ++v4;
  }
}

uint64_t sub_232C4B7F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_232B37A24();
  sub_232BD3CC8();
  v4 = v3;
  sub_232B08AC8(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_232C4B888(uint64_t a1)
{
  v1 = sub_232CE9DD0();
  v7[0] = 32;
  v7[1] = 0xE100000000000000;
  v6[2] = v7;
  if (*(sub_232C484F0(1, 1, sub_232B551FC, v6, v1, v2) + 16))
  {

    v3 = sub_232BC1E48();
    v4 = MEMORY[0x238391B80](v3);
  }

  else
  {

    return 0;
  }

  return v4;
}

BOOL sub_232C4B964()
{
  sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v0);
  sub_232B20704();
  v1 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v2 = sub_232C50ED0(32);
  sub_232BA5C94();
  v3 = sub_232CE9D20();
  v4 = sub_232BA5C94();
  v5 = [v2 matchesInString:v3 options:0 range:{0, MEMORY[0x238391CC0](v4)}];

  sub_232BA4DEC(0, &qword_27DDC7530, 0x277CCACC0);
  sub_232CE9FE0();

  v6 = sub_232B26B10();

  return v6 != 0;
}

void sub_232C4BB54()
{
  sub_232B5F048();
  v2 = v1;
  v92 = v3;
  v5 = v4;
  sub_232B4D640();
  v6 = sub_232CE9A30();
  sub_232B48F0C();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = &v80 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v80 - v15;
  v17 = *(v0 + 16);
  v18 = sub_232B26B10();
  v90 = v17;
  if (v17 == v18)
  {
    v84 = v16;
    sub_232B124A8(&qword_27DDC80C8, &qword_232CFE248);
    v85 = MEMORY[0x277D84F90];
    v19 = sub_232CE9C60();
    v20 = sub_232B26B10();
    v21 = 0;
    v96 = v5 & 0xFFFFFFFFFFFFFF8;
    v97 = v5 & 0xC000000000000001;
    v81 = v5;
    v94 = v5 + 32;
    v95 = "madConfidenceThreshold";
    v89 = (v8 + 8);
    v22 = v20;
    v23 = v0 + 40;
    *&v24 = 134218240;
    v86 = v24;
    *&v24 = 134218242;
    v82 = v24;
    v87 = v20;
    v88 = v6;
    v83 = v0 + 40;
LABEL_3:
    v25 = (v23 + 16 * v21);
    v26 = v21;
    v93 = v19;
    while (v22 != v26)
    {
      if (v97)
      {
        v27 = MEMORY[0x2383922C0](v26, v81);
      }

      else
      {
        if (v26 >= *(v96 + 16))
        {
          goto LABEL_47;
        }

        v27 = *(v94 + 8 * v26);
        swift_unknownObjectRetain();
      }

      v21 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_46;
      }

      swift_unknownObjectRetain_n();
      v28 = sub_232CE9D20();
      v29 = [v27 featureValueForName_];

      if (v29)
      {
        v30 = [v29 dictionaryValue];
        sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
        v31 = sub_232CE9C40();

        v98 = 1;
        sub_232CEA490();
        if (*(v31 + 16) && (v32 = sub_232B1F268(v99), (v33 & 1) != 0))
        {
          v34 = *(*(v31 + 56) + 8 * v32);
          sub_232B1FA60(v99);

          [v34 doubleValue];
          v36 = v35;
          swift_unknownObjectRelease_n();

          if (v36 >= v2)
          {
            if (v26 >= v90)
            {
              goto LABEL_48;
            }

            v40 = *(v25 - 1);
            v41 = *v25;

            sub_232C459C0(v40, v41);
            v43 = v42;
            v45 = v44;
            v19 = v93;

            if (!*(v19 + 16) || (v46 = sub_232B1F160(v43, v45), (v47 & 1) == 0) || *(*(v19 + 56) + 24 * v46 + 16) < v36)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v99[0] = v19;
              v48 = sub_232BA5C94();
              sub_232B1FF6C(v48, v49, v43);
              v19 = v99[0];
              v50 = v84;
              sub_232CE9A20();

              v51 = sub_232CE9A00();
              v52 = sub_232CEA1A0();

              if (os_log_type_enabled(v51, v52))
              {
                v53 = sub_232C15B2C();
                v54 = v19;
                v55 = swift_slowAlloc();
                v99[0] = v55;
                *v53 = v82;
                *(v53 + 4) = v36;
                *(v53 + 12) = 2080;
                v56 = sub_232BAD2D4(v43, v45, v99);

                *(v53 + 14) = v56;
                _os_log_impl(&dword_232B02000, v51, v52, "PoemStreamUtilities: Found a confident model prediction with %f for %s", v53, 0x16u);
                sub_232B2040C(v55);
                v19 = v54;
                sub_232BA6A84();
                sub_232B26D28();
                swift_unknownObjectRelease();
              }

              else
              {

                swift_unknownObjectRelease();
              }

              v6 = v88;
              (*v89)(v50, v88);
              v22 = v87;
              v23 = v83;
              goto LABEL_3;
            }

            swift_unknownObjectRelease();

            v22 = v87;
            v6 = v88;
          }

          else
          {
            sub_232CE9A20();
            v37 = sub_232CE9A00();
            v38 = sub_232CEA1A0();
            if (os_log_type_enabled(v37, v38))
            {
              v39 = sub_232C15B2C();
              *v39 = v86;
              *(v39 + 4) = v36;
              *(v39 + 12) = 2048;
              *(v39 + 14) = v2;
              _os_log_impl(&dword_232B02000, v37, v38, "PoemStreamUtilities: Found a prediction with %f less than threshold %f", v39, 0x16u);
              sub_232BA6A84();
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            (*v89)(v91, v6);
          }
        }

        else
        {

          swift_unknownObjectRelease_n();
          sub_232B1FA60(v99);
        }
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v26;
      v25 += 2;
    }

    v99[0] = MEMORY[0x277D84F90];
    v60 = v19 + 64;
    sub_232B34F88();
    v63 = v62 & v61;
    v65 = (v64 + 63) >> 6;

    v66 = 0;
    while (v63)
    {
LABEL_39:
      v68 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
      v69 = v68 | (v66 << 6);
      v70 = (*(v93 + 48) + 16 * v69);
      v71 = *v70;
      v72 = v70[1];
      v73 = (*(v93 + 56) + 24 * v69);
      v74 = *v73;
      v75 = v73[1];
      v76 = *(v73 + 2);

      v77 = sub_232C4EDE0(v74, v75, v71, v72, v92, v76);

      if (v77)
      {
        MEMORY[0x238391D50](v78);
        v79 = *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v79 >> 1)
        {
          sub_232BC1BBC(v79);
          sub_232CEA000();
        }

        sub_232B5A008();
        sub_232CEA020();
        v85 = v99[0];
      }
    }

    while (1)
    {
      v67 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v67 >= v65)
      {

        goto LABEL_44;
      }

      v63 = *(v60 + 8 * v67);
      ++v66;
      if (v63)
      {
        v66 = v67;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  else
  {
    sub_232CE9A20();
    v57 = sub_232CE9A00();
    v58 = sub_232CEA1C0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_232B02000, v57, v58, "PoemStreamUtilities: Keys count mismatch during aggregation model inference", v59, 2u);
      sub_232BA6A84();
    }

    (*(v8 + 8))(v11, v6);
LABEL_44:
    sub_232B5F02C();
  }
}

void sub_232C4C348()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = sub_232CE9A30();
  sub_232B48F0C();
  v31 = v5;
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v30 = v8 - v7;
  v32 = v1;
  sub_232C4C7B4();
  v10 = *(v9 + 16);
  v33 = v3;
  if (v10)
  {
    v34 = MEMORY[0x277D84F90];
    sub_232CEA580();
    v11 = 32;
    do
    {

      sub_232CEA560();
      sub_232CEA590();
      sub_232BC1EB4();
      sub_232CEA5A0();
      sub_232CEA570();
      v11 += 16;
      --v10;
    }

    while (v10);

    v12 = v34;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v35[0] = sub_232CE9C60();
  v13 = sub_232B26B10();
  v14 = 0;
  v15 = v12 & 0xFFFFFFFFFFFFFF8;
  v16 = &OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions;
  v17 = &OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_pronounExtractions;
  while (v13 != v14)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2383922C0](v14, v12);
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }
    }

    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v21 = MEMORY[0x2383922C0](v14, v15);
      goto LABEL_18;
    }

    sub_232BA63D0();
    swift_beginAccess();

    sub_232C4B168(v18, v35);

    sub_232BA63D0();
    swift_beginAccess();

    sub_232C4B398(v19, v35);

    sub_232BA63D0();
    swift_beginAccess();

    sub_232C4B5C8(v20, v35);

    ++v14;
  }

  v14 = v32;
  v15 = v33;
  if ((v32 & 0x8000000000000000) == 0 && sub_232B26B10() > v32)
  {
    v16 = (v33 & 0xC000000000000001);
    sub_232B26B2C();
    v17 = (v33 + 8 * v32);
    if ((v33 & 0xC000000000000001) != 0)
    {
      goto LABEL_29;
    }

    v21 = v17[4];

LABEL_18:
    v22 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderExtractions;
    sub_232BA63D0();
    swift_beginAccess();
    v23 = *(v21 + v22);

    sub_232C4AD08(v23, v35);

    if (v16)
    {
      v24 = MEMORY[0x2383922C0](v14, v15);
    }

    else
    {
      v24 = v17[4];
    }

    v28 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverExtractions;
    sub_232BA63D0();
    swift_beginAccess();
    v29 = *(v24 + v28);

    sub_232C4AF38(v29, v35);

    goto LABEL_26;
  }

  sub_232CE9A20();

  v25 = sub_232CE9A00();
  v26 = sub_232CEA1C0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = sub_232C15B2C();
    *v27 = 134218240;
    *(v27 + 4) = v32;
    *(v27 + 12) = 2048;
    *(v27 + 14) = sub_232B26B10();

    _os_log_impl(&dword_232B02000, v25, v26, "PoemStreamUtilities: Invalid index %ld for messages count: %ld", v27, 0x16u);
    sub_232BA6A84();
  }

  else
  {
  }

  (*(v31 + 8))(v30, v4);
LABEL_26:
  sub_232B20A00();
}

void sub_232C4C7B4()
{
  sub_232B35110();
  v4 = v3;
  v6 = v5;
  sub_232B4D640();
  v7 = sub_232CE9A30();
  sub_232B48F0C();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_232C528C4();
  if (v6 < 0 || (v38 = sub_232B26B10(), v38 <= v6))
  {
    sub_232CE9A20();

    v24 = sub_232CE9A00();
    v25 = sub_232CEA1C0();
    if (sub_232C5296C(v25))
    {
      v26 = sub_232C15B2C();
      *v26 = 134218240;
      *(v26 + 4) = v6;
      *(v26 + 12) = 2048;
      *(v26 + 14) = sub_232B26B10();

      _os_log_impl(&dword_232B02000, v24, v2, "PoemStreamUtilities: Invalid pivot %ld for messages count: %ld", v26, 0x16u);
      sub_232BA6A84();
    }

    else
    {
    }

    (*(v9 + 8))(v1, v7);
  }

  else
  {
    v11 = v0 & 0xC000000000000001;
    v12 = MEMORY[0x277D84F90];
    v13 = 1;
    v14 = v6;
LABEL_4:
    v15 = v14;
    while (1)
    {
      v14 = v15 - 1;
      if (v15 < 1 || v13 >= v4)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x2383922C0](v15 - 1, v0);
      }

      else
      {
        if (v15 > *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          return;
        }
      }

      v17 = sub_232C47A50();

      v15 = v14;
      if (v17)
      {
        if (v11)
        {
          v18 = MEMORY[0x2383922C0](v14, v0);
        }

        else
        {
          v18 = *(v0 + 8 * v14 + 32);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_232C52988();
          v12 = v22;
        }

        v19 = *(v12 + 16);
        v20 = v19 + 1;
        if (v19 >= *(v12 + 24) >> 1)
        {
          sub_232B3711C();
          v20 = v19 + 1;
          v12 = v23;
        }

        *(v12 + 16) = v20;
        v21 = v12 + 16 * v19;
        *(v21 + 32) = v18;
        *(v21 + 40) = v13++;
        goto LABEL_4;
      }
    }

    v27 = 0;
    while (v6 < v38 && v27 < v4)
    {
      if (v11)
      {
        v35 = sub_232B5A008();
        MEMORY[0x2383922C0](v35);
      }

      else
      {
        if (v6 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }
      }

      v29 = sub_232C47A50();

      if (v29)
      {
        if (v11)
        {
          v30 = sub_232B5A008();
          v31 = MEMORY[0x2383922C0](v30);
        }

        else
        {
          v31 = *(v0 + 8 * v6 + 32);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_232C52988();
          v12 = v36;
        }

        v33 = *(v12 + 16);
        v32 = *(v12 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_232BC1BBC(v32);
          sub_232B3711C();
          v12 = v37;
        }

        *(v12 + 16) = v33 + 1;
        v34 = v12 + 16 * v33;
        *(v34 + 32) = v31;
        *(v34 + 40) = v27++;
      }

      ++v6;
    }
  }

  sub_232B20A00();
}

uint64_t sub_232C4CB00()
{
  v1 = sub_232CE9A30();
  sub_232B48F0C();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_232C528C4();
  sub_232CE9A20();
  v5 = sub_232CE9A00();
  v6 = sub_232CEA1A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_232B02000, v5, v6, "PoemStreamUtilities: Clearing the poem stream", v7, 2u);
    sub_232BA6A84();
  }

  (*(v3 + 8))(v0, v1);
  v8 = [BiomeLibrary() TextUnderstanding];
  sub_232B26CE8();
  swift_unknownObjectRelease();
  v9 = [v0 DocumentUnderstanding];
  sub_232B26D70();
  swift_unknownObjectRelease();
  v10 = [v5 Poem];
  swift_unknownObjectRelease();
  v11 = [v10 pruner];
  v12 = sub_232CE9D20();
  v20 = sub_232C32E98;
  v21 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  sub_232C52938();
  v18 = v13;
  v19 = &unk_284813BC8;
  v14 = _Block_copy(&aBlock);

  [v11 deleteWithPolicy:v12 eventsPassingTest:{v14, aBlock, v17}];

  _Block_release(v14);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void sub_232C4CD74()
{
  sub_232B35110();
  sub_232B4D640();
  v1 = sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v2);
  sub_232C528C4();
  sub_232CE9A20();

  v3 = sub_232CE9A00();
  v4 = sub_232CEA1A0();
  if (sub_232C5296C(v4))
  {
    v5 = sub_232BC1F80();
    *v5 = 134217984;
    *(v5 + 4) = sub_232B26B10();

    sub_232C5294C(&dword_232B02000, v6, v7, "PoemStreamUtilities: Adding %ld events to poem stream");
    sub_232B26D28();
  }

  else
  {
  }

  v8 = sub_232BC1E48();
  v9(v8);
  v10 = [BiomeLibrary() TextUnderstanding];
  sub_232B26D70();
  swift_unknownObjectRelease();
  v11 = [v1 DocumentUnderstanding];
  swift_unknownObjectRelease();
  v12 = [v11 Poem];
  swift_unknownObjectRelease();
  v13 = [v12 source];
  v14 = sub_232B26B10();
  for (i = 0; ; ++i)
  {
    if (v14 == i)
    {

      sub_232B20A00();
      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x2383922C0](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v16 = *(v0 + 8 * i + 32);
    }

    v17 = v16;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v13 sendEvent_];
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_232C4CFA4()
{
  sub_232B5F048();
  sub_232B4D640();
  sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v1);
  sub_232C528C4();
  sub_232CE9A20();

  v2 = sub_232CE9A00();
  v3 = sub_232CEA1A0();
  if (sub_232C5296C(v3))
  {
    v4 = sub_232BC1F80();
    *v4 = 134217984;
    *(v4 + 4) = sub_232B26B10();

    sub_232C5294C(&dword_232B02000, v5, v6, "PoemStreamUtilities: Found %ld events using buffer stream");
    sub_232B26D28();
  }

  else
  {
  }

  v7 = sub_232BC1E48();
  v9 = v8(v7);
  v10 = sub_232C4F1F4(v9);
  v35 = MEMORY[0x277D84FA0];
  v34 = MEMORY[0x277D84F90];
  v11 = sub_232B26B10();
  if (!v11)
  {

LABEL_24:
    sub_232C4F41C();

    sub_232C4CD74();

    sub_232B5F02C();
    return;
  }

  v12 = v11;
  if (v11 >= 1)
  {
    v32 = v10;
    for (i = 0; i != v12; ++i)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2383922C0](i, v0);
      }

      else
      {
        v14 = *(v0 + 8 * i + 32);
      }

      v15 = v14;
      v16 = [v14 object];
      if (v16 && (v17 = v16, v18 = [v16 person], v17, v18) && (v19 = sub_232C52688(v18), v20))
      {
        v21 = v19;
        v22 = v20;
        if (*(v32 + 16) && (v23 = sub_232B1F160(v19, v20), (v24 & 1) != 0) && (v25 = *(*(v32 + 56) + 8 * v23), [v15 confidence], v27 = v26, objc_msgSend(v25, sel_confidence), v29 = v28, v25, v29 >= v27))
        {
        }

        else
        {
          sub_232C48B20(&v33, v21, v22);

          v30 = v15;
          MEMORY[0x238391D50]();
          v31 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v31 >> 1)
          {
            sub_232BC1BBC(v31);
            sub_232CEA000();
          }

          sub_232CEA020();
        }
      }

      else
      {
      }
    }

    goto LABEL_24;
  }

  __break(1u);
}

void *sub_232C4D2BC(void *result)
{
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();
    v2 = sub_232CE9D20();
    v3 = [v1 featureValueForName_];

    if (v3)
    {
      v4 = [v3 dictionaryValue];
      sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
      v5 = sub_232CE9C40();

      sub_232CEA490();
      v6 = sub_232B1E304(v9, v5);

      sub_232B1FA60(v9);
      if (v6)
      {
        [v6 doubleValue];
        v8 = v7;
        swift_unknownObjectRelease();

        return v8;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_232C4D440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return -1;
  }

  v8 = sub_232B1F160(a1, a2);
  if ((v9 & 1) == 0)
  {
    return -1;
  }

  v10 = (*(a5 + 56) + 16 * v8);
  v11 = *v10 == a3 && v10[1] == a4;
  result = 1;
  if (!v11)
  {
    sub_232B5A008();
    if ((sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

void sub_232C4D4C8()
{
  sub_232B35110();
  sub_232CE9A30();
  sub_232B48F0C();
  v16 = v2;
  v17 = v1;
  MEMORY[0x28223BE20](v1);
  sub_232B20704();
  v5 = v4 - v3;
  sub_232BC1ECC();
  swift_allocObject();
  sub_232B26D70();
  sub_232BC1ECC();
  v6 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v6 + 16) = 0;
  v7 = [objc_allocWithZone(MEMORY[0x277CD9880]) init];
  sub_232BA4DEC(0, &qword_27DDC8178, 0x277CCAC30);
  sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_232CF6460;
  *(v8 + 56) = sub_232B124A8(&qword_27DDC8180, &qword_232CFE550);
  *(v8 + 64) = sub_232C52770();
  *(v8 + 32) = &unk_2848104C0;
  v9 = sub_232CEA130();
  [v7 setInternalPredicate:v9];

  v10 = [objc_opt_self() fetchPersonsWithOptions_];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v0;
  v18[4] = sub_232C527D4;
  v18[5] = v11;
  sub_232C52900();
  v18[1] = 1107296256;
  v18[2] = sub_232C50640;
  v18[3] = &unk_284813AB0;
  v12 = _Block_copy(v18);

  [v10 enumerateObjectsUsingBlock:v12];
  _Block_release(v12);
  sub_232CE9A20();

  v13 = sub_232CE9A00();
  v14 = sub_232CEA1A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = sub_232C15B2C();
    *v15 = 134218240;
    sub_232BA63D0();
    swift_beginAccess();
    *(v15 + 4) = *(v0 + 16);

    *(v15 + 12) = 2048;
    sub_232BA63D0();
    swift_beginAccess();
    *(v15 + 14) = *(v6 + 16);

    _os_log_impl(&dword_232B02000, v13, v14, "Found %ld named people and %ld unnamed people on device from photos", v15, 0x16u);
    sub_232BA6A84();
  }

  else
  {

    v13 = v10;
    v10 = v7;
  }

  (*(v16 + 8))(v5, v17);
  sub_232BA63D0();
  swift_beginAccess();
  sub_232BA63D0();
  swift_beginAccess();

  sub_232B20A00();
}

void sub_232C4D86C()
{
  sub_232B35110();
  v1 = v0;
  v55 = sub_232CE9A30();
  sub_232B48F0C();
  v54 = v2;
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v56 = v5 - v4;
  type metadata accessor for PoemConversations();
  swift_allocObject();
  v6 = sub_232C46CC8();
  v63 = 0;
  v60 = sub_232B26B10();
  sub_232BA63D0();
  swift_beginAccess();
  v58 = v1;
  v59 = v1 & 0xC000000000000001;
  v57 = v1 & 0xFFFFFFFFFFFFFF8;
  for (i = 0; v60 != i; ++i)
  {
    if (v59)
    {
      v8 = MEMORY[0x2383922C0](i, v58);
    }

    else
    {
      if (i >= *(v57 + 16))
      {
        goto LABEL_37;
      }

      v8 = *(v58 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v9 = v6[2];
    if (*(v9 + 16))
    {
      v10 = *(v8 + 16);
      v11 = *(v8 + 24);

      v12 = sub_232B1F160(v10, v11);
      v14 = v13;

      if (v14)
      {
        v15 = *(*(v9 + 56) + 8 * v12);

        swift_beginAccess();

        MEMORY[0x238391D50](v16);
        v17 = *((*(v15 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((*(v15 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v17 >> 1)
        {
          sub_232BC1BBC(v17);
          sub_232CEA000();
        }

        sub_232CEA020();
        swift_endAccess();

        goto LABEL_22;
      }
    }

    v61 = i;
    v19 = *(v8 + 16);
    v18 = *(v8 + 24);
    sub_232B124A8(&qword_27DDC6920, &qword_232CF6520);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_232CF64E0;
    *(v20 + 32) = v8;
    type metadata accessor for PoemMessageThread();
    swift_allocObject();
    v21 = sub_232BC1EB4();
    v23 = sub_232C43470(v21, v22, v20);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    swift_isUniquelyReferenced_nonNull_native();
    v62 = v6[2];
    v24 = v6;
    v6[2] = 0x8000000000000000;
    v25 = sub_232BC1EB4();
    sub_232B1F160(v25, v26);
    sub_232C529AC();
    if (v29)
    {
      goto LABEL_38;
    }

    v30 = v27;
    v31 = v28;
    sub_232B124A8(&qword_27DDC81B0, &qword_232CFE558);
    if (sub_232CEA5C0())
    {
      v32 = sub_232BC1EB4();
      v34 = sub_232B1F160(v32, v33);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_40;
      }

      v30 = v34;
    }

    if (v31)
    {
      *(*(v62 + 56) + 8 * v30) = v23;
    }

    else
    {
      sub_232C529C0(v62 + 8 * (v30 >> 6));
      v37 = (v36 + 16 * v30);
      *v37 = v19;
      v37[1] = v18;
      *(*(v62 + 56) + 8 * v30) = v23;
      v38 = *(v62 + 16);
      v29 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v29)
      {
        goto LABEL_39;
      }

      *(v62 + 16) = v39;
    }

    v6 = v24;
    v24[2] = v62;
    swift_endAccess();
    i = v61;
LABEL_22:
  }

  sub_232BA63D0();
  swift_beginAccess();
  v40 = v6[2];
  sub_232B34F88();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v46 = 0;
  if (!v43)
  {
    goto LABEL_26;
  }

  do
  {
    v47 = v46;
LABEL_30:
    v48 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v49 = *(*(v40 + 56) + 8 * (v48 | (v47 << 6)));
    swift_beginAccess();

    sub_232C50050((v49 + 32), &v63, v50);
    swift_endAccess();
  }

  while (v43);
  while (1)
  {
LABEL_26:
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v47 >= v45)
    {
      break;
    }

    v43 = *(v40 + 64 + 8 * v47);
    ++v46;
    if (v43)
    {
      v46 = v47;
      goto LABEL_30;
    }
  }

  sub_232CE9A20();
  v51 = sub_232CE9A00();
  v52 = sub_232CEA1A0();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = sub_232BC1F80();
    *v53 = 134217984;
    sub_232BA63D0();
    swift_beginAccess();
    *(v53 + 4) = v63;
    _os_log_impl(&dword_232B02000, v51, v52, "Found message date-time conflicts: %ld times", v53, 0xCu);
    sub_232BA6A84();
  }

  (*(v54 + 8))(v56, v55);
  sub_232B20A00();
}

id sub_232C4DDF4(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for DURawDocument(0)) init];
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232B13F5C(&v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text], v31);
  *v5 = v4;
  *(v5 + 1) = v3;

  v6 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_sender);
  if (v6[2])
  {
    v8 = v6[4];
    v7 = v6[5];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator];
  sub_232B13F5C(&v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator], v30);
  *v9 = v8;
  *(v9 + 1) = v7;

  v10 = [objc_allocWithZone(type metadata accessor for DUDocumentMessageData()) init];
  v11 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderAddresses);
  if (v11[2])
  {
    v13 = v11[4];
    v12 = v11[5];
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle];
  sub_232B13F5C(&v10[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle], v29);
  *v14 = v13;
  *(v14 + 1) = v12;

  v15 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiver);
  v16 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames;
  sub_232B13F5C(&v10[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames], v28);
  *&v10[v16] = v15;

  v17 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverAddresses);
  v18 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles;
  sub_232B13F5C(&v10[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles], v27);
  *&v10[v18] = v17;

  v19 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  sub_232B13F5C(&v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData], &v26);
  v20 = *&v2[v19];
  *&v2[v19] = v10;
  v21 = v10;

  v22 = objc_allocWithZone(type metadata accessor for DUDocument());
  v23 = sub_232B26CE8();
  v24 = DUDocument.init(rawDocument:maxLength:)(v23, 5120);

  return v24;
}

uint64_t sub_232C4E020(double a1)
{
  sub_232C529D4();
  v117[1] = *MEMORY[0x277D85DE8];
  v3 = sub_232CE9A30();
  sub_232B48F0C();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_232C528C4();
  v106 = sub_232BA4DEC(0, &qword_27DDC7908, 0x277CF1680);
  v116 = sub_232CE9C60();
  v7 = [objc_opt_self() service];
  v8 = [objc_allocWithZone(MEMORY[0x277D26860]) init];
  sub_232B124A8(&qword_27DDC6920, &qword_232CF6520);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_232CF64E0;
  *(v9 + 32) = v8;
  sub_232BA4DEC(0, &qword_27DDC81B8, 0x277D26878);
  v10 = v8;
  v11 = sub_232CE9FD0();

  sub_232BAE188();
  v12 = sub_232CE9D20();
  v117[0] = 0;
  v102 = v7;
  v13 = [v7 performRequests:v11 onAssetWithSyndicationIdentifier:v12 error:v117];

  if (!v13)
  {
    v86 = v117[0];
    v87 = v10;

    v88 = sub_232CE8B30();
    swift_willThrow();
    sub_232CE9A20();
    v89 = v88;
    v90 = sub_232CE9A00();
    v91 = sub_232CEA1C0();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = sub_232BC1F80();
      v93 = swift_slowAlloc();
      *v92 = 138412290;
      v94 = v88;
      v95 = _swift_stdlib_bridgeErrorToNSError();
      *(v92 + 4) = v95;
      *v93 = v95;
      _os_log_impl(&dword_232B02000, v90, v91, "Error while calling MAD: %@", v92, 0xCu);
      sub_232B267AC(v93, &qword_27DDC6FD0, &unk_232CFA240);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    (*(v5 + 8))(v1, v3);

    v16 = MEMORY[0x277D84F90];
    goto LABEL_55;
  }

  v14 = v117[0];
  v15 = sub_232C526F8(v10);
  if (!v15)
  {

    v16 = MEMORY[0x277D84F90];
    v96 = &v119;
LABEL_54:
    v87 = *(v96 - 32);
LABEL_55:

    return v16;
  }

  v16 = v15;
  v99 = v10;
  v105 = sub_232B26B10();
  if (!v105)
  {
LABEL_53:

    sub_232C4B7F8(v97);
    sub_232B26D00();

    v96 = &v118;
    goto LABEL_54;
  }

  v17 = 0;
  v104 = v16 & 0xC000000000000001;
  v101 = v16 & 0xFFFFFFFFFFFFFF8;
  v100 = (v16 + 32);
  v18 = &off_2789A8000;
  v19 = &off_2789A8000;
  v20 = v116;
  v103 = v16;
  while (1)
  {
    if (v104)
    {
      v21 = sub_232B5A008();
      v22 = MEMORY[0x2383922C0](v21);
    }

    else
    {
      if (v17 >= *(v101 + 16))
      {
        goto LABEL_61;
      }

      v22 = *&v100[8 * v17];
    }

    v108 = v22;
    v23 = __OFADD__(v17, 1);
    v24 = v17 + 1;
    if (v23)
    {
      goto LABEL_60;
    }

    v107 = v24;
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (!v25)
    {

      goto LABEL_46;
    }

    v26 = [v25 resultItems];
    v27 = sub_232B4D640();
    sub_232BA4DEC(v27, &qword_27DDC81C0, 0x277D26870);
    v28 = sub_232CE9FE0();

    v29 = v28 >> 62 ? sub_232CEA610() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = v108;
    if (v29)
    {
      break;
    }

LABEL_44:

    v16 = v103;
LABEL_46:
    v17 = v107;
    if (v107 == v105)
    {
      goto LABEL_53;
    }
  }

  v31 = 0;
  v32 = v28 & 0xC000000000000001;
  v109 = v28 & 0xFFFFFFFFFFFFFF8;
  v110 = v28;
  v111 = v28 & 0xC000000000000001;
  v112 = v29;
  while (1)
  {
    if (v32)
    {
      v33 = MEMORY[0x2383922C0](v31, v28);
    }

    else
    {
      if (v31 >= *(v109 + 16))
      {
        goto LABEL_57;
      }

      v33 = *(v28 + 8 * v31 + 32);
    }

    v34 = v33;
    v35 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
    }

    [v33 v18[334]];
    if (v36 > a1)
    {
      break;
    }

LABEL_42:
    ++v31;
    if (v35 == v29)
    {
      v30 = v108;
      goto LABEL_44;
    }
  }

  v37 = [v34 v19[349]];
  v38 = sub_232CE9D50();
  v40 = v39;

  if (v20[2])
  {
    v41 = sub_232B1F160(v38, v40);
    v43 = v42;

    if (v43)
    {
      v44 = *(v20[7] + 8 * v41);
      [v44 confidenceScore];
      v46 = v45;
      [v34 v18[334]];
      v48 = v47;

      if (v48 >= v46)
      {

LABEL_41:
        v32 = v111;
        v29 = v112;
        goto LABEL_42;
      }
    }
  }

  else
  {
  }

  v113 = v31 + 1;
  v116 = v20;
  v49 = [v34 v19[349]];
  v114 = sub_232CE9D50();
  v115 = v50;

  v51 = [v34 personName];
  v52 = sub_232CE9D50();
  v54 = v53;

  v55 = [v34 v19[349]];
  v56 = sub_232CE9D50();
  v58 = v57;

  [v34 v18[334]];
  v59 = sub_232CEA0C0();
  v60 = [v34 mdID];
  v61 = sub_232CE9D50();
  v63 = v62;

  sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
  v64 = sub_232CEA300();
  v65 = objc_allocWithZone(MEMORY[0x277CF1680]);
  v66 = sub_232BEC84C(2, v52, v54, v56, v58, v59, v61, v63, 3u, v64);
  if (!v66)
  {
    v20 = v116;
    sub_232B1F160(v114, v115);
    v28 = v110;
    v35 = v113;
    if (v82)
    {
      sub_232B26D70();
      swift_isUniquelyReferenced_nonNull_native();
      v117[0] = v116;
      sub_232B124A8(&qword_27DDC6780, &qword_232CF5DE0);
      sub_232CEA5C0();
      v20 = v117[0];

      v83 = *(v20[7] + 8 * v56);
      sub_232CEA5E0();
    }

    else
    {
    }

    v18 = &off_2789A8000;
    v19 = &off_2789A8000;
    goto LABEL_41;
  }

  v67 = v66;
  swift_isUniquelyReferenced_nonNull_native();
  v117[0] = v116;
  v68 = sub_232BC1EB4();
  sub_232B1F160(v68, v69);
  sub_232C529AC();
  if (v23)
  {
    goto LABEL_58;
  }

  v72 = v70;
  v73 = v71;
  v116 = v67;
  sub_232B124A8(&qword_27DDC6780, &qword_232CF5DE0);
  if ((sub_232CEA5C0() & 1) == 0)
  {
    v74 = v114;
    v75 = v115;
    v18 = &off_2789A8000;
    v19 = &off_2789A8000;
    v35 = v113;
    if (v73)
    {
      goto LABEL_37;
    }

LABEL_32:
    v20 = v117[0];
    sub_232C529C0(v117[0] + 8 * (v72 >> 6));
    v79 = (v78 + 16 * v72);
    *v79 = v74;
    v79[1] = v75;
    *(v20[7] + 8 * v72) = v116;

    v80 = v20[2];
    v23 = __OFADD__(v80, 1);
    v81 = v80 + 1;
    if (v23)
    {
      goto LABEL_59;
    }

    v20[2] = v81;
LABEL_38:
    v28 = v110;
    goto LABEL_41;
  }

  v74 = v114;
  v75 = v115;
  v76 = sub_232B1F160(v114, v115);
  v18 = &off_2789A8000;
  v19 = &off_2789A8000;
  v35 = v113;
  if ((v73 & 1) == (v77 & 1))
  {
    v72 = v76;
    if ((v73 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_37:

    v20 = v117[0];
    v84 = *(v117[0] + 7);
    v85 = *(v84 + 8 * v72);
    *(v84 + 8 * v72) = v116;

    goto LABEL_38;
  }

  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

void sub_232C4E984()
{
  sub_232B35110();
  sub_232C529D4();
  v1 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v27 = *(v0 + 56);
    v28 = MEMORY[0x277D84F90];
    v26 = v4;
    v24 = 0x29656D7C6928625CLL;
    v25 = 0xEA0000000000625CLL;
    sub_232CE8E10();
    sub_232C529F4();
    sub_232B48080();

    sub_232BA63D0();
    sub_232CEA3D0();
    v9 = v8;
    sub_232B267AC(v3, &qword_27DDC7398, &unk_232CF9070);

    v10 = v7;
    if ((v9 & 1) == 0)
    {
      v11 = sub_232BAE188();
      sub_232C506C4(v11, v12, 1);
      MEMORY[0x238391D50]();
      v13 = *(v28 + 24);
      if (*(v28 + 16) >= v13 >> 1)
      {
LABEL_21:
        sub_232BC1BBC(v13);
        sub_232CEA000();
      }

      sub_232CEA020();
      v10 = v28;
    }

    v14 = *(v0 + 56);
    v26 = *(v0 + 48);
    v27 = v14;
    v24 = 0x757C756F7928625CLL;
    v25 = 0xEB00000000625C29;
    sub_232C529F4();

    sub_232BA63D0();
    sub_232CEA3D0();
    v16 = v15;
    sub_232B267AC(v3, &qword_27DDC7398, &unk_232CF9070);

    if ((v16 & 1) == 0)
    {
      v17 = sub_232BAE188();
      sub_232C509E8(v17, v18, 1);
      MEMORY[0x238391D50]();
      v19 = *(v28 + 24);
      if (*(v28 + 16) >= v19 >> 1)
      {
        sub_232BC1BBC(v19);
        sub_232CEA000();
      }

      sub_232BAE188();
      sub_232CEA020();
      v10 = v28;
    }

    v0 = 0;
    v26 = v7;
    v3 = *(v10 + 16);
    while (v3 != v0)
    {
      v13 = *(v10 + 16);
      if (v0 >= v13)
      {
        __break(1u);
        goto LABEL_21;
      }

      v20 = *(v10 + 8 * v0++ + 32);
      if (v20)
      {
        v21 = v20;
        MEMORY[0x238391D50]();
        v22 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v22 >> 1)
        {
          sub_232BC1BBC(v22);
          sub_232CEA000();
        }

        sub_232B5A008();
        sub_232CEA020();
        v7 = v26;
      }
    }
  }

  sub_232B20A00();
}

uint64_t sub_232C4EC70()
{
  sub_232C529D4();
  v0 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  sub_232C506C4(v1, v2, 0);
  MEMORY[0x238391D50]();
  v3 = *(v14 + 24);
  if (*(v14 + 16) >= v3 >> 1)
  {
LABEL_13:
    sub_232BC1BBC(v3);
    sub_232CEA000();
  }

  sub_232BA5C94();
  sub_232CEA020();
  v4 = sub_232BAE188();
  sub_232C509E8(v4, v5, 0);
  MEMORY[0x238391D50]();
  v6 = *(v14 + 24);
  if (*(v14 + 16) >= v6 >> 1)
  {
    sub_232BC1BBC(v6);
    sub_232CEA000();
  }

  sub_232BAE188();
  sub_232CEA020();
  v7 = 0;
  v13 = v0;
  v8 = *(v14 + 16);
  while (v8 != v7)
  {
    v3 = *(v14 + 16);
    if (v7 >= v3)
    {
      __break(1u);
      goto LABEL_13;
    }

    v9 = *(v14 + 8 * v7++ + 32);
    if (v9)
    {
      v10 = v9;
      MEMORY[0x238391D50]();
      v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11 >> 1)
      {
        sub_232BC1BBC(v11);
        sub_232CEA000();
      }

      sub_232CEA020();
      v0 = v13;
    }
  }

  return v0;
}

id sub_232C4EDE0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = sub_232CE9A30();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_232C45710();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = sub_232C46100(v15, v16);
    v49 = v20;
    v22 = v21;
    v24 = v23;
    v25 = sub_232C4616C();
    v52 = v26;
    v53 = v25;
    v50 = v28;
    v51 = v27;
    if (v24)
    {

      v17 = v22;
      v18 = v24;
    }

    sub_232BA4DEC(0, &qword_27DDC8190, 0x277CF1688);
    swift_beginAccess();
    v29 = *(a5 + 40);

    v30 = sub_232B1E0D0(a1, a2, v29);
    v32 = v31;

    v33 = objc_allocWithZone(MEMORY[0x277CF1690]);
    v34 = sub_232C50D0C(v17, v18, v19, v49, 0, 0, v30, v32);
    v35 = sub_232C4F13C(v34, 0);
    v36 = objc_allocWithZone(MEMORY[0x277CF1690]);

    v37 = sub_232C50D0C(v51, v50, 0, 0, a3, a4, v53, v52);
    v38 = sub_232C4F13C(v37, 0);
    v39 = v35;
    v40 = v38;
    v41 = sub_232CEA0B0();
    v42 = objc_allocWithZone(MEMORY[0x277CF1660]);
    v43 = sub_232C50E24(v35, 1, v38, 0, 0, v41);
  }

  else
  {
    sub_232CE9A20();

    v44 = sub_232CE9A00();
    v45 = sub_232CEA1C0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v54[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_232BAD2D4(a1, a2, v54);
      _os_log_impl(&dword_232B02000, v44, v45, "PoemStreamUtilities: No name found for eid: %s while creating poem event", v46, 0xCu);
      sub_232B2040C(v47);
      MEMORY[0x238393870](v47, -1, -1);
      MEMORY[0x238393870](v46, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    return 0;
  }

  return v43;
}

id sub_232C4F13C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPerson:a1 topic:a2];

  return v4;
}

uint64_t sub_232C4F198(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

uint64_t sub_232C4F1F4(uint64_t a1)
{
  v2 = BiomeLibrary();
  v3 = [v2 TextUnderstanding];
  sub_232B26CE8();
  swift_unknownObjectRelease();
  v4 = [v1 DocumentUnderstanding];
  sub_232B26D00();
  swift_unknownObjectRelease();
  v5 = [v2 Poem];
  sub_232B26CE8();
  swift_unknownObjectRelease();
  sub_232BC1ECC();
  v6 = swift_allocObject();
  sub_232BA4DEC(0, &qword_27DDC81A8, 0x277CF1660);
  *(v6 + 16) = sub_232CE9C60();
  v7 = [v1 publisher];
  sub_232C528DC();
  sub_232C52920();
  v15 = v8;
  v16 = &unk_284813B78;
  v9 = _Block_copy(v14);
  v17 = sub_232C52828;
  v18 = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v15 = sub_232C528C0;
  v16 = &unk_284813BA0;
  v10 = _Block_copy(v14);

  v11 = [v7 sinkWithCompletion:v9 receiveInput:v10];

  _Block_release(v10);
  _Block_release(v9);

  sub_232BA63D0();
  swift_beginAccess();
  v12 = *(v6 + 16);

  return v12;
}

void sub_232C4F41C()
{
  sub_232B35110();
  sub_232B4D640();
  v1 = sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v2);
  sub_232C528C4();
  sub_232CE9A20();

  v3 = sub_232CE9A00();
  v4 = sub_232CEA1A0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_232BC1F80();
    v6 = swift_slowAlloc();
    v24[0] = v6;
    *v5 = 136315138;
    v7 = sub_232CEA0E0();
    v9 = sub_232BAD2D4(v7, v8, v24);

    *(v5 + 4) = v9;
    sub_232C5294C(&dword_232B02000, v10, v11, "PoemStreamUtilities: Pruning poem stream with %s");
    sub_232B2040C(v6);
    sub_232BA6A84();
    sub_232B26D28();
  }

  v12 = sub_232BC1E48();
  v13(v12);
  v14 = [BiomeLibrary() TextUnderstanding];
  sub_232B26D70();
  swift_unknownObjectRelease();
  v15 = [v1 DocumentUnderstanding];
  swift_unknownObjectRelease();
  v16 = [v15 Poem];
  swift_unknownObjectRelease();
  v17 = [v16 pruner];
  v18 = sub_232CE9D20();
  sub_232BC1ECC();
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_232C527F4;
  *(v20 + 24) = v19;
  v24[4] = sub_232C527FC;
  v24[5] = v20;
  sub_232C52900();
  v24[1] = 1107296256;
  sub_232C52938();
  v24[2] = v21;
  v24[3] = &unk_284813B28;
  v22 = _Block_copy(v24);

  [v17 deleteWithPolicy:v18 eventsPassingTest:v22];

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_232B20A00();
  }
}

void sub_232C4F744(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v13 = v3;
    v4 = [v3 object];
    if (v4 && (v5 = v4, v6 = [v4 person], v5, v6) && (v7 = sub_232C52688(v6), v8))
    {
      v9 = v7;
      v10 = v8;
      swift_beginAccess();
      v11 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(a2 + 16);
      sub_232B201A8(v11, v9, v10, isUniquelyReferenced_nonNull_native);
      *(a2 + 16) = v14;

      swift_endAccess();
    }

    else
    {
    }
  }
}

BOOL sub_232C4F878(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 eventBody];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 object];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 person];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_232C52688(v7);
  if (!v9)
  {
    return 0;
  }

  v10 = sub_232BA7F18(v8, v9, a3);

  return v10;
}

uint64_t sub_232C4F934(uint64_t a1)
{
  v2 = BiomeLibrary();
  v3 = [v2 TextUnderstanding];
  sub_232B26CE8();
  swift_unknownObjectRelease();
  v4 = [v1 DocumentUnderstanding];
  sub_232B26D00();
  swift_unknownObjectRelease();
  v5 = [v2 PoemBuffer];
  swift_unknownObjectRelease();
  sub_232BC1ECC();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v7 = [v5 publisher];
  sub_232C528DC();
  sub_232C52920();
  v15 = v8;
  v16 = &unk_284813C18;
  v9 = _Block_copy(v14);
  v17 = sub_232C52888;
  v18 = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v15 = sub_232C528C0;
  v16 = &unk_284813C40;
  v10 = _Block_copy(v14);

  v11 = [v7 sinkWithCompletion:v9 receiveInput:v10];

  _Block_release(v10);
  _Block_release(v9);

  sub_232BA63D0();
  swift_beginAccess();
  v12 = *(v6 + 16);

  return v12;
}

void sub_232C4FB3C(uint64_t a1, const char *a2, ...)
{
  sub_232B35110();
  sub_232C529D4();
  v5 = sub_232CE9A30();
  sub_232B48F0C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_232C528C4();
  v9 = [v4 error];
  if (v9)
  {
    v10 = v9;
    sub_232CE9A20();
    v11 = v10;
    v12 = sub_232CE9A00();
    v13 = sub_232CEA1C0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = sub_232BC1F80();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v11;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_232B02000, v12, v13, v3, v14, 0xCu);
      sub_232B267AC(v15, &qword_27DDC6FD0, &unk_232CFA240);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    else
    {
      v16 = v12;
      v12 = v11;
    }

    (*(v7 + 8))(v2, v5);
  }

  sub_232B20A00();
}

id sub_232C4FCCC(void *a1, uint64_t a2)
{
  result = [a1 eventBody];
  if (result)
  {
    v3 = swift_beginAccess();
    MEMORY[0x238391D50](v3);
    sub_232BAE05C();
    sub_232CEA020();
    return swift_endAccess();
  }

  return result;
}

void sub_232C4FD64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_232C4FDCC(uint64_t *a1, uint64_t *a2, void *a3)
{
  v24 = a3;
  v5 = sub_232CE8D10();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = *a1;
  v13 = *a2;
  v14 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
  swift_beginAccess();
  v15 = *(v6 + 16);
  v23 = v14;
  v15(v11, v12 + v14, v5);
  v16 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
  swift_beginAccess();
  v25 = v13;
  v22 = v16;
  v15(v8, v13 + v16, v5);
  sub_232C52830();
  LOBYTE(v16) = sub_232CE9CF0();
  v17 = *(v6 + 8);
  v17(v8, v5);
  result = (v17)(v11, v5);
  if ((v16 & 1) == 0)
  {
    v15(v11, v12 + v23, v5);
    v15(v8, v25 + v22, v5);
    v21 = sub_232CE8CE0();
    v17(v8, v5);
    v17(v11, v5);
    return v21 & 1;
  }

  v19 = v25;
  if (!__OFADD__(*v24, 1))
  {
    ++*v24;
    if (*(v19 + 32) == *(v12 + 32) && *(v19 + 40) == *(v12 + 40))
    {
      v21 = 0;
    }

    else
    {
      v21 = sub_232CEA750();
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

void sub_232C50050(uint64_t *a1, void *a2, __n128 a3)
{
  v5 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    v5 = sub_232C23A44();
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7[0] = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
  v7[1] = v6;
  sub_232C51064(v7, a2);
  *a1 = v5;
}

uint64_t sub_232C50564(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (a4 + 16);
  v7 = sub_232C31B34(a1, &selRef_name);
  if (v8)
  {
    v9 = v7;
    v10 = v8;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      goto LABEL_11;
    }

    v6 = (a5 + 16);
    result = swift_beginAccess();
    v13 = *(a5 + 16) + 1;
    if (!__OFADD__(*(a5 + 16), 1))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  result = swift_beginAccess();
  v13 = *v6 + 1;
  if (!__OFADD__(*v6, 1))
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  result = swift_beginAccess();
  v13 = *v6 + 1;
  if (!__OFADD__(*v6, 1))
  {
LABEL_12:
    *v6 = v13;
    return result;
  }

  __break(1u);
  return result;
}

void sub_232C50640(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_232C506C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_232CE9A30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_sender);
  if (v11[2] == 1 && (v12 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderAddresses), v12[2] == 1))
  {
    v14 = v11[4];
    v13 = v11[5];
    v16 = v12[4];
    v15 = v12[5];
    v17 = v14 == v16 && v13 == v15;
    if (v17 || (sub_232CEA750() & 1) != 0)
    {
      sub_232CE9A20();
      v18 = sub_232CE9A00();
      v19 = sub_232CEA1B0();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_232B02000, v18, v19, "Not adding unknown sender handle", v20, 2u);
        MEMORY[0x238393870](v20, -1, -1);
      }

      (*(v5 + 8))(v10, v4);
    }

    else
    {

      v25 = sub_232C455E0(v14);
      if (v26)
      {
        v27 = v25;
        v28 = v26;
        sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
        v29 = sub_232CEA300();
        v30 = sub_232CEA300();
        v31 = objc_allocWithZone(MEMORY[0x277CF1680]);
        return sub_232BEC84C(1, v14, v13, v27, v28, v29, v16, v15, 1u, v30);
      }
    }
  }

  else
  {
    sub_232CE9A20();
    v21 = sub_232CE9A00();
    v22 = sub_232CEA1B0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_232B02000, v21, v22, "Don't add implicit sender count if multiple senders", v23, 2u);
      MEMORY[0x238393870](v23, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return 0;
}

id sub_232C509E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_232CE9A30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiver);
  if (v11[2] == 1 && (v12 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverAddresses), v12[2] == 1))
  {
    v14 = v11[4];
    v13 = v11[5];
    v16 = v12[4];
    v15 = v12[5];
    v17 = v14 == v16 && v13 == v15;
    if (v17 || (sub_232CEA750() & 1) != 0)
    {
      sub_232CE9A20();
      v18 = sub_232CE9A00();
      v19 = sub_232CEA1B0();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_232B02000, v18, v19, "Not adding unknown receiver handle", v20, 2u);
        MEMORY[0x238393870](v20, -1, -1);
      }

      (*(v5 + 8))(v10, v4);
    }

    else
    {

      v25 = sub_232C455E0(v14);
      if (v26)
      {
        v27 = v25;
        v28 = v26;
        sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
        v29 = sub_232CEA300();
        v30 = sub_232CEA300();
        v31 = objc_allocWithZone(MEMORY[0x277CF1680]);
        return sub_232BEC84C(1, v14, v13, v27, v28, v29, v16, v15, 2u, v30);
      }
    }
  }

  else
  {
    sub_232CE9A20();
    v21 = sub_232CE9A00();
    v22 = sub_232CEA1B0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_232B02000, v21, v22, "Don't add implicit receiver count if multiple receivers", v23, 2u);
      MEMORY[0x238393870](v23, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return 0;
}

id sub_232C50D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v12 = sub_232CE9D20();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (a4)
    {
LABEL_3:
      v13 = sub_232CE9D20();

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v14 = 0;
      if (a8)
      {
        goto LABEL_5;
      }

LABEL_9:
      v15 = 0;
      goto LABEL_10;
    }
  }

  v13 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = sub_232CE9D20();

  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = sub_232CE9D20();

LABEL_10:
  v16 = [v8 initWithName:v12 contactHandle:v13 visualIdentifier:v14 mdIdentifier:v15];

  return v16;
}

id sub_232C50E24(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  if (a5)
  {
    v12 = sub_232CE9D20();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithSubject:a1 predicate:a2 object:a3 conversationId:v12 confidence:a6];

  return v13;
}

id sub_232C50ED0(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_232CE8B30();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_232C50FAC(uint64_t result, unint64_t *a2, void *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_232BA4DEC(0, a2, a3);
      result = sub_232CEA010();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_232C51008(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for PoemMessage(0);
      result = sub_232CEA010();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_232C51064(uint64_t *a1, void *a2)
{
  v5 = sub_232CE8D10();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = a1[1];
  v13 = sub_232CEA710();
  if (v13 < v12)
  {
    v14 = v13;
    v8 = v12 / 2;
    v5 = sub_232C51008(v12 / 2);
    v55[0] = v15;
    v55[1] = (v12 / 2);
    sub_232C5144C(v55, v54, a1, v14, a2);
    if (v2)
    {
      if (v12 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v12 < -1)
    {
      goto LABEL_30;
    }

    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v12 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  if (v12 < 2)
  {
    return;
  }

  v44 = v11;
  v45 = a2;
  v39 = v2;
  v40 = v12;
  v16 = *a1;
  v17 = (v6 + 16);
  v48 = (v6 + 8);
  v49 = v8;
  v18 = -1;
  v19 = 1;
  v50 = v16;
  v20 = v16;
  v47 = (v6 + 16);
  while (2)
  {
    v42 = v19;
    v43 = v18;
    v21 = *(v50 + 8 * v19);
    v41 = v20;
    v22 = v20;
    while (1)
    {
      v56 = v18;
      v23 = *v22;
      v24 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
      swift_beginAccess();
      v25 = *v17;
      v52 = v24;
      v25(v11, v21 + v24, v5);
      v26 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
      swift_beginAccess();
      v51 = v26;
      v27 = v23 + v26;
      v28 = v49;
      v53 = v25;
      v25(v49, v27, v5);
      sub_232C52830();

      LOBYTE(v24) = sub_232CE9CF0();
      v29 = *v48;
      (*v48)(v28, v5);
      v29(v11, v5);
      if (v24)
      {
        break;
      }

      v32 = v11;
      v33 = v53;
      v34 = v23;
      v46 = v23;
      v35 = v47;
      v53(v32, v21 + v52, v5);
      v33(v28, v34 + v51, v5);
      v11 = v44;
      v31 = sub_232CE8CE0();
      v29(v28, v5);
      v29(v11, v5);

      v17 = v35;
LABEL_17:
      v36 = v56;
      if (v31)
      {
        if (!v50)
        {
          goto LABEL_31;
        }

        v37 = *v22;
        v21 = v22[1];
        *v22 = v21;
        v22[1] = v37;
        --v22;
        v38 = __CFADD__(v36, 1);
        v18 = v36 + 1;
        if (!v38)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    v17 = v47;
    if (__OFADD__(*v45, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    ++*v45;
    if (*(v23 + 32) != *(v21 + 32) || *(v23 + 40) != *(v21 + 40))
    {
      v31 = sub_232CEA750();

      goto LABEL_17;
    }

LABEL_23:
    v19 = v42 + 1;
    v20 = v41 + 1;
    v18 = v43 - 1;
    if (v42 + 1 != v40)
    {
      continue;
    }

    break;
  }
}

void sub_232C5144C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, int64_t a5)
{
  v127 = a1;
  v8 = sub_232CE8D10();
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v133 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_113;
  }

  v126 = a4;
  v15 = 0;
  v145 = (v11 + 16);
  v138 = (v11 + 8);
  v16 = MEMORY[0x277D84F90];
  v136 = a5;
  v140 = v13;
  v141 = v10;
  v139 = &v125 - v12;
LABEL_3:
  v17 = (v15 + 1);
  v131 = v16;
  v128 = v15;
  if (v15 + 1 >= v14)
  {
    v21 = v15 + 1;
    goto LABEL_30;
  }

  v134 = v14;
  v18 = *v133;
  v148 = *(*v133 + 8 * v17);
  v147 = *(v18 + 8 * v15);

  v19 = v135;
  LODWORD(v130) = sub_232C4FDCC(&v148, &v147, a5);
  v135 = v19;
  if (v19)
  {

    return;
  }

  v132 = 8 * v15;
  v20 = (v18 + 8 * v15 + 16);
  v16 = v131;
  v21 = v134;
  while (1)
  {
    if (v17 + 1 >= v21)
    {
      goto LABEL_20;
    }

    v146 = v17;
    v23 = *(v20 - 1);
    v22 = *v20;
    v144 = v20;
    v24 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
    swift_beginAccess();
    v25 = *v145;
    v142 = v24;
    v26 = v22 + v24;
    v27 = v139;
    v28 = v141;
    (v25)(v139, v26, v141);
    v29 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
    swift_beginAccess();
    v137 = v29;
    v30 = v140;
    v143 = v25;
    (v25)(v140, v23 + v29, v28);
    sub_232C52830();

    LOBYTE(v25) = sub_232CE9CF0();
    v16 = v138;
    v31 = *v138;
    (*v138)(v30, v28);
    v31(v27, v28);
    if ((v25 & 1) == 0)
    {
      break;
    }

    v32 = v22;
    v33 = v23;
    a5 = v136;
    if (__OFADD__(*v136, 1))
    {
      goto LABEL_130;
    }

    ++*v136;
    if (*(v33 + 32) != *(v32 + 32) || *(v33 + 40) != *(v32 + 40))
    {
      v35 = sub_232CEA750();

      goto LABEL_15;
    }

    v16 = v131;
    v21 = v134;
    v37 = v146;
    if (v130)
    {
      v21 = v146 + 1;
      goto LABEL_23;
    }

LABEL_18:
    v20 = v144 + 8;
    v17 = (v37 + 1);
  }

  v36 = v143;
  v143(v27, v22 + v142, v28);
  v36(v30, v23 + v137, v28);
  v35 = sub_232CE8CE0();
  v31(v30, v28);
  v31(v27, v28);

  a5 = v136;
LABEL_15:
  v21 = v134;
  v37 = v146;
  v16 = v131;
  if (((v130 ^ v35) & 1) == 0)
  {
    goto LABEL_18;
  }

  v21 = v146 + 1;
LABEL_20:
  if (v130)
  {
LABEL_23:
    v38 = v128;
    if (v21 < v128)
    {
      goto LABEL_148;
    }

    if (v128 < v21)
    {
      v39 = 8 * v21 - 8;
      v40 = v21;
      do
      {
        if (v38 != --v40)
        {
          v41 = *v133;
          if (!*v133)
          {
            goto LABEL_155;
          }

          v42 = *(v41 + v132);
          *(v41 + v132) = *(v41 + v39);
          *(v41 + v39) = v42;
        }

        ++v38;
        v39 -= 8;
        v132 += 8;
      }

      while (v38 < v40);
    }
  }

LABEL_30:
  v43 = v133[1];
  if (v21 >= v43)
  {
    goto LABEL_40;
  }

  if (__OFSUB__(v21, v128))
  {
    goto LABEL_147;
  }

  if (v21 - v128 >= v126)
  {
LABEL_40:
    v46 = v21;
    goto LABEL_41;
  }

  if (__OFADD__(v128, v126))
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v16 = sub_232BC13B8(v16);
LABEL_115:
    v117 = (v16 + 16);
    v118 = *(v16 + 16);
    while (v118 >= 2)
    {
      if (!*v133)
      {
        goto LABEL_154;
      }

      v119 = a5;
      v120 = v16;
      v121 = (v16 + 16 * v118);
      v122 = *v121;
      v16 = &v117[2 * v118];
      a5 = *(v16 + 8);
      v123 = v135;
      sub_232C52034((*v133 + 8 * *v121), (*v133 + 8 * *v16), (*v133 + 8 * a5), v146, v119);
      v135 = v123;
      if (v123)
      {
        break;
      }

      if (a5 < v122)
      {
        goto LABEL_142;
      }

      if (v118 - 2 >= *v117)
      {
        goto LABEL_143;
      }

      *v121 = v122;
      v121[1] = a5;
      v124 = *v117 - v118;
      if (*v117 < v118)
      {
        goto LABEL_144;
      }

      v118 = *v117 - 1;
      sub_232BC13CC((v16 + 16), v124, v16);
      *v117 = v118;
      v16 = v120;
      a5 = v119;
    }

LABEL_123:

    return;
  }

  if (v128 + v126 >= v43)
  {
    v44 = v133[1];
  }

  else
  {
    v44 = v128 + v126;
  }

  if (v44 < v128)
  {
    goto LABEL_150;
  }

  v45 = v128;
  if (v21 == v44)
  {
    v46 = v21;
    goto LABEL_42;
  }

  v137 = *v133;
  v95 = v137 + 8 * v21 - 8;
  v96 = (v128 - v21);
  v97 = v145;
  v129 = v44;
LABEL_94:
  v134 = v21;
  v98 = v95;
  v99 = *(v137 + 8 * v21);
  v130 = v96;
  v132 = v95;
  while (1)
  {
    v146 = v96;
    v100 = *v98;
    v101 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
    swift_beginAccess();
    v102 = *v97;
    v143 = v101;
    v103 = (v99 + v101);
    v104 = v139;
    v105 = v141;
    v102(v139, v103, v141);
    v106 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
    swift_beginAccess();
    v142 = v106;
    a5 = v140;
    v144 = v102;
    v102(v140, (v100 + v106), v105);
    sub_232C52830();

    v16 = sub_232CE9CF0();
    v107 = *v138;
    (*v138)(a5, v105);
    v107(v104, v105);
    if (v16)
    {
      if (__OFADD__(*v136, 1))
      {
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
LABEL_137:
        __break(1u);
LABEL_138:
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
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      ++*v136;
      if (*(v100 + 32) == *(v99 + 32) && *(v100 + 40) == *(v99 + 40))
      {

LABEL_109:
        v97 = v145;
LABEL_110:
        v21 = v134 + 1;
        v95 = v132 + 8;
        v96 = (v130 - 1);
        v46 = v129;
        if (v134 + 1 == v129)
        {
          a5 = v136;
          v16 = v131;
LABEL_41:
          v45 = v128;
LABEL_42:
          if (v46 >= v45)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v129 = v46;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_232B36234(0, *(v16 + 16) + 1, 1, v16);
              v16 = v115;
            }

            v49 = *(v16 + 16);
            v48 = *(v16 + 24);
            v50 = v49 + 1;
            if (v49 >= v48 >> 1)
            {
              sub_232B36234(v48 > 1, v49 + 1, 1, v16);
              v16 = v116;
            }

            *(v16 + 16) = v50;
            v51 = v16 + 32;
            v52 = (v16 + 32 + 16 * v49);
            v53 = v129;
            *v52 = v128;
            v52[1] = v53;
            v146 = *v127;
            if (!v146)
            {
              goto LABEL_156;
            }

            if (v49)
            {
              while (2)
              {
                v54 = v50 - 1;
                v55 = (v51 + 16 * (v50 - 1));
                v56 = (v16 + 16 * v50);
                if (v50 >= 4)
                {
                  v61 = v51 + 16 * v50;
                  v62 = *(v61 - 64);
                  v63 = *(v61 - 56);
                  v67 = __OFSUB__(v63, v62);
                  v64 = v63 - v62;
                  if (v67)
                  {
                    goto LABEL_131;
                  }

                  v66 = *(v61 - 48);
                  v65 = *(v61 - 40);
                  v67 = __OFSUB__(v65, v66);
                  v59 = v65 - v66;
                  v60 = v67;
                  if (v67)
                  {
                    goto LABEL_132;
                  }

                  v68 = v56[1];
                  v69 = v68 - *v56;
                  if (__OFSUB__(v68, *v56))
                  {
                    goto LABEL_134;
                  }

                  v67 = __OFADD__(v59, v69);
                  v70 = v59 + v69;
                  if (v67)
                  {
                    goto LABEL_137;
                  }

                  if (v70 >= v64)
                  {
                    v84 = *v55;
                    v83 = v55[1];
                    v67 = __OFSUB__(v83, v84);
                    v85 = v83 - v84;
                    if (v67)
                    {
                      goto LABEL_145;
                    }

                    if (v59 < v85)
                    {
                      v54 = v50 - 2;
                    }
                  }

                  else
                  {
LABEL_62:
                    if (v60)
                    {
                      goto LABEL_133;
                    }

                    v72 = *v56;
                    v71 = v56[1];
                    v73 = __OFSUB__(v71, v72);
                    v74 = v71 - v72;
                    v75 = v73;
                    if (v73)
                    {
                      goto LABEL_136;
                    }

                    v76 = v55[1];
                    v77 = v76 - *v55;
                    if (__OFSUB__(v76, *v55))
                    {
                      goto LABEL_139;
                    }

                    if (__OFADD__(v74, v77))
                    {
                      goto LABEL_141;
                    }

                    if (v74 + v77 < v59)
                    {
                      goto LABEL_77;
                    }

                    if (v59 < v77)
                    {
                      v54 = v50 - 2;
                    }
                  }
                }

                else
                {
                  if (v50 == 3)
                  {
                    v57 = *(v16 + 32);
                    v58 = *(v16 + 40);
                    v67 = __OFSUB__(v58, v57);
                    v59 = v58 - v57;
                    v60 = v67;
                    goto LABEL_62;
                  }

                  if (v50 < 2)
                  {
                    goto LABEL_135;
                  }

                  v79 = *v56;
                  v78 = v56[1];
                  v67 = __OFSUB__(v78, v79);
                  v74 = v78 - v79;
                  v75 = v67;
LABEL_77:
                  if (v75)
                  {
                    goto LABEL_138;
                  }

                  v81 = *v55;
                  v80 = v55[1];
                  v67 = __OFSUB__(v80, v81);
                  v82 = v80 - v81;
                  if (v67)
                  {
                    goto LABEL_140;
                  }

                  if (v82 < v74)
                  {
                    break;
                  }
                }

                if (v54 - 1 >= v50)
                {
                  goto LABEL_126;
                }

                if (!*v133)
                {
                  goto LABEL_153;
                }

                v86 = v16;
                v87 = (v51 + 16 * (v54 - 1));
                v88 = *v87;
                v89 = v54;
                v16 = v51 + 16 * v54;
                v90 = *(v16 + 8);
                v91 = v135;
                sub_232C52034((*v133 + 8 * *v87), (*v133 + 8 * *v16), (*v133 + 8 * v90), v146, a5);
                v135 = v91;
                if (v91)
                {
                  goto LABEL_123;
                }

                if (v90 < v88)
                {
                  goto LABEL_127;
                }

                v92 = a5;
                a5 = *(v86 + 16);
                if (v89 > a5)
                {
                  goto LABEL_128;
                }

                *v87 = v88;
                v87[1] = v90;
                if (v89 >= a5)
                {
                  goto LABEL_129;
                }

                v93 = v89;
                v50 = a5 - 1;
                sub_232BC13CC((v16 + 16), a5 - 1 - v93, v16);
                v16 = v86;
                *(v86 + 16) = a5 - 1;
                v94 = a5 > 2;
                a5 = v92;
                if (!v94)
                {
                  break;
                }

                continue;
              }
            }

            v14 = v133[1];
            v15 = v129;
            if (v129 >= v14)
            {
LABEL_113:
              v146 = *v127;
              if (!v146)
              {
                goto LABEL_157;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_115;
              }

              goto LABEL_151;
            }

            goto LABEL_3;
          }

LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        goto LABEL_94;
      }

      v109 = sub_232CEA750();
    }

    else
    {
      v110 = v144;
      v111 = v143 + v99;
      v143 = v99;
      (v144)(v104, v111, v105);
      v110(a5, v100 + v142, v105);
      v109 = sub_232CE8CE0();
      v107(a5, v105);
      v107(v104, v105);
    }

    if ((v109 & 1) == 0)
    {
      goto LABEL_109;
    }

    v112 = v146;
    if (!v137)
    {
      break;
    }

    v113 = *v98;
    v99 = v98[1];
    *v98 = v99;
    v98[1] = v113;
    --v98;
    v114 = __CFADD__(v112, 1);
    v96 = (v112 + 1);
    v97 = v145;
    if (v114)
    {
      goto LABEL_110;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

uint64_t sub_232C52034(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v60 = a5;
  v9 = sub_232CE8D10();
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  v15 = a2 - a1;
  v17 = (v16 + 16);
  v64 = (v16 + 8);
  v65 = (v16 + 16);
  v18 = a3 - a2;
  v58 = &v56 - v13;
  v59 = v11;
  v71 = v19;
  if (v15 >= v18)
  {
    sub_232B37A20(a2, a3 - a2, a4);
    v20 = &a4[v18];
    v66 = a4;
    v69 = a1;
    while (1)
    {
      v34 = a2--;
      v35 = a3 - 1;
      v70 = a2;
      v57 = v34;
      while (1)
      {
        if (v20 <= a4 || v34 <= a1)
        {
LABEL_47:
          v54 = v20 - a4;
          if (v34 != a4 || v34 >= &a4[v54])
          {
            memmove(v34, a4, 8 * v54);
          }

          return 1;
        }

        v67 = v20;
        v68 = v35;
        v37 = *(v20 - 1);
        v63 = v20 - 1;
        v38 = *a2;
        v39 = v11;
        v40 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
        swift_beginAccess();
        v41 = *v17;
        v61 = v40;
        v42 = v37 + v40;
        v43 = v71;
        (v41)(v14, v42, v71);
        v44 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
        swift_beginAccess();
        v62 = v41;
        (v41)(v39, v38 + v44, v43);
        sub_232C52830();

        v45 = sub_232CE9CF0();
        v46 = v71;
        v47 = v45;
        v48 = *v64;
        (*v64)(v39, v71);
        result = (v48)(v14, v46);
        if ((v47 & 1) == 0)
        {
          break;
        }

        if (__OFADD__(*v60, 1))
        {
          goto LABEL_55;
        }

        ++*v60;
        if (*(v38 + 32) == *(v37 + 32) && *(v38 + 40) == *(v37 + 40))
        {

          v17 = v65;
          a4 = v66;
          a2 = v70;
          v14 = v58;
          v11 = v59;
        }

        else
        {
          v50 = sub_232CEA750();

          v17 = v65;
          a4 = v66;
          a2 = v70;
          v14 = v58;
          v11 = v59;
          if (v50)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        v53 = v68;
        v34 = v57;
        v20 = v63;
        if (v67 != v68 + 1)
        {
          *v68 = *v63;
        }

        v35 = v53 - 1;
        a1 = v69;
      }

      v51 = v62;
      v52 = v37 + v61;
      v61 = v44;
      v17 = v65;
      v62(v14, v52, v46);
      v51(v39, v38 + v61, v46);
      LOBYTE(v51) = sub_232CE8CE0();
      v48(v39, v46);
      v48(v14, v46);

      a4 = v66;
      a2 = v70;
      v11 = v39;
      if ((v51 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_44:
      a3 = v68;
      a1 = v69;
      v20 = v67;
      if (v68 + 1 != v57)
      {
        *v68 = *a2;
      }
    }
  }

  sub_232B37A20(a1, a2 - a1, a4);
  v20 = &a4[v15];
  v21 = v71;
  v67 = v20;
  v68 = a3;
  while (1)
  {
    if (a4 >= v20 || a2 >= a3)
    {
      v34 = a1;
      goto LABEL_47;
    }

    v69 = a1;
    v70 = a2;
    v23 = *a2;
    v66 = a4;
    v24 = *a4;
    v25 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
    swift_beginAccess();
    v26 = *v17;
    v63 = v25;
    (v26)(v14, v23 + v25, v21);
    v27 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
    swift_beginAccess();
    v62 = v27;
    (v26)(v11, v24 + v27, v21);
    sub_232C52830();

    LOBYTE(v25) = sub_232CE9CF0();
    v28 = *v64;
    (*v64)(v11, v21);
    result = (v28)(v14, v21);
    if ((v25 & 1) == 0)
    {
      (v26)(v14, v63 + v23, v21);
      (v26)(v11, v62 + v24, v21);
      v31 = sub_232CE8CE0();
      v28(v11, v21);
      v28(v14, v21);

      v32 = v69;
      a2 = v70;
      goto LABEL_15;
    }

    if (__OFADD__(*v60, 1))
    {
      break;
    }

    ++*v60;
    v30 = *(v24 + 32) == *(v23 + 32) && *(v24 + 40) == *(v23 + 40);
    if (v30)
    {

      v32 = v69;
      a2 = v70;
      v14 = v58;
      v11 = v59;
      v21 = v71;
      a4 = v66;
LABEL_20:
      v33 = a4;
      v30 = v32 == a4++;
      if (v30)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v32 = *v33;
      goto LABEL_22;
    }

    v31 = sub_232CEA750();

    v32 = v69;
    a2 = v70;
    v14 = v58;
    v11 = v59;
    v21 = v71;
LABEL_15:
    a4 = v66;
    if ((v31 & 1) == 0)
    {
      goto LABEL_20;
    }

    v33 = a2;
    v30 = v32 == a2++;
    if (!v30)
    {
      goto LABEL_21;
    }

LABEL_22:
    a1 = v32 + 1;
    v20 = v67;
    a3 = v68;
    v17 = v65;
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_232C52688(void *a1)
{
  v2 = [a1 visualIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_232CE9D50();

  return v3;
}

uint64_t sub_232C526F8(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_232BA4DEC(0, &qword_27DDC81C8, 0x277D26880);
  v3 = sub_232CE9FE0();

  return v3;
}

unint64_t sub_232C52770()
{
  result = qword_27DDC8188;
  if (!qword_27DDC8188)
  {
    sub_232B27EEC(&qword_27DDC8180, &qword_232CFE550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8188);
  }

  return result;
}

uint64_t sub_232C527DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_232C52830()
{
  result = qword_27DDC6AA8;
  if (!qword_27DDC6AA8)
  {
    sub_232CE8D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC6AA8);
  }

  return result;
}

void sub_232C5294C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL sub_232C5296C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_232C52988()
{

  sub_232B3711C();
}

uint64_t sub_232C529F4()
{

  return sub_232B12504(v0, 1, 1, v1);
}

uint64_t sub_232C52A14(uint64_t a1, unint64_t a2)
{
  v3 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = sub_232CE8D10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    result = sub_232CEA610();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_232B585F0(v8);
  if (sub_232B12480(v8, 1, v9) == 1)
  {
    return sub_232BB0C04(v8);
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = sub_232B58674();
  if (v14)
  {
    v35 = v14;
    sub_232B13F74(v14 + OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName, v37);
    v15 = [BiomeLibrary() TextUnderstanding];
    swift_unknownObjectRelease();
    v16 = [v15 DocumentUnderstanding];
    swift_unknownObjectRelease();
    v17 = [v16 PoemBuffer];
    swift_unknownObjectRelease();
    v34 = v17;
    v33 = [v17 source];
    (*(v10 + 16))(v5, v12, v9);
    sub_232B12504(v5, 0, 1, v9);
    v18 = sub_232B58674();
    if (v18)
    {
      v19 = v18;
      v20 = &v18[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier];
      sub_232B13F74(&v18[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier], v36);
      v21 = *v20;
      v31 = v20[1];
      v32 = v21;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v22 = sub_232B582D0();
    v30 = v23;
    v24 = sub_232CEA040();
    v25 = sub_232B5821C();
    v27 = v26;
    objc_allocWithZone(MEMORY[0x277CF1678]);

    v28 = sub_232C532BC(v5, v32, v31, v22, v30, v24, a2, MEMORY[0x277D84F90], v25, v27, 0, 0);
    v29 = v33;
    [v33 sendEvent_];
  }

  return (*(v10 + 8))(v12, v9);
}

id sub_232C52DE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding17PoemUpdateHandler_client);
  v2 = type metadata accessor for DURequestContentType();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 512;
  v8.receiver = v3;
  v8.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = objc_allocWithZone(type metadata accessor for DURequest());
  return DURequest.init(client:contentType:strategies:)(v4, v5, 0);
}

uint64_t sub_232C52E7C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_232C52E9C, 0, 0);
}

uint64_t sub_232C52E9C()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document, (v0 + 2));
  v3 = *(v1 + v2);
  v0[10] = v3;
  if (v3 && (v4 = sub_232B58674()) != 0)
  {
    v5 = v4;
    v6 = v3;

    v0[11] = sub_232C52DE0();
    v7 = v6;
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_232C52FC8;

    return sub_232B22E24();
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_232C52FC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_232C531AC;
  }

  else
  {
    v5 = sub_232C530F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_232C530F8()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_poem;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_poem, v0 + 40);
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 80);

    sub_232C52A14(v4, v3);
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 88);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_232C531AC()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

id sub_232C53254()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PoemUpdateHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232C532BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = sub_232CE8D10();
  v17 = 0;
  if (sub_232B12480(a1, 1, v16) != 1)
  {
    v17 = sub_232CE8CD0();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  if (a3)
  {
    v18 = sub_232CE9D20();
  }

  else
  {
    v18 = 0;
  }

  if (a5)
  {
    v19 = sub_232CE9D20();
  }

  else
  {
    v19 = 0;
  }

  sub_232BA4DEC(0, &qword_27DDC7908, 0x277CF1680);
  v20 = sub_232CE9FD0();

  sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
  v21 = sub_232CE9FD0();

  if (!a10)
  {
    v22 = 0;
    if (a12)
    {
      goto LABEL_11;
    }

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v22 = sub_232CE9D20();

  if (!a12)
  {
    goto LABEL_13;
  }

LABEL_11:
  v23 = sub_232CE9D20();

LABEL_14:
  v24 = [v26 initWithMessageTimestamp:v17 conversationId:v18 spotlightId:v19 photoAttachment:a6 extractions:v20 continuousFeatures:v21 rawMessage:v22 senderId:v23];

  return v24;
}

uint64_t type metadata accessor for DocumentUnderstanding_PosTaggingResult(uint64_t a1)
{
  result = qword_27DDC81D8;
  if (!qword_27DDC81D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C53548(uint64_t a1)
{
  sub_232CE9340();
  if (v1 <= 0x3F)
  {
    sub_232B21E3C(319, &qword_2814DFA10, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_232B21E3C(319, &qword_27DDC64D0, MEMORY[0x277D84A28]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

int *sub_232C53604@<X0>(uint64_t a2@<X8>)
{
  sub_232CE9330();
  result = type metadata accessor for DocumentUnderstanding_PosTaggingResult(0);
  v4 = (a2 + result[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + result[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + result[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + result[8];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_232C5366C()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5158);
  sub_232B135C4(v0, qword_27DDD5158);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF4C30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tag";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "start";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "len";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C538AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = sub_232B13EE0();
        sub_232C5395C(v6, v7, v8, v9);
        break;
      case 2:
        v18 = sub_232B13EE0();
        sub_232C539C0(v18, v19, v20, v21);
        break;
      case 3:
        v10 = sub_232B13EE0();
        sub_232C53A24(v10, v11, v12, v13);
        break;
      case 4:
        v14 = sub_232B13EE0();
        sub_232C53A88(v14, v15, v16, v17);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C53AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_232B13EF4();
  result = sub_232C53B5C(v4, v5, v6, v7);
  if (!v3)
  {
    v9 = sub_232B13EF4();
    sub_232C53BD4(v9, v10, v11, v12);
    v13 = sub_232B13EF4();
    sub_232C53C4C(v13, v14, v15, v16);
    v17 = sub_232B13EF4();
    sub_232C53CC4(v17, v18, v19, v20);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C53B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_PosTaggingResult(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C53BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_PosTaggingResult(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C53C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_PosTaggingResult(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_232CE9590();
  }

  return result;
}

uint64_t sub_232C53CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_PosTaggingResult(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_232CE9590();
  }

  return result;
}

uint64_t sub_232C53D3C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DocumentUnderstanding_PosTaggingResult(0);
  sub_232B2DF3C();
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v6 = *v4 == *v5 && v2 == v3;
    if (!v6 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  sub_232B2DF3C();
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v11 = *v9 == *v10 && v7 == v8;
    if (!v11 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  sub_232C542E4();
  if ((v13 & 1) == 0)
  {
    sub_232C542D0();
    if ((v14 & 1) == 0)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

LABEL_23:
  sub_232C542E4();
  if (v16)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    sub_232C542D0();
    if (v18)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232C54288(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232C53E7C()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_PosTaggingResult(0);
  sub_232C54288(&qword_27DDC81F8, type metadata accessor for DocumentUnderstanding_PosTaggingResult, &unk_232CFE5D0);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C53F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C54288(&qword_27DDC8208, type metadata accessor for DocumentUnderstanding_PosTaggingResult, &unk_232CFE660);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C53FD0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6408 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5158);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C54078(uint64_t a1)
{
  v2 = sub_232C54288(&qword_27DDC81F0, type metadata accessor for DocumentUnderstanding_PosTaggingResult, &unk_232CFE698);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C540E8(uint64_t a1, uint64_t a2)
{
  sub_232C54288(&qword_27DDC81F0, type metadata accessor for DocumentUnderstanding_PosTaggingResult, &unk_232CFE698);

  return sub_232CE9500();
}

uint64_t sub_232C54288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *PosTaggingResult.__allocating_init(tag:text:start:len:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = [objc_allocWithZone(v6) init];
  v14 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = v13;

  v16 = &v15[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text];
  *v16 = a3;
  *(v16 + 1) = a4;

  *&v15[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_start] = a5;
  *&v15[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_len] = a6;

  return v15;
}

char *sub_232C543B4(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_PosTaggingResult(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(type metadata accessor for PosTaggingResult()) init];
  sub_232C54928(a1, v4);
  v6 = &v4[v2[5]];
  v7 = *(v6 + 1);
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = &v5[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag];
  *v10 = v8;
  *(v10 + 1) = v9;

  v11 = &v4[v2[6]];
  v12 = *(v11 + 1);
  if (v12)
  {
    v13 = *v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = &v5[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text];
  *v15 = v13;
  *(v15 + 1) = v14;

  v16 = &v4[v2[7]];
  if (v16[8])
  {
    v17 = 0;
  }

  else
  {
    v17 = *v16;
  }

  *&v5[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_start] = v17;
  v18 = &v4[v2[8]];
  v19 = *v18;
  v20 = v18[8];
  sub_232C5498C(v4);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  *&v5[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_len] = v21;
  return v5;
}

char *sub_232C5452C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentUnderstanding_PosTaggingResult(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(v2) init];
  sub_232C54928(a1, v6);
  v8 = &v6[v4[5]];
  v9 = *(v8 + 1);
  if (v9)
  {
    v10 = *v8;
    v11 = v9;
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag];
  *v12 = v10;
  *(v12 + 1) = v11;

  v13 = &v6[v4[6]];
  v14 = *(v13 + 1);
  if (v14)
  {
    v15 = *v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = &v7[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text];
  *v17 = v15;
  *(v17 + 1) = v16;

  v18 = &v6[v4[7]];
  if (v18[8])
  {
    v19 = 0;
  }

  else
  {
    v19 = *v18;
  }

  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_start] = v19;
  v20 = &v6[v4[8]];
  v21 = *v20;
  v22 = v20[8];
  sub_232C5498C(v6);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  *&v7[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_len] = v23;
  return v7;
}

char *PosTaggingResult.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC8230, &qword_232CFE710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for DocumentUnderstanding_PosTaggingResult(0);
  MEMORY[0x28223BE20](v7);
  sub_232B521C8();
  v8 = [objc_allocWithZone(v2) init];
  if (swift_dynamicCast())
  {
    sub_232B12504(v6, 0, 1, v7);
    sub_232C54928(v6, v3);
    v9 = (v3 + v7[5]);
    v10 = v9[1];
    if (v10)
    {
      v11 = *v9;
      v12 = v10;
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    v13 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag];
    *v13 = v11;
    *(v13 + 1) = v12;

    v14 = (v3 + v7[6]);
    v15 = v14[1];
    if (v15)
    {
      v16 = *v14;
      v17 = v15;
    }

    else
    {
      v16 = 0;
      v17 = 0xE000000000000000;
    }

    v18 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text];
    *v18 = v16;
    *(v18 + 1) = v17;

    v19 = v3 + v7[7];
    if (*(v19 + 8))
    {
      v20 = 0;
    }

    else
    {
      v20 = *v19;
    }

    *&v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_start] = v20;
    v21 = v3 + v7[8];
    v22 = *v21;
    v23 = *(v21 + 8);
    sub_232C5498C(v3);
    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = v22;
    }

    *&v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_len] = v24;
  }

  else
  {

    sub_232B12504(v6, 1, 1, v7);
    sub_232C548C0(v6);
    return 0;
  }

  return v8;
}

uint64_t sub_232C548C0(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC8230, &qword_232CFE710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232C54928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_PosTaggingResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232C5498C(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_PosTaggingResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_232C549E8@<D0>(uint64_t a2@<X8>)
{
  sub_232CE9330();
  v4 = type metadata accessor for DocumentUnderstanding_PosTaggingResult(0);
  v5 = (a2 + v4[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v4[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + v4[8];
  v9 = *(v2 + OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag + 8);
  *v5 = *(v2 + OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag);
  v5[1] = v9;
  v10 = *(v2 + OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text + 8);
  *v6 = *(v2 + OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text);
  v6[1] = v10;
  *v7 = *(v2 + OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_start);
  *(v7 + 8) = 0;
  *v8 = *(v2 + OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_len);
  *(v8 + 8) = 0;

  return result;
}

char *sub_232C54AB0@<X0>(char **a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_PosTaggingResult(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_232B521C8();
  sub_232C549E8(v1);
  v4 = sub_232C543B4(v1);
  result = sub_232B124A8(&qword_27DDC8238, &qword_232CFE718);
  a1[3] = result;
  *a1 = v4;
  return result;
}

void sub_232C54BA0(void *a1)
{
  type metadata accessor for PosTaggingResult();
  sub_232C5511C();
  sub_232C550D4(v2, v3, v4, &protocol conformance descriptor for PosTaggingResult);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t PosTaggingResult.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232C5511C();
  sub_232C550D4(v2, v3, v4, &protocol conformance descriptor for PosTaggingResult);
  sub_232CE98B0();

  v5 = v9;
  if (!v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232B20A18(ObjectType);
    return 0;
  }

  v6 = swift_getObjectType();
  sub_232B20A18(v6);
  return v5;
}

id PosTaggingResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PosTaggingResult.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_start] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_len] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PosTaggingResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

id PosTaggingResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosTaggingResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232C54FD0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232C5452C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232C550D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_232C55134@<X0>(uint64_t a2@<X8>)
{
  sub_232CE9330();
  v3 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0) + 20);
  if (qword_27DDC6418 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27DDC8248;
}

uint64_t sub_232C551B0()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5170);
  sub_232B135C4(v0, qword_27DDD5170);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF7E80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "topics";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "structuredEntities";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "languageTags";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "userInterfaceUnderstandingResults";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "documentCategories";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "foundInEventResult";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "foundInEventClassificationResult";
  *(v20 + 1) = 32;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 3;
  *v22 = "responseDebugInfo";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C554FC()
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_Response._StorageClass(0);
  swift_allocObject();
  result = sub_232C5553C();
  qword_27DDC8248 = result;
  return result;
}

uint64_t sub_232C5553C()
{
  v1 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__topics;
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  sub_232B12504(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__structuredEntities;
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
  sub_232B12504(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__languageTags;
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  sub_232B12504(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__userInterfaceUnderstandingResults;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
  sub_232B12504(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__documentCategories;
  v10 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  sub_232B12504(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__foundInEventResult;
  v12 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  sub_232B12504(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__foundInEventClassificationResult;
  v14 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  sub_232B12504(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__responseDebugInfo;
  v16 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B12504(v0 + v15, 1, 1, v16);
  return v0;
}

uint64_t sub_232C5567C(uint64_t a1)
{
  v3 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  sub_232B2D120(v3);
  sub_232B2D114();
  MEMORY[0x28223BE20](v4);
  sub_232B2D108();
  sub_232B5EFC8(v5);
  v6 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  sub_232B2D120(v6);
  sub_232B2D114();
  MEMORY[0x28223BE20](v7);
  sub_232B2D108();
  sub_232B5EFC8(v8);
  v9 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  sub_232B2D120(v9);
  sub_232B2D114();
  MEMORY[0x28223BE20](v10);
  sub_232B2D108();
  sub_232B5EFC8(v11);
  v12 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  sub_232B2D120(v12);
  sub_232B2D114();
  MEMORY[0x28223BE20](v13);
  sub_232B2D108();
  sub_232B5EFC8(v14);
  v15 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  sub_232B2D120(v15);
  sub_232B2D114();
  MEMORY[0x28223BE20](v16);
  sub_232B2D108();
  sub_232B5EFC8(v17);
  v18 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  sub_232B2D120(v18);
  sub_232B2D114();
  MEMORY[0x28223BE20](v19);
  sub_232B2D108();
  sub_232B5EFC8(v20);
  v21 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  sub_232B2D120(v21);
  sub_232B2D114();
  MEMORY[0x28223BE20](v22);
  v23 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  sub_232B2D120(v23);
  sub_232B2D114();
  MEMORY[0x28223BE20](v24);
  v25 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__topics;
  v26 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  sub_232C59DFC(v1 + v25, v27, v28, v26);
  v29 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__structuredEntities;
  v30 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
  sub_232C59DFC(v1 + v29, v31, v32, v30);
  v33 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__languageTags;
  v34 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  sub_232C59DFC(v1 + v33, v35, v36, v34);
  v37 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__userInterfaceUnderstandingResults;
  v38 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
  sub_232C59DFC(v1 + v37, v39, v40, v38);
  v41 = sub_232C59E14(&v62);
  v42 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(v41);
  sub_232C59DBC(v42);
  v43 = sub_232C59E14(&v63);
  v44 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(v43);
  sub_232C59DBC(v44);
  v45 = sub_232C59E14(&v65);
  v46 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(v45);
  sub_232C59DBC(v46);
  v47 = sub_232C59E14(&v66);
  v48 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(v47);
  sub_232C59DBC(v48);
  sub_232B13F74(a1 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__topics, v64);
  sub_232B2CF64();
  sub_232B207D4(v1 + v25, v61);
  sub_232B2D074();
  swift_endAccess();
  sub_232B13F74(a1 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__structuredEntities, v61);
  sub_232B2CF64();
  sub_232B207D4(v1 + v29, v60);
  sub_232B2D074();
  swift_endAccess();
  sub_232B13F74(a1 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__languageTags, v60);
  sub_232B2CF64();
  sub_232B207D4(v1 + v33, v59);
  sub_232B2D074();
  swift_endAccess();
  sub_232B13F74(a1 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__userInterfaceUnderstandingResults, v59);
  sub_232B2CF64();
  sub_232B207D4(v1 + v37, v58);
  sub_232B2D074();
  swift_endAccess();
  sub_232B13F74(a1 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__documentCategories, v58);
  sub_232C59E20();
  sub_232B2CF64();
  sub_232B207D4(v1 + v50, v57);
  sub_232C59DDC();
  swift_endAccess();
  sub_232B13F74(a1 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__foundInEventResult, v57);
  sub_232C59E20();
  sub_232B2CF64();
  sub_232B207D4(v1 + v51, v56);
  sub_232C59DDC();
  swift_endAccess();
  sub_232B13F74(a1 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__foundInEventClassificationResult, v56);
  sub_232C59E20();
  sub_232B2CF64();
  sub_232B207D4(v1 + v52, v55);
  sub_232C59DDC();
  swift_endAccess();
  sub_232B13F74(a1 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__responseDebugInfo, v55);
  sub_232C59E20();
  sub_232B2CF64();

  sub_232B207D4(v1 + v53, v54);
  sub_232B2D074();
  swift_endAccess();
  return v1;
}

uint64_t sub_232C55CCC()
{
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__topics, &qword_27DDC7A40, &unk_232CFE960);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__structuredEntities, &qword_27DDC7A38, &unk_232CFBAD0);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__languageTags, &qword_27DDC7828, &unk_232CFBAC0);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__userInterfaceUnderstandingResults, &qword_27DDC7A30, &unk_232CFE950);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__documentCategories, &qword_27DDC7008, &unk_232CFBAB0);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__foundInEventResult, &qword_27DDC7788, &qword_232CFA9A0);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__foundInEventClassificationResult, &qword_27DDC7588, &qword_232CFA250);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__responseDebugInfo, &qword_27DDC67C8, &unk_232CF5E70);
  return v0;
}

uint64_t sub_232C55DE4()
{
  v0 = sub_232C55CCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_232C55E60(uint64_t a1)
{
  sub_232C56170(319, &qword_27DDC82A0, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
  if (v1 <= 0x3F)
  {
    sub_232C56170(319, &qword_27DDC82A8, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
    if (v2 <= 0x3F)
    {
      sub_232C56170(319, &qword_27DDC82B0, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);
      if (v3 <= 0x3F)
      {
        sub_232C56170(319, &qword_27DDC82B8, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
        if (v4 <= 0x3F)
        {
          sub_232C56170(319, &qword_27DDC82C0, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
          if (v5 <= 0x3F)
          {
            sub_232C56170(319, &qword_27DDC82C8, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
            if (v6 <= 0x3F)
            {
              sub_232C56170(319, &qword_27DDC82D0, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);
              if (v7 <= 0x3F)
              {
                sub_232C56170(319, &qword_27DDC67E8, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_232C56170(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_232C5620C(uint64_t a1)
{
  result = sub_232CE9340();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DocumentUnderstanding_ClientInterface_Response._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_232C56290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_ClientInterface_Response._StorageClass(0);
    swift_allocObject();
    v10 = sub_232C5567C(v10);
    *(v4 + v8) = v10;
  }

  return sub_232C56338(v10, a1, a2, a3);
}

uint64_t sub_232C56338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232C56488(a2, a1, a3, a4);
        break;
      case 2:
        sub_232C56564(a2, a1, a3, a4);
        break;
      case 3:
        sub_232C56640(a2, a1, a3, a4);
        break;
      case 5:
        sub_232C5671C(a2, a1, a3, a4);
        break;
      case 6:
        sub_232C567F8(a2, a1, a3, a4);
        break;
      case 7:
        sub_232C568D4(a2, a1, a3, a4);
        break;
      case 8:
        sub_232C569B0(a2, a1, a3, a4);
        break;
      case 9:
        sub_232C56A8C(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C56488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  sub_232C59C30(&qword_27DDC7BF0, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse, &unk_232CFFA80);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C56564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
  sub_232C59C30(&qword_27DDC7B78, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse, &unk_232CFF430);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C56640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232C59C30(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C5671C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  sub_232C59C30(&qword_27DDC7840, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse, &unk_232CFDD60);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C567F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
  sub_232C59C30(&qword_27DDC7CB0, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse, &unk_232D0027C);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C568D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  sub_232C59C30(&qword_27DDC67F8, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse, &unk_232CF5FB8);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C569B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  sub_232C59C30(&qword_27DDC77A8, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult, &unk_232CFD898);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C56A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  sub_232C59C30(&qword_27DDC75A0, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult, &unk_232CFD018);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C56B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0);
  result = sub_232C56BD4(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C56BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_232C56CB4(a1, a2, a3, a4);
  if (!v4)
  {
    sub_232C56E9C(a1, a2, a3, a4);
    sub_232C57084(a1, a2, a3, a4);
    sub_232C5726C(a1, a2, a3, a4);
    sub_232C57454(a1, a2, a3, a4);
    sub_232C5763C(a1, a2, a3, a4);
    sub_232C57824(a1, a2, a3, a4);
    return sub_232C57A0C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_232C56CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v6, 1, v7) == 1)
  {
    return sub_232B13790(v6, &qword_27DDC7A40, &unk_232CFE960);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC7BF0, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse, &unk_232CFFA80);
  sub_232CE95E0();
  return sub_232C59D64(v9, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
}

uint64_t sub_232C56E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v6, 1, v7) == 1)
  {
    return sub_232B13790(v6, &qword_27DDC7A38, &unk_232CFBAD0);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC7B78, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse, &unk_232CFF430);
  sub_232CE95E0();
  return sub_232C59D64(v9, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
}

uint64_t sub_232C57084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v6, 1, v7) == 1)
  {
    return sub_232B13790(v6, &qword_27DDC67C8, &unk_232CF5E70);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);
  sub_232CE95E0();
  return sub_232C59D64(v9, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
}

uint64_t sub_232C5726C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v6, 1, v7) == 1)
  {
    return sub_232B13790(v6, &qword_27DDC7828, &unk_232CFBAC0);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC7840, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse, &unk_232CFDD60);
  sub_232CE95E0();
  return sub_232C59D64(v9, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);
}

uint64_t sub_232C57454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v6, 1, v7) == 1)
  {
    return sub_232B13790(v6, &qword_27DDC7A30, &unk_232CFE950);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC7CB0, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse, &unk_232D0027C);
  sub_232CE95E0();
  return sub_232C59D64(v9, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
}

uint64_t sub_232C5763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v6, 1, v7) == 1)
  {
    return sub_232B13790(v6, &qword_27DDC7008, &unk_232CFBAB0);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC67F8, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse, &unk_232CF5FB8);
  sub_232CE95E0();
  return sub_232C59D64(v9, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
}

uint64_t sub_232C57824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v6, 1, v7) == 1)
  {
    return sub_232B13790(v6, &qword_27DDC7788, &qword_232CFA9A0);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC77A8, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult, &unk_232CFD898);
  sub_232CE95E0();
  return sub_232C59D64(v9, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
}

uint64_t sub_232C57A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v6, 1, v7) == 1)
  {
    return sub_232B13790(v6, &qword_27DDC7588, &qword_232CFA250);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC75A0, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult, &unk_232CFD018);
  sub_232CE95E0();
  return sub_232C59D64(v9, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);
}

uint64_t sub_232C57BF4()
{
  sub_232B2D12C();
  v2 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0) + 20);
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_232C57CD8(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232C59C30(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_232CE9CF0() & 1;
}

BOOL sub_232C57CD8(uint64_t a1, uint64_t a2)
{
  v175 = a2;
  v176 = a1;
  v135 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  MEMORY[0x28223BE20](v135);
  v131 = &v130 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_232B124A8(&qword_27DDC6828, &unk_232CF6030);
  MEMORY[0x28223BE20](v134);
  v136 = &v130 - v3;
  v4 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v4 - 8);
  v132 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v151 = &v130 - v7;
  v140 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  MEMORY[0x28223BE20](v140);
  v133 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_232B124A8(&qword_27DDC8308, &qword_232CFE970);
  MEMORY[0x28223BE20](v139);
  v141 = &v130 - v9;
  v10 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  MEMORY[0x28223BE20](v10 - 8);
  v137 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v150 = &v130 - v13;
  v145 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  MEMORY[0x28223BE20](v145);
  v138 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_232B124A8(&qword_27DDC8310, &qword_232CFE978);
  MEMORY[0x28223BE20](v144);
  v146 = &v130 - v15;
  v16 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  MEMORY[0x28223BE20](v16 - 8);
  v143 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v148 = &v130 - v19;
  v153 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse(0);
  MEMORY[0x28223BE20](v153);
  v142 = (&v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = sub_232B124A8(&qword_27DDC8318, &qword_232CFE980);
  MEMORY[0x28223BE20](v152);
  v154 = &v130 - v21;
  v22 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  MEMORY[0x28223BE20](v22 - 8);
  v147 = (&v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v156 = &v130 - v25;
  v159 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse(0);
  MEMORY[0x28223BE20](v159);
  v149 = (&v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = sub_232B124A8(&qword_27DDC8320, &qword_232CFE988);
  MEMORY[0x28223BE20](v158);
  v160 = &v130 - v27;
  v28 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  MEMORY[0x28223BE20](v28 - 8);
  v155 = (&v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v162 = &v130 - v31;
  v165 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse(0);
  MEMORY[0x28223BE20](v165);
  v157 = (&v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164 = sub_232B124A8(&qword_27DDC8328, &qword_232CFE990);
  MEMORY[0x28223BE20](v164);
  v166 = &v130 - v33;
  v34 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  MEMORY[0x28223BE20](v34 - 8);
  v161 = (&v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36);
  v173 = &v130 - v37;
  v171 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
  MEMORY[0x28223BE20](v171);
  v163 = (&v130 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v169 = sub_232B124A8(&qword_27DDC8330, &qword_232CFE998);
  MEMORY[0x28223BE20](v169);
  v172 = &v130 - v39;
  v40 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  MEMORY[0x28223BE20](v40 - 8);
  v167 = (&v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v42);
  v170 = &v130 - v43;
  v44 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse(0);
  MEMORY[0x28223BE20](v44);
  v168 = (&v130 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_232B124A8(&qword_27DDC8338, &unk_232CFE9A0);
  v47 = v46 - 8;
  MEMORY[0x28223BE20](v46);
  v49 = &v130 - v48;
  v50 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  MEMORY[0x28223BE20](v50 - 8);
  v174 = (&v130 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v52);
  v54 = &v130 - v53;
  swift_beginAccess();
  sub_232B2CF64();
  swift_beginAccess();
  v55 = *(v47 + 56);
  sub_232B2CF64();
  sub_232B2CF64();
  if (sub_232B12480(v49, 1, v44) == 1)
  {

    sub_232B13790(v54, &qword_27DDC7A40, &unk_232CFE960);
    if (sub_232B12480(&v49[v55], 1, v44) == 1)
    {
      sub_232B13790(v49, &qword_27DDC7A40, &unk_232CFE960);
      goto LABEL_9;
    }

LABEL_6:
    v57 = &qword_27DDC8338;
    v58 = &unk_232CFE9A0;
LABEL_7:
    v59 = v49;
LABEL_23:
    sub_232B13790(v59, v57, v58);
    goto LABEL_24;
  }

  v56 = v174;
  sub_232B2CF64();
  if (sub_232B12480(&v49[v55], 1, v44) == 1)
  {

    sub_232B13790(v54, &qword_27DDC7A40, &unk_232CFE960);
    sub_232C59D64(v56, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
    goto LABEL_6;
  }

  v60 = v168;
  sub_232C59D08();

  v61 = sub_232C7A7FC(v56, v60);
  sub_232C59D64(v60, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
  sub_232B13790(v54, &qword_27DDC7A40, &unk_232CFE960);
  sub_232C59D64(v56, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
  sub_232B13790(v49, &qword_27DDC7A40, &unk_232CFE960);
  if ((v61 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_9:
  swift_beginAccess();
  v62 = v170;
  sub_232B2CF64();
  swift_beginAccess();
  v63 = *(v169 + 48);
  v64 = v172;
  sub_232B2CF64();
  sub_232B2CF64();
  v65 = v171;
  if (sub_232B12480(v64, 1, v171) == 1)
  {
    sub_232B13790(v62, &qword_27DDC7A38, &unk_232CFBAD0);
    v66 = sub_232B12480(v64 + v63, 1, v65);
    v67 = v173;
    if (v66 == 1)
    {
      sub_232B13790(v64, &qword_27DDC7A38, &unk_232CFBAD0);
      goto LABEL_16;
    }

LABEL_14:
    v57 = &qword_27DDC8330;
    v58 = &qword_232CFE998;
LABEL_22:
    v59 = v64;
    goto LABEL_23;
  }

  v68 = v167;
  sub_232B2CF64();
  v69 = sub_232B12480(v64 + v63, 1, v65);
  v67 = v173;
  if (v69 == 1)
  {
    sub_232B13790(v62, &qword_27DDC7A38, &unk_232CFBAD0);
    sub_232C59D64(v68, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
    goto LABEL_14;
  }

  v70 = v163;
  sub_232C59D08();
  v71 = sub_232C69C58(v68, v70);
  sub_232C59D64(v70, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
  sub_232B13790(v62, &qword_27DDC7A38, &unk_232CFBAD0);
  sub_232C59D64(v68, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
  sub_232B13790(v64, &qword_27DDC7A38, &unk_232CFBAD0);
  if ((v71 & 1) == 0)
  {
LABEL_24:

    return 0;
  }

LABEL_16:
  swift_beginAccess();
  sub_232B2CF64();
  swift_beginAccess();
  v72 = *(v164 + 48);
  v64 = v166;
  sub_232B2CF64();
  sub_232B2CF64();
  v73 = v165;
  if (sub_232B12480(v64, 1, v165) == 1)
  {
    sub_232B13790(v67, &qword_27DDC7828, &unk_232CFBAC0);
    if (sub_232B12480(v64 + v72, 1, v73) == 1)
    {
      sub_232B13790(v64, &qword_27DDC7828, &unk_232CFBAC0);
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v74 = v161;
  sub_232B2CF64();
  if (sub_232B12480(v64 + v72, 1, v73) == 1)
  {
    sub_232B13790(v67, &qword_27DDC7828, &unk_232CFBAC0);
    sub_232C59D64(v74, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);
LABEL_21:
    v57 = &qword_27DDC8328;
    v58 = &qword_232CFE990;
    goto LABEL_22;
  }

  v76 = v157;
  sub_232C59D08();
  v77 = sub_232C326E0(v74, v76);
  sub_232C59D64(v76, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);
  sub_232B13790(v67, &qword_27DDC7828, &unk_232CFBAC0);
  sub_232C59D64(v74, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);
  sub_232B13790(v64, &qword_27DDC7828, &unk_232CFBAC0);
  if ((v77 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_28:
  swift_beginAccess();
  v78 = v162;
  sub_232B2CF64();
  swift_beginAccess();
  v79 = *(v158 + 48);
  v49 = v160;
  sub_232B2CF64();
  sub_232B2CF64();
  v80 = v159;
  if (sub_232B12480(v49, 1, v159) == 1)
  {
    sub_232B13790(v78, &qword_27DDC7A30, &unk_232CFE950);
    if (sub_232B12480(&v49[v79], 1, v80) == 1)
    {
      sub_232B13790(v49, &qword_27DDC7A30, &unk_232CFE950);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v81 = v155;
  sub_232B2CF64();
  if (sub_232B12480(&v49[v79], 1, v80) == 1)
  {
    sub_232B13790(v162, &qword_27DDC7A30, &unk_232CFE950);
    sub_232C59D64(v81, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
LABEL_33:
    v57 = &qword_27DDC8320;
    v58 = &qword_232CFE988;
    goto LABEL_7;
  }

  v82 = v149;
  sub_232C59D08();
  v83 = sub_232C7E818(v81, v82);
  sub_232C59D64(v82, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
  sub_232B13790(v162, &qword_27DDC7A30, &unk_232CFE950);
  sub_232C59D64(v81, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
  sub_232B13790(v49, &qword_27DDC7A30, &unk_232CFE950);
  if ((v83 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_35:
  swift_beginAccess();
  v84 = v156;
  sub_232B2CF64();
  swift_beginAccess();
  v85 = *(v152 + 48);
  v86 = v154;
  sub_232B2CF64();
  sub_232B2CF64();
  v87 = v153;
  if (sub_232B12480(v86, 1, v153) == 1)
  {
    sub_232B13790(v84, &qword_27DDC7008, &unk_232CFBAB0);
    v88 = sub_232B12480(v86 + v85, 1, v87);
    v89 = v151;
    if (v88 == 1)
    {
      sub_232B13790(v86, &qword_27DDC7008, &unk_232CFBAB0);
      v90 = v150;
      goto LABEL_42;
    }

LABEL_40:
    v57 = &qword_27DDC8318;
    v58 = &qword_232CFE980;
    v59 = v86;
    goto LABEL_23;
  }

  v91 = v147;
  sub_232B2CF64();
  v92 = sub_232B12480(v86 + v85, 1, v87);
  v90 = v150;
  if (v92 == 1)
  {
    sub_232B13790(v156, &qword_27DDC7008, &unk_232CFBAB0);
    sub_232C59D64(v91, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
    goto LABEL_40;
  }

  v93 = v142;
  sub_232C59D08();
  v94 = v86;
  v95 = sub_232B21360(v91, v93);
  sub_232C59D64(v93, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
  sub_232B13790(v156, &qword_27DDC7008, &unk_232CFBAB0);
  sub_232C59D64(v91, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
  sub_232B13790(v94, &qword_27DDC7008, &unk_232CFBAB0);
  v89 = v151;
  if ((v95 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_42:
  swift_beginAccess();
  v96 = v148;
  sub_232B2CF64();
  swift_beginAccess();
  v97 = *(v144 + 48);
  v98 = v146;
  sub_232B2CF64();
  v99 = v98;
  sub_232B2CF64();
  v100 = v145;
  if (sub_232B12480(v98, 1, v145) == 1)
  {
    sub_232B13790(v96, &qword_27DDC7788, &qword_232CFA9A0);
    if (sub_232B12480(v98 + v97, 1, v100) == 1)
    {
      sub_232B13790(v98, &qword_27DDC7788, &qword_232CFA9A0);
      goto LABEL_51;
    }

LABEL_47:
    v57 = &qword_27DDC8310;
    v58 = &qword_232CFE978;
    v59 = v98;
    goto LABEL_23;
  }

  v101 = v143;
  sub_232B2CF64();
  if (sub_232B12480(v98 + v97, 1, v100) == 1)
  {
    sub_232B13790(v148, &qword_27DDC7788, &qword_232CFA9A0);
    sub_232C59D64(v101, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
    goto LABEL_47;
  }

  v102 = v138;
  sub_232C59D08();
  v103 = *(v100 + 20);
  v104 = *(v101 + v103);
  v105 = *(v102 + v103);
  if (v104 != v105)
  {

    v106 = sub_232C29390(v104, v105);

    if ((v106 & 1) == 0)
    {
      sub_232C59D64(v102, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
      sub_232B13790(v148, &qword_27DDC7788, &qword_232CFA9A0);
      sub_232C59D64(v143, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
      v59 = v99;
      v57 = &qword_27DDC7788;
      v58 = &qword_232CFA9A0;
      goto LABEL_23;
    }
  }

  sub_232CE9340();
  sub_232C59C30(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v107 = v143;
  v108 = sub_232CE9CF0();
  sub_232C59D64(v102, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
  sub_232B13790(v148, &qword_27DDC7788, &qword_232CFA9A0);
  sub_232C59D64(v107, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
  sub_232B13790(v99, &qword_27DDC7788, &qword_232CFA9A0);
  if ((v108 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_51:
  swift_beginAccess();
  sub_232B2CF64();
  swift_beginAccess();
  v109 = *(v139 + 48);
  v64 = v141;
  sub_232B2CF64();
  sub_232B2CF64();
  v110 = v140;
  if (sub_232B12480(v64, 1, v140) == 1)
  {
    sub_232B13790(v90, &qword_27DDC7588, &qword_232CFA250);
    if (sub_232B12480(v64 + v109, 1, v110) == 1)
    {
      sub_232B13790(v64, &qword_27DDC7588, &qword_232CFA250);
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  v111 = v137;
  sub_232B2CF64();
  if (sub_232B12480(v64 + v109, 1, v110) == 1)
  {
    sub_232B13790(v90, &qword_27DDC7588, &qword_232CFA250);
    sub_232C59D64(v111, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);
LABEL_56:
    v57 = &qword_27DDC8308;
    v58 = &qword_232CFE970;
    goto LABEL_22;
  }

  v112 = v133;
  sub_232C59D08();
  v113 = sub_232C22A64(v111, v112);
  sub_232C59D64(v112, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);
  sub_232B13790(v90, &qword_27DDC7588, &qword_232CFA250);
  sub_232C59D64(v111, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);
  sub_232B13790(v64, &qword_27DDC7588, &qword_232CFA250);
  if ((v113 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_58:
  swift_beginAccess();
  sub_232B2CF64();
  swift_beginAccess();
  v114 = *(v134 + 48);
  v115 = v136;
  sub_232B2CF64();
  v116 = v115;
  sub_232B2CF64();
  v117 = v135;
  if (sub_232B12480(v115, 1, v135) == 1)
  {

    sub_232B13790(v89, &qword_27DDC67C8, &unk_232CF5E70);
    if (sub_232B12480(v115 + v114, 1, v117) == 1)
    {
      sub_232B13790(v115, &qword_27DDC67C8, &unk_232CF5E70);
      return 1;
    }

    goto LABEL_65;
  }

  v118 = v132;
  sub_232B2CF64();
  if (sub_232B12480(v115 + v114, 1, v117) == 1)
  {

    sub_232B13790(v89, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232C59D64(v118, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
LABEL_65:
    v119 = &qword_27DDC6828;
    v120 = &unk_232CF6030;
    v121 = v115;
LABEL_77:
    sub_232B13790(v121, v119, v120);
    return 0;
  }

  v122 = v131;
  sub_232C59D08();
  v123 = *(v117 + 20);
  v124 = (v118 + v123);
  v125 = *(v118 + v123 + 8);
  v126 = (v122 + v123);
  v127 = v126[1];
  if (!v125)
  {
    if (!v127)
    {
      goto LABEL_73;
    }

LABEL_76:

    sub_232B13790(v89, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232C59D64(v122, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
    sub_232C59D64(v118, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
    v121 = v116;
    v119 = &qword_27DDC67C8;
    v120 = &unk_232CF5E70;
    goto LABEL_77;
  }

  if (!v127)
  {
    goto LABEL_76;
  }

  v128 = *v124 == *v126 && v125 == v127;
  if (!v128 && (sub_232CEA750() & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_73:
  sub_232CE9340();
  sub_232C59C30(&qword_27DDC6590, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v129 = sub_232CE9CF0();

  sub_232B13790(v89, &qword_27DDC67C8, &unk_232CF5E70);
  sub_232C59D64(v122, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232C59D64(v118, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232B13790(v116, &qword_27DDC67C8, &unk_232CF5E70);
  return (v129 & 1) != 0;
}

uint64_t sub_232C598B4()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0);
  sub_232C59C30(&qword_27DDC82F0, type metadata accessor for DocumentUnderstanding_ClientInterface_Response, &unk_232CFE808);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C5998C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C59C30(&qword_27DDC8300, type metadata accessor for DocumentUnderstanding_ClientInterface_Response, &unk_232CFE898);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C59A08@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6410 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5170);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C59AB0(uint64_t a1)
{
  v2 = sub_232C59C30(&qword_27DDC7A60, type metadata accessor for DocumentUnderstanding_ClientInterface_Response, &unk_232CFE8D0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C59B20(uint64_t a1, uint64_t a2)
{
  sub_232C59C30(&qword_27DDC7A60, type metadata accessor for DocumentUnderstanding_ClientInterface_Response, &unk_232CFE8D0);

  return sub_232CE9500();
}

uint64_t sub_232C59C30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232C59D08()
{
  sub_232B2D12C();
  v2(0);
  sub_232B13F24();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_232C59D64(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_232B13F24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_232C59DBC(uint64_t a1)
{

  return sub_232B12504(v1 + v2, 1, 1, a1);
}

uint64_t sub_232C59DDC()
{

  return sub_232B2D074();
}

uint64_t sub_232C59DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232B12504(a1, 1, 1, a4);
}

void sub_232C59E2C(void *a1, uint64_t *a2, unint64_t a3)
{
  sub_232C5A124(":record_id", *a2, a2[1], a1);
  type metadata accessor for DUVectorUtils();
  v6 = sub_232C18B10(a3);
  sub_232C5A184(":vector", v6, v7, a1);
  v8 = 0;
  if (a2[4] >> 60 != 15)
  {
    v8 = sub_232CE8C50();
  }

  v9 = v8;
  [a1 bindNamedParam:":associated_data" toNSData:?];
}

id sub_232C59F04(void *a1, unint64_t a2, uint64_t a3, float a4)
{
  type metadata accessor for DUVectorUtils();
  v8 = sub_232C18B10(a2);
  sub_232C5A184(":target_vector", v8, v9, a1);
  [a1 bindNamedParam:":distance_limit" toDouble:a4];

  return [a1 bindNamedParam:":count_limit" toInteger:a3];
}

uint64_t sub_232C59FBC(void *a1, uint64_t a2)
{
  v4 = [a1 getNSStringForColumn_];
  if (!v4)
  {
    return *MEMORY[0x277D42690];
  }

  v5 = v4;
  v6 = sub_232CE9D50();
  v8 = v7;

  [a1 getDoubleForColumn_];
  v10 = v9;
  v11 = [a1 getNSDataForColumn_];
  if (v11)
  {
    v12 = v11;
    v13 = sub_232CE8C80();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  swift_beginAccess();
  sub_232C05E58(v13, v15);
  sub_232BAD0FC();
  v17 = *(*(a2 + 16) + 16);
  sub_232BAD274(v17);
  v18 = *(a2 + 16);
  *(v18 + 16) = v17 + 1;
  v19 = v18 + 40 * v17;
  *(v19 + 32) = v6;
  *(v19 + 40) = v8;
  *(v19 + 48) = v13;
  *(v19 + 56) = v15;
  *(v19 + 64) = v10;
  *(a2 + 16) = v18;
  swift_endAccess();
  v16 = *MEMORY[0x277D42690];
  sub_232BB6018(v13, v15);
  return v16;
}

id sub_232C5A124(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_232CE9D20();
  v7 = [a4 bindNamedParam:a1 toNSString:v6];

  return v7;
}

id sub_232C5A184(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = sub_232CE8C50();
  sub_232B41BEC(a2, a3);
  v9 = [a4 bindNamedParam:a1 toNSData:v8];

  return v9;
}

uint64_t sub_232C5A200()
{
  v1 = sub_232CE8C00();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v37 = sub_232C6EC18(v0);
  v15 = v14;
  v36 = sub_232C6EC24(v0);
  v17 = v16;
  v18 = [v0 uniqueIdentifier];
  v19 = sub_232CE9D50();
  v38 = v20;
  v39 = v19;

  v21 = [v0 attributeSet];
  v22 = [v21 contentURL];

  if (v22)
  {
    sub_232CE8BB0();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  sub_232B12504(v10, v23, 1, v1);
  sub_232C4A008(v10, v13);
  sub_232B35974(v13, v7);
  if (sub_232B12480(v7, 1, v1) == 1)
  {
    sub_232B359E4(v7);
    v24 = 0xED0000646E756F66;
    v25 = 0x5F687461705F6F6ELL;
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    v25 = sub_232CE8B60();
    v24 = v26;
    (*(v2 + 8))(v4, v1);
  }

  if (v17)
  {
    v27 = v17;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  if (v17)
  {
    v28 = v36;
  }

  else
  {
    v28 = 0;
  }

  if (v15)
  {
    v29 = v37;
  }

  else
  {
    v15 = 0xE000000000000000;
    v29 = 0;
  }

  sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_232CF4C30;
  v31 = MEMORY[0x277D837D0];
  *(v30 + 56) = MEMORY[0x277D837D0];
  v32 = sub_232B27F34();
  *(v30 + 32) = v29;
  *(v30 + 40) = v15;
  *(v30 + 96) = v31;
  *(v30 + 104) = v32;
  *(v30 + 64) = v32;
  *(v30 + 72) = v28;
  *(v30 + 80) = v27;
  *(v30 + 136) = v31;
  *(v30 + 144) = v32;
  v33 = v38;
  *(v30 + 112) = v39;
  *(v30 + 120) = v33;
  *(v30 + 176) = v31;
  *(v30 + 184) = v32;
  *(v30 + 152) = v25;
  *(v30 + 160) = v24;
  v34 = sub_232CE9D80();
  sub_232B359E4(v13);
  return v34;
}

id sub_232C5A584(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue, v12);
  v5 = *(v1 + v4);
  v6 = objc_allocWithZone(ObjectType);
  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = v5;
  v11.receiver = v6;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  DURequestContentType.formUnion(_:)(a1, v8, v9);
  return v7;
}

id sub_232C5A618(void *a1)
{
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding37SpotlightDocumentTaggingUpdateHandler_client] = a1;
  v3 = objc_allocWithZone(type metadata accessor for SpotlightOutputSink());
  v4 = a1;
  v5 = [v3 init];
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding37SpotlightDocumentTaggingUpdateHandler_spotlightOutputSink] = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SpotlightDocumentTaggingUpdateHandler();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id sub_232C5A6A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding37SpotlightDocumentTaggingUpdateHandler_client);
  v2 = type metadata accessor for DURequestContentType();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 2;
  v12.receiver = v3;
  v12.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v12, sel_init);
  v6 = objc_allocWithZone(v2);
  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 256;
  v11.receiver = v6;
  v11.super_class = v2;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = sub_232C5A584(v7);

  v9 = objc_allocWithZone(type metadata accessor for DURequest());
  return DURequest.init(client:contentType:strategies:)(v4, v8, 0);
}

uint64_t sub_232C5A788(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 72) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_232C5A7B4, 0, 0);
}

uint64_t sub_232C5A7B4()
{
  sub_232B26C44();
  if (*(v0 + 72) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v2 = sub_232C5BFB0(v1);

    return sub_232C5CE10(v2, v3, v4, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v8 = sub_232C5BFB0(v7);

    return sub_232C5D150(v8, v9, v10, v11);
  }
}

uint64_t sub_232C5A8B4()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;

  sub_232B26CF4();

  return v3();
}

uint64_t sub_232C5A994()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;

  sub_232B26CF4();

  return v3();
}

uint64_t sub_232C5AA74()
{
  sub_232B26C44();
  *(v1 + 424) = v2;
  *(v1 + 432) = v0;
  *(v1 + 592) = v3;
  *(v1 + 416) = v4;
  v5 = sub_232CE9A30();
  *(v1 + 440) = v5;
  *(v1 + 448) = *(v5 - 8);
  *(v1 + 456) = swift_task_alloc();
  *(v1 + 464) = swift_task_alloc();
  *(v1 + 472) = swift_task_alloc();
  *(v1 + 480) = swift_task_alloc();
  *(v1 + 488) = swift_task_alloc();
  *(v1 + 496) = swift_task_alloc();
  *(v1 + 504) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C5AB80, 0, 0);
}

uint64_t sub_232C5AB80()
{
  v2 = v0[52];
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document, (v0 + 2));
  v4 = *(v2 + v3);
  v0[64] = v4;
  if (v4)
  {
    v5 = v4;
    sub_232CE9A20();
    v6 = sub_232CE9A00();
    v7 = sub_232CEA1A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = sub_232BA73DC();
      sub_232C31D84(v8);
      _os_log_impl(&dword_232B02000, v6, v7, "(SpotlightDocumentTaggingUpdateHandler) Beginning handleDocumentUpdate", v1, 2u);
      sub_232B26D28();
    }

    v9 = v0[63];
    v10 = v0[55];
    v11 = v0[56];

    v12 = *(v11 + 8);
    v0[65] = v12;
    v12(v9, v10);
    v0[66] = sub_232C5A6A8();
    v13 = v5;
    v14 = swift_task_alloc();
    v0[67] = v14;
    *v14 = v0;
    v14[1] = sub_232C5ADC8;

    return sub_232B22E24();
  }

  else
  {
    sub_232CE9A20();
    v16 = sub_232CE9A00();
    v17 = sub_232CEA1C0();
    v18 = sub_232B26D0C(v17);
    v20 = v0[56];
    v19 = v0[57];
    v21 = v0[55];
    if (v18)
    {
      v22 = sub_232BA73DC();
      sub_232C31D84(v22);
      sub_232C31DC4(&dword_232B02000, v23, v24, "There is unexpectedly no document to update");
      sub_232B26D28();
    }

    (*(v20 + 8))(v19, v21);
    sub_232C5BFEC();

    sub_232B26CF4();

    return v25();
  }
}

uint64_t sub_232C5ADC8()
{
  sub_232B26C44();
  sub_232B26C70();
  v3 = *(v2 + 512);
  v4 = *v1;
  sub_232B26B3C();
  *v5 = v4;
  *(v7 + 544) = v6;
  *(v7 + 552) = v0;

  if (v0)
  {
    v8 = sub_232C5BD54;
  }

  else
  {
    v8 = sub_232C5AEEC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void sub_232C5AEEC()
{
  v157 = v0;
  v1 = v0[68];
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics, (v0 + 5));
  v3 = *(v1 + v2);
  v155 = v0;
  if (v3 && (v4 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics, sub_232B13F74(v3 + OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics, (v0 + 8)), (v5 = *(v3 + v4)) != 0))
  {
  }

  else
  {
    sub_232CE9A20();
    v6 = sub_232CE9A00();
    v7 = sub_232CEA1A0();
    v8 = sub_232B26D0C(v7);
    v9 = v0[65];
    v10 = v0[62];
    v11 = v0[55];
    if (v8)
    {
      v12 = sub_232BA73DC();
      sub_232C31D84(v12);
      sub_232C31DC4(&dword_232B02000, v13, v14, "Received nil topics. Defaulting to empty list");
      sub_232B26D28();
    }

    v9(v10, v11);

    v5 = MEMORY[0x277D84F90];
  }

  v0[70] = v5;
  v15 = v0[68];
  v16 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories;
  sub_232B13F74(v15 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories, (v0 + 11));
  v17 = *(v15 + v16);
  v148 = v5;
  if (v17)
  {
    sub_232B13F74(v17 + OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories, (v0 + 14));
  }

  else
  {
    sub_232CE9A20();
    v19 = sub_232CE9A00();
    v20 = sub_232CEA1A0();
    v21 = sub_232B26D0C(v20);
    v22 = v0[65];
    v23 = v0[61];
    v24 = v0[55];
    if (v21)
    {
      v25 = sub_232BA73DC();
      sub_232C31D84(v25);
      sub_232C31DC4(&dword_232B02000, v26, v27, "Received nil document classes. Defaulting to empty list");
      sub_232B26D28();
    }

    v22(v23, v24);
    v18 = MEMORY[0x277D84F90];
    v5 = v148;
  }

  v149 = v18;
  v0[71] = v18;
  v28 = v0[64];
  v29 = v0[52];
  sub_232CE9A20();
  v30 = v28;
  v31 = v29;
  v32 = sub_232CE9A00();
  v33 = sub_232CEA1B0();

  v34 = &qword_232CFA000;
  if (os_log_type_enabled(v32, v33))
  {
    v35 = v0[52];
    v36 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
    sub_232B13F74(v35 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID, (v0 + 44));
    v38 = (*(v35 + v37) + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
    sub_232B13F74(v38, (v0 + 47));
    v40 = *v38;
    v39 = v38[1];

    v41 = sub_232BAD2D4(v40, v39, &v156);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    v42 = sub_232B5821C();
    if (v43)
    {
      v44 = sub_232B57E40(256, v42, v43);
    }

    else
    {
      v44 = sub_232CEA370();
    }

    v48 = v0[65];
    v151 = v155[60];
    v49 = v155[55];
    v50 = MEMORY[0x238391B80](v44);
    v52 = v51;

    v53 = sub_232BAD2D4(v50, v52, &v156);

    *(v36 + 14) = v53;
    _os_log_impl(&dword_232B02000, v32, v33, "(SpotlightDocumentTaggingUpdateHandler) For document %s, received content prefix %s", v36, 0x16u);
    swift_arrayDestroy();
    sub_232BA6A84();
    sub_232BA6A84();

    v48(v151, v49);
    v5 = v148;
    v34 = &qword_232CFA000;
  }

  else
  {
    v45 = v0[65];
    v46 = v0[60];
    v47 = v0[55];

    v45(v46, v47);
  }

  sub_232B57F00(5, v5);
  v152 = v55;
  v57 = v56 >> 1;
  v58 = (v56 >> 1) - v54;
  if (__OFSUB__(v56 >> 1, v54))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v59 = MEMORY[0x277D837D0];
  if (v58)
  {
    v60 = v54;
    sub_232C5BFC8(MEMORY[0x277D84F90]);
    v61 = v155;
    if ((v58 & 0x8000000000000000) == 0)
    {
      v62 = v156;
      while (1)
      {
        if (v60 >= v57)
        {
          __break(1u);
          goto LABEL_54;
        }

        v63 = *(v152 + 8 * v60);
        sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_232CF8180;
        v65 = &v63[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier];
        sub_232B13F74(&v63[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier], (v61 + 17));
        v66 = *v65;
        v67 = *(v65 + 1);
        *(v64 + 56) = v59;
        v68 = sub_232B27F34();
        *(v64 + 64) = v68;
        *(v64 + 32) = v66;
        *(v64 + 40) = v67;
        v69 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
        sub_232B13F74(&v63[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames], (v61 + 20));
        v70 = *&v63[v69];
        if (!*(v70 + 16))
        {
          break;
        }

        v71 = *(v70 + 32);
        v72 = (v64 + 72);
        *(v64 + 96) = v59;
        *(v64 + 104) = v68;

        if (!v73)
        {
          v61 = v155;
          goto LABEL_28;
        }

        *v72 = v71;
        v61 = v155;
LABEL_29:
        *(v64 + 80) = v73;
        v74 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
        sub_232B13F74(&v63[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence], (v61 + 23));
        v75 = *&v63[v74];
        *(v64 + 136) = MEMORY[0x277D839F8];
        *(v64 + 144) = MEMORY[0x277D83A80];
        *(v64 + 112) = v75;
        v76 = v63;

        v77 = sub_232CE9D80();
        v79 = v78;

        v156 = v62;
        v81 = *(v62 + 16);
        v80 = *(v62 + 24);
        if (v81 >= v80 >> 1)
        {
          sub_232B649F4(v80 > 1, v81 + 1, 1);
          v62 = v156;
        }

        *(v62 + 16) = v81 + 1;
        v82 = v62 + 16 * v81;
        *(v82 + 32) = v77;
        *(v82 + 40) = v79;
        ++v60;
        v34 = &qword_232CFA000;
        if (v57 == v60)
        {
          swift_unknownObjectRelease();
          goto LABEL_34;
        }
      }

      v72 = (v64 + 72);
      *(v64 + 96) = v59;
      *(v64 + 104) = v68;
LABEL_28:
      *v72 = 0;
      v73 = 0xE000000000000000;
      goto LABEL_29;
    }

    goto LABEL_57;
  }

  swift_unknownObjectRelease();
  v62 = MEMORY[0x277D84F90];
  v61 = v155;
LABEL_34:
  v83 = v61;
  v84 = v61[52];
  v83[50] = v62;
  sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
  sub_232B27E88();
  v153 = sub_232CE9CD0();
  v86 = v85;

  sub_232CE9A20();
  v87 = v84;

  v88 = sub_232CE9A00();
  v89 = sub_232CEA1B0();

  v90 = os_log_type_enabled(v88, v89);
  v91 = v83[65];
  v92 = v83[59];
  v93 = v83[55];
  if (v90)
  {
    v147 = v83[65];
    v94 = v83[52];
    v146 = v83[59];
    v95 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    *v95 = v34[24];
    v96 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
    sub_232B13F74(v94 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID, (v83 + 38));
    v97 = (*(v94 + v96) + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
    sub_232B13F74(v97, (v83 + 41));
    v99 = *v97;
    v98 = v97[1];

    v100 = sub_232BAD2D4(v99, v98, &v156);

    *(v95 + 4) = v100;
    *(v95 + 12) = 2080;
    v101 = sub_232BAD2D4(v153, v86, &v156);

    *(v95 + 14) = v101;
    _os_log_impl(&dword_232B02000, v88, v89, "(SpotlightDocumentTaggingUpdateHandler) For document %s, received top topics %s", v95, 0x16u);
    swift_arrayDestroy();
    sub_232BA6A84();
    sub_232BA6A84();

    v147(v146, v93);
  }

  else
  {

    v91(v92, v93);
  }

  sub_232B57F40(5, v149);
  v105 = v104 >> 1;
  v106 = (v104 >> 1) - v103;
  if (__OFSUB__(v104 >> 1, v103))
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v106)
  {
    v107 = v102;
    v108 = v103;
    sub_232C5BFC8(MEMORY[0x277D84F90]);
    if (v106 < 0)
    {
LABEL_58:
      __break(1u);
      return;
    }

    v109 = v156;
    while (v108 < v105)
    {
      v110 = *(v107 + 8 * v108);
      sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_232CF5E60;
      v112 = &v110[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
      sub_232B13F74(&v110[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier], (v155 + 26));
      v114 = *v112;
      v113 = *(v112 + 1);
      *(v111 + 56) = MEMORY[0x277D837D0];
      *(v111 + 64) = sub_232B27F34();
      *(v111 + 32) = v114;
      *(v111 + 40) = v113;
      v115 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
      sub_232B13F74(&v110[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence], (v155 + 29));
      v116 = *&v110[v115];
      *(v111 + 96) = MEMORY[0x277D839F8];
      *(v111 + 104) = MEMORY[0x277D83A80];
      *(v111 + 72) = v116;
      v117 = v110;

      v118 = sub_232CE9D80();
      v120 = v119;

      v156 = v109;
      v122 = *(v109 + 16);
      v121 = *(v109 + 24);
      if (v122 >= v121 >> 1)
      {
        sub_232B649F4(v121 > 1, v122 + 1, 1);
        v109 = v156;
      }

      *(v109 + 16) = v122 + 1;
      v123 = v109 + 16 * v122;
      *(v123 + 32) = v118;
      *(v123 + 40) = v120;
      if (v105 == ++v108)
      {
        swift_unknownObjectRelease();
        goto LABEL_47;
      }
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  swift_unknownObjectRelease();
  v109 = MEMORY[0x277D84F90];
LABEL_47:
  v124 = v155[52];
  v155[51] = v109;
  v125 = sub_232CE9CD0();
  v127 = v126;

  sub_232CE9A20();
  v128 = v124;

  v129 = sub_232CE9A00();
  v130 = sub_232CEA1B0();

  v131 = os_log_type_enabled(v129, v130);
  v132 = v155[65];
  v133 = v155[58];
  v134 = v155[55];
  if (v131)
  {
    v154 = v155[65];
    v135 = v155[52];
    v150 = v155[58];
    v136 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    *v136 = 136315394;
    v137 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
    sub_232B13F74(v135 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID, (v155 + 32));
    v138 = (*(v135 + v137) + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
    sub_232B13F74(v138, (v155 + 35));
    v139 = *v138;
    v140 = v138[1];

    v141 = sub_232BAD2D4(v139, v140, &v156);

    *(v136 + 4) = v141;
    *(v136 + 12) = 2080;
    v142 = sub_232BAD2D4(v125, v127, &v156);

    *(v136 + 14) = v142;
    _os_log_impl(&dword_232B02000, v129, v130, "(SpotlightDocumentTaggingUpdateHandler) For document %s, received top categories %s", v136, 0x16u);
    swift_arrayDestroy();
    sub_232BA6A84();
    sub_232BA6A84();

    v154(v150, v134);
  }

  else
  {

    v132(v133, v134);
  }

  v143 = swift_task_alloc();
  v155[72] = v143;
  *v143 = v155;
  v143[1] = sub_232C5BB58;
  v144 = *(v155 + 592);
  v145 = v155[53];

  sub_232C5A788(v145, v148, v149, v144, 1);
}

uint64_t sub_232C5BB58()
{
  sub_232B26C70();
  v2 = *v1;
  sub_232B26B3C();
  *v3 = v2;
  *(v4 + 584) = v0;

  if (v0)
  {
    v5 = sub_232C5BE0C;
  }

  else
  {
    v5 = sub_232C5BCA0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_232C5BCA0()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 512);

  sub_232C5BFEC();

  sub_232B26CF4();

  return v3();
}

uint64_t sub_232C5BD54()
{
  sub_232C5C00C(*(v0 + 528));

  sub_232B26CF4();

  return v1();
}

uint64_t sub_232C5BE0C()
{
  v1 = *(v0 + 512);

  sub_232C5C00C(*(v0 + 544));

  sub_232B26CF4();

  return v2();
}

id sub_232C5BF0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightDocumentTaggingUpdateHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_232C5BFC8(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;

  sub_232B649F4(0, v1 & ~(v1 >> 63), 0);
}

uint64_t sub_232C5BFEC()
{
}

void sub_232C5C00C(void *a1@<X8>)
{
}

uint64_t sub_232C5C02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_232CE9A30();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C5C0F4, 0, 0);
}

uint64_t sub_232C5C0F4(uint64_t a1)
{
  sub_232CE9A20();
  v2 = sub_232CE9A00();
  v3 = sub_232CEA1A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_232B02000, v2, v3, "SpotlightiOSFileOutputSink: Beginning writeTopicsAndClassesToSpotlight", v4, 2u);
    MEMORY[0x238393870](v4, -1, -1);
  }

  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v1[10] = v8;
  *v8 = v1;
  v8[1] = sub_232C5C240;
  v9 = v1[4];
  v10 = v1[5];
  v12 = v1[2];
  v11 = v1[3];

  return sub_232B27FE4(v12, v11, v9, v10);
}

uint64_t sub_232C5C240()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_232C5C350()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding26SpotlightiOSFileOutputSink_coreSpotlightOutputSink;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for CoreSpotlightOutputSink()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SpotlightiOSFileOutputSink();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_232C5C3D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightiOSFileOutputSink();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_232C5C440(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_232C5C60C(a2);
  v8 = sub_232C5C7A8(a3);
  [a1 setIsUpdate_];
  v9 = [a1 attributeSet];
  sub_232C5DFF4(v7, v9, &qword_27DDC81A0, 0x277CC33E0, &selRef_setDocumentUnderstandingTopics_);
  v10 = sub_232CEA100();
  [v9 setDocumentUnderstandingTopicsVersion_];

  sub_232C5DFF4(v8, v9, &qword_27DDC8198, 0x277CC33D8, &selRef_setDocumentUnderstandingCategories_);
  v11 = sub_232CEA100();
  [v9 setDocumentUnderstandingCategoriesVersion_];
}

uint64_t sub_232C5C570(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t), void (*a4)(void **, int64_t, void **))
{
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = a2(v8);
    *a1 = v8;
  }

  v10 = *(v8 + 16);
  v12[0] = v8 + 32;
  v12[1] = v10;
  sub_232C5D588(v12, a3, a4);
  return sub_232CEA570();
}

unint64_t sub_232C5C60C(uint64_t a1)
{
  v2 = sub_232B26B10();
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
LABEL_9:
    v18 = sub_232C5C95C(v3);

    return v18;
  }

  v4 = v2;
  v19 = MEMORY[0x277D84F90];
  result = sub_232CEA580();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2383922C0](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v13 = v7;
      ++v6;
      sub_232C5E120(v7, v8, v9, v10, v11, v12);
      v14 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
      swift_beginAccess();
      v15 = *&v13[v14];
      v16 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
      swift_beginAccess();
      v17 = *&v13[v16];
      objc_allocWithZone(MEMORY[0x277CC33E0]);

      sub_232C5D4E0(v19, v20, v15, v17);

      sub_232CEA560();
      sub_232CEA590();
      sub_232CEA5A0();
      sub_232CEA570();
    }

    while (v4 != v6);
    v3 = v19;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t sub_232C5C7A8(uint64_t a1)
{
  v2 = sub_232B26B10();
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
LABEL_9:
    v17 = sub_232C5CA58(v3);

    return v17;
  }

  v4 = v2;
  v19 = MEMORY[0x277D84F90];
  result = sub_232CEA580();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v18 = xmmword_232CF6460;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2383922C0](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v13 = v7;
      ++v6;
      sub_232C5E120(v7, v8, v9, v10, v11, v12, v18);
      sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
      v14 = swift_allocObject();
      *(v14 + 16) = v18;
      *(v14 + 32) = v19;
      *(v14 + 40) = v20;
      v15 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
      swift_beginAccess();
      v16 = *&v13[v15];
      objc_allocWithZone(MEMORY[0x277CC33D8]);
      swift_bridgeObjectRetain_n();
      sub_232C5D4E0(v19, v20, v14, v16);

      sub_232CEA560();
      sub_232CEA590();
      sub_232CEA5A0();
      sub_232CEA570();
    }

    while (v4 != v6);
    v3 = v19;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t sub_232C5C95C(uint64_t a1)
{

  v3 = sub_232C5E078(v1, sub_232B37A24, sub_232C61420);
  sub_232C5C570(&v3, sub_232BC1B70, sub_232C50F84, sub_232B37A20);
  return sub_232C5CB54(v3, sub_232B37A24, sub_232C61420, sub_232C23A44);
}

unint64_t sub_232C5CA58(uint64_t a1)
{

  v3 = sub_232C5E078(v1, sub_232B37A24, sub_232C61528);
  sub_232C5C570(&v3, sub_232BC1B70, sub_232C50F98, sub_232B37A20);
  return sub_232C5CB54(v3, sub_232B37A24, sub_232C61528, sub_232C23A44);
}

unint64_t sub_232C5CB54(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(unint64_t, uint64_t, uint64_t), uint64_t (*a4)(unint64_t))
{
  v5 = a1;
  if (!(a1 >> 62))
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v23 = a3;
    v24 = a2;
    v25 = sub_232CEA610();
    if (v25)
    {
      v26 = v25;
      v6 = v24(v25, 0);
      v23(v6 + 32, v26, v5);
      v28 = v27;

      if (v28 != v26)
      {
        __break(1u);
        goto LABEL_39;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v6 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v6 & 0x8000000000000000) == 0 && (v6 & 0x4000000000000000) == 0)
      {
        v5 = *(v6 + 16);
        v7 = v5 >> 1;
        goto LABEL_6;
      }

LABEL_39:
      v29 = sub_232CEA610();
      if (v29 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v5 = v29;
    v7 = v29 / 2;
LABEL_6:
    if (v5 + 1 < 3)
    {
      return v6;
    }

    v9 = -v7;
    v10 = 4;
    while (1)
    {
      v11 = v5 - (v10 - 3);
      if (__OFSUB__(v5, v10 - 3))
      {
        break;
      }

      v12 = v10 - 4;
      if (v10 - 4 != v11)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x2383922C0]();
          v16 = MEMORY[0x2383922C0](v5 - (v10 - 3), v6);
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12 >= v13)
          {
            goto LABEL_33;
          }

          if (v11 >= v13)
          {
            goto LABEL_34;
          }

          v14 = *(v6 + 8 * v11 + 32);
          v15 = *(v6 + 8 * v10);
          v16 = v14;
        }

        v17 = v16;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = a4(v6);
          v18 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v6 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v10);
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v10) = v17;

        if ((v6 & 0x8000000000000000) != 0 || v18)
        {
          v6 = a4(v6);
          v19 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_30:
            __break(1u);
            break;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v11 >= *(v19 + 16))
        {
          goto LABEL_35;
        }

        v21 = v19 + 8 * v11;
        v22 = *(v21 + 32);
        *(v21 + 32) = v15;
      }

      ++v10;
      if (v9 + v10 == 4)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

id sub_232C5CD7C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SpotlightOutputSinkCommonUtilities();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232C5CE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_232C5E174(a1, a2, a3, a4);
  sub_232C5E160(v5);
  *(v4 + 64) = v6;
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C5CEBC, 0, 0);
}

uint64_t sub_232C5CEBC()
{
  sub_232CE9810();
  if (MEMORY[0x238391520]())
  {
    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v2 = sub_232C5BFB0(v1);

    return sub_232C5C02C(v2, v3, v4, v5);
  }

  else
  {
    sub_232CE9A20();
    v7 = sub_232CE9A00();
    v8 = sub_232CEA1C0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      sub_232B28888(&dword_232B02000, v10, v11, "DocumentUnderstanding: File ingest disabled, skipping writing of topics to Spotlight");
      MEMORY[0x238393870](v9, -1, -1);
    }

    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];

    (*(v13 + 8))(v12, v14);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_232C5D038()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_232C5D150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_232C5E174(a1, a2, a3, a4);
  sub_232C5E160(v5);
  *(v4 + 64) = v6;
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C5D1FC, 0, 0);
}

uint64_t sub_232C5D1FC()
{
  sub_232CE9810();
  if (MEMORY[0x238391560]())
  {
    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v2 = sub_232C5BFB0(v1);

    return sub_232B27FE4(v2, v3, v4, v5);
  }

  else
  {
    sub_232CE9A20();
    v7 = sub_232CE9A00();
    v8 = sub_232CEA1C0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      sub_232B28888(&dword_232B02000, v10, v11, "DocumentUnderstanding: Non-file ingest disabled, skipping writing of topics to Spotlight");
      MEMORY[0x238393870](v9, -1, -1);
    }

    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];

    (*(v13 + 8))(v12, v14);

    v15 = v0[1];

    return v15();
  }
}

id sub_232C5D378()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding19SpotlightOutputSink_iOSOutputSink;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for SpotlightiOSFileOutputSink()) init];
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding19SpotlightOutputSink_coreSpotlightOutputSink;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for CoreSpotlightOutputSink()) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SpotlightOutputSink();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_232C5D438(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_232C5D4E0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!a2)
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_232CE9D20();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_232CE9FD0();

LABEL_6:
  v9 = [v4 initWithLabel:v7 synonyms:v8 confidence:a4];

  return v9;
}

void sub_232C5D588(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void **, int64_t, void **))
{
  v7 = a1[1];
  v8 = sub_232CEA710();
  if (v8 < v7)
  {
    v9 = v8;
    v10 = a2(v7 / 2);
    v12[0] = v11;
    v12[1] = (v7 / 2);
    sub_232C5D774(v12, v13, a1, v9, a3);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    sub_232C5D680(0, v7, 1, a1);
  }
}

void sub_232C5D680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 confidence];
        v15 = v14;
        [v13 confidence];
        v17 = v16;

        if (v15 >= v17)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v18;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_232C5D774(__objc2_class ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void **, int64_t, void **))
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_92:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v98 = (v8 + 16);
      for (i = *(v8 + 2); i >= 2; *v98 = i)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v100 = &v8[16 * i];
        v101 = *v100;
        v102 = &v98[2 * i];
        v103 = *(v102 + 1);
        sub_232C5DDB4((*a3 + 8 * *v100), (*a3 + 8 * *v102), (*a3 + 8 * v103), v9, a5);
        if (v115)
        {
          break;
        }

        if (v103 < v101)
        {
          goto LABEL_119;
        }

        if (i - 2 >= *v98)
        {
          goto LABEL_120;
        }

        *v100 = v101;
        *(v100 + 1) = v103;
        v104 = *v98 - i;
        if (*v98 < i)
        {
          goto LABEL_121;
        }

        v115 = 0;
        i = *v98 - 1;
        sub_232BC13CC(v102 + 16, v104, v102);
      }

LABEL_102:

      return;
    }

LABEL_128:
    v8 = sub_232BC13B8(v8);
    goto LABEL_94;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = &off_2789A8000;
  while (1)
  {
    v10 = v7++;
    if (v7 < v6)
    {
      v106 = v8;
      v11 = (*a3 + 8 * v10);
      v12 = 8 * v10;
      v13 = *v11;
      v8 = (v11 + 2);
      v14 = *(*a3 + 8 * v7);
      v15 = v13;
      sub_232C5E144();
      v17 = v16;
      [v5 v9[334]];
      v19 = v18;

      v108 = v10;
      v20 = v10 + 2;
      while (1)
      {
        v21 = v20;
        if (++v7 >= v6)
        {
          break;
        }

        v22 = *(v8 - 1);
        v23 = *v8;
        v24 = v22;
        sub_232C5E144();
        v26 = v25;
        [v22 v9[334]];
        v28 = v27;

        v8 += 8;
        v20 = v21 + 1;
        if (v17 < v19 == v26 >= v28)
        {
          goto LABEL_9;
        }
      }

      v7 = v6;
LABEL_9:
      if (v17 >= v19)
      {
        v8 = v106;
        v10 = v108;
      }

      else
      {
        if (v7 < v108)
        {
          goto LABEL_125;
        }

        if (v108 >= v7)
        {
          v8 = v106;
          v10 = v108;
        }

        else
        {
          if (v6 >= v21)
          {
            v29 = v21;
          }

          else
          {
            v29 = v6;
          }

          v30 = 8 * v29 - 8;
          v31 = v7;
          v32 = v108;
          v8 = v106;
          v10 = v108;
          do
          {
            if (v32 != --v31)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v34 = *(v33 + v12);
              *(v33 + v12) = *(v33 + v30);
              *(v33 + v30) = v34;
            }

            ++v32;
            v30 -= 8;
            v12 += 8;
          }

          while (v32 < v31);
        }
      }
    }

    v35 = a3[1];
    if (v7 < v35)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_124;
      }

      if (v7 - v10 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v7 < v10)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_232B36234(0, *(v8 + 2) + 1, 1, v8);
      v8 = v96;
    }

    v53 = *(v8 + 2);
    v52 = *(v8 + 3);
    v5 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      sub_232B36234(v52 > 1, v53 + 1, 1, v8);
      v8 = v97;
    }

    *(v8 + 2) = v5;
    v54 = v8 + 32;
    v55 = &v8[16 * v53 + 32];
    *v55 = v10;
    *(v55 + 1) = v7;
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v53)
    {
      while (1)
      {
        v56 = v5 - 1;
        v57 = &v54[16 * v5 - 16];
        v58 = &v8[16 * v5];
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_59:
          if (v62)
          {
            goto LABEL_110;
          }

          v74 = *v58;
          v73 = *(v58 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_113;
          }

          v78 = *(v57 + 1);
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_118;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v5 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v5 < 2)
        {
          goto LABEL_112;
        }

        v81 = *v58;
        v80 = *(v58 + 1);
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_74:
        if (v77)
        {
          goto LABEL_115;
        }

        v83 = *v57;
        v82 = *(v57 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_117;
        }

        if (v84 < v76)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v56 - 1 >= v5)
        {
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v9 = v8;
        v88 = &v54[16 * v56 - 16];
        v89 = *v88;
        v90 = v56;
        v8 = &v54[16 * v56];
        v91 = *(v8 + 1);
        sub_232C5DDB4((*a3 + 8 * *v88), (*a3 + 8 * *v8), (*a3 + 8 * v91), v112, a5);
        if (v115)
        {
          goto LABEL_102;
        }

        if (v91 < v89)
        {
          goto LABEL_105;
        }

        v92 = v7;
        v93 = v54;
        v94 = v9[2];
        if (v90 > v94)
        {
          goto LABEL_106;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        if (v90 >= v94)
        {
          goto LABEL_107;
        }

        v115 = 0;
        v5 = v94 - 1;
        sub_232BC13CC(v8 + 16, v94 - 1 - v90, v8);
        v8 = v9;
        v9[2] = (v94 - 1);
        v95 = v94 > 2;
        v9 = &off_2789A8000;
        v54 = v93;
        v7 = v92;
        if (!v95)
        {
          goto LABEL_88;
        }
      }

      v63 = &v54[16 * v5];
      v64 = *(v63 - 8);
      v65 = *(v63 - 7);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 6);
      v67 = *(v63 - 5);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = *(v58 + 1);
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = *(v57 + 1);
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_122;
        }

        if (v61 < v87)
        {
          v56 = v5 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_92;
    }
  }

  v36 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_126;
  }

  if (v36 >= v35)
  {
    v36 = a3[1];
  }

  if (v36 < v10)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v7 == v36)
  {
    goto LABEL_39;
  }

  v107 = v8;
  v109 = v10;
  v37 = *a3;
  v38 = *a3 + 8 * v7 - 8;
  v39 = v10 - v7;
  v111 = v36;
LABEL_32:
  v40 = *(v37 + 8 * v7);
  v41 = v39;
  v42 = v38;
  while (1)
  {
    v43 = *v42;
    v44 = v40;
    v45 = v43;
    sub_232C5E144();
    v47 = v46;
    [v43 v9[334]];
    v49 = v48;

    if (v47 >= v49)
    {
LABEL_37:
      ++v7;
      v38 += 8;
      --v39;
      if (v7 == v111)
      {
        v7 = v111;
        v8 = v107;
        v10 = v109;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v37)
    {
      break;
    }

    v50 = *v42;
    v40 = *(v42 + 8);
    *v42 = v40;
    *(v42 + 8) = v50;
    v42 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_37;
    }
  }

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
}