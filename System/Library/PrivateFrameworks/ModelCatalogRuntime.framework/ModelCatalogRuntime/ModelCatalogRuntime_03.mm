uint64_t sub_22D88D930(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22D8580D8(&qword_27DA0DC50, &qword_22D8B4AD8);
  result = sub_22D8B1DFC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v33 = v1;
  v34 = v3;
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
        v37 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_22D88C8E8(0, (v31 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v33;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v37 = (v10 - 1) & v10;
LABEL_12:
    v16 = v13 | (v6 << 6);
    v17 = sub_22D8B12BC();
    v36 = &v32;
    v18 = *(v17 - 8);
    MEMORY[0x28223BE20](v17);
    v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *(v3 + 48);
    v22 = *(v18 + 72);
    v35 = *(v18 + 32);
    v35(v20, v21 + v22 * v16, v17);
    sub_22D84D680(&qword_281458778, MEMORY[0x282221D00], MEMORY[0x282221D28]);
    result = sub_22D8B196C();
    v23 = -1 << *(v5 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = (v35)(*(v5 + 48) + v26 * v22, v20, v17);
    ++*(v5 + 16);
    v10 = v37;
    v3 = v34;
    if (!v37)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v12 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22D88DC5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22D8580D8(&qword_27DA0DBE0, &qword_22D8B4A48);
  result = sub_22D8B1DFC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v33 = v1;
  v34 = v3;
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
        v37 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_22D88C8E8(0, (v31 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v33;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v37 = (v10 - 1) & v10;
LABEL_12:
    v16 = v13 | (v6 << 6);
    v17 = sub_22D8B0C6C();
    v36 = &v32;
    v18 = *(v17 - 8);
    MEMORY[0x28223BE20](v17);
    v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *(v3 + 48);
    v22 = *(v18 + 72);
    v35 = *(v18 + 32);
    v35(v20, v21 + v22 * v16, v17);
    sub_22D84D680(&qword_281458798, MEMORY[0x282221988], MEMORY[0x2822219A0]);
    result = sub_22D8B196C();
    v23 = -1 << *(v5 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = (v35)(*(v5 + 48) + v26 * v22, v20, v17);
    ++*(v5 + 16);
    v10 = v37;
    v3 = v34;
    if (!v37)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v12 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22D88DF88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22D8580D8(&qword_27DA0DBF0, &unk_22D8B4A58);
  result = sub_22D8B1DFC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v33 = v1;
  v34 = v3;
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
        v37 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_22D88C8E8(0, (v31 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v33;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v37 = (v10 - 1) & v10;
LABEL_12:
    v16 = v13 | (v6 << 6);
    v17 = sub_22D8B0EBC();
    v36 = &v32;
    v18 = *(v17 - 8);
    MEMORY[0x28223BE20](v17);
    v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *(v3 + 48);
    v22 = *(v18 + 72);
    v35 = *(v18 + 32);
    v35(v20, v21 + v22 * v16, v17);
    sub_22D84D680(&qword_281459208, MEMORY[0x282221A90], MEMORY[0x282221AB0]);
    result = sub_22D8B196C();
    v23 = -1 << *(v5 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = (v35)(*(v5 + 48) + v26 * v22, v20, v17);
    ++*(v5 + 16);
    v10 = v37;
    v3 = v34;
    if (!v37)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v12 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22D88E2B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22D8580D8(&qword_27DA0DBE8, &qword_22D8B4A50);
  result = sub_22D8B1DFC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v33 = v1;
  v34 = v3;
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
        v37 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_22D88C8E8(0, (v31 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v33;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v37 = (v10 - 1) & v10;
LABEL_12:
    v16 = v13 | (v6 << 6);
    v17 = sub_22D8B0D8C();
    v36 = &v32;
    v18 = *(v17 - 8);
    MEMORY[0x28223BE20](v17);
    v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *(v3 + 48);
    v22 = *(v18 + 72);
    v35 = *(v18 + 32);
    v35(v20, v21 + v22 * v16, v17);
    sub_22D84D680(&qword_281459218, MEMORY[0x282221A08], MEMORY[0x282221A30]);
    result = sub_22D8B196C();
    v23 = -1 << *(v5 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = (v35)(*(v5 + 48) + v26 * v22, v20, v17);
    ++*(v5 + 16);
    v10 = v37;
    v3 = v34;
    if (!v37)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v12 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22D88E5E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22D8580D8(&qword_27DA0DBC8, &unk_22D8B4A10);
  result = sub_22D8B1DFC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v33 = v1;
  v34 = v3;
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
        v37 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_22D88C8E8(0, (v31 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v33;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v37 = (v10 - 1) & v10;
LABEL_12:
    v16 = v13 | (v6 << 6);
    v17 = sub_22D8B0F6C();
    v36 = &v32;
    v18 = *(v17 - 8);
    MEMORY[0x28223BE20](v17);
    v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *(v3 + 48);
    v22 = *(v18 + 72);
    v35 = *(v18 + 32);
    v35(v20, v21 + v22 * v16, v17);
    sub_22D84D680(&qword_2814591F8, MEMORY[0x282221B10], MEMORY[0x282221B20]);
    result = sub_22D8B196C();
    v23 = -1 << *(v5 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = (v35)(*(v5 + 48) + v26 * v22, v20, v17);
    ++*(v5 + 16);
    v10 = v37;
    v3 = v34;
    if (!v37)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v12 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_22D88E90C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a6)
  {
    sub_22D88D450(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_22D88F2B4();
      goto LABEL_21;
    }

    sub_22D88F76C(v12 + 1);
  }

  v14 = *v6;
  sub_22D8B201C();
  sub_22D8B1A6C();
  sub_22D8B1A6C();
  v15 = sub_22D8B205C();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = v15 & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == result && v20[1] == a2;
      if (v23 || (sub_22D8B1F8C() & 1) != 0)
      {
        v24 = v21 == a3 && v22 == a4;
        if (v24 || (sub_22D8B1F8C() & 1) != 0)
        {
          goto LABEL_24;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_21:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = result;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return;
  }

  __break(1u);
LABEL_24:
  sub_22D8B1FAC();
  __break(1u);
}

uint64_t sub_22D88EAD4(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22D88D930(v5 + 1);
      goto LABEL_8;
    }

    if (v6 <= v5)
    {
      sub_22D88FC00(v5 + 1);
LABEL_8:
      v23 = v3;
      v7 = *v3;
      v8 = sub_22D8B12BC();
      sub_22D84D680(&qword_281458778, MEMORY[0x282221D00], MEMORY[0x282221D28]);
      v9 = sub_22D8B196C();
      v10 = ~(-1 << *(v7 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          break;
        }

        v11 = *(v8 - 8);
        MEMORY[0x28223BE20](v9);
        v13 = &v23 - v12;
        (*(v11 + 16))(&v23 - v12, *(v7 + 48) + *(v14 + 72) * a2, v8);
        sub_22D84D680(&qword_281458770, MEMORY[0x282221D00], MEMORY[0x282221D30]);
        v15 = sub_22D8B19AC();
        (*(v11 + 8))(v13, v8);
        if (v15)
        {
          goto LABEL_16;
        }

        v9 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_22D88F558();
  }

LABEL_13:
  v16 = *v3;
  *(v16 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = *(v16 + 48);
  v18 = sub_22D8B12BC();
  result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * a2, v24, v18);
  v20 = *(v16 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_22D8B1FAC();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v22;
  }

  return result;
}

uint64_t sub_22D88ED74(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22D88DC5C(v5 + 1);
      goto LABEL_8;
    }

    if (v6 <= v5)
    {
      sub_22D88FF14(v5 + 1);
LABEL_8:
      v23 = v3;
      v7 = *v3;
      v8 = sub_22D8B0C6C();
      sub_22D84D680(&qword_281458798, MEMORY[0x282221988], MEMORY[0x2822219A0]);
      v9 = sub_22D8B196C();
      v10 = ~(-1 << *(v7 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          break;
        }

        v11 = *(v8 - 8);
        MEMORY[0x28223BE20](v9);
        v13 = &v23 - v12;
        (*(v11 + 16))(&v23 - v12, *(v7 + 48) + *(v14 + 72) * a2, v8);
        sub_22D84D680(&qword_281458790, MEMORY[0x282221988], MEMORY[0x2822219A8]);
        v15 = sub_22D8B19AC();
        (*(v11 + 8))(v13, v8);
        if (v15)
        {
          goto LABEL_16;
        }

        v9 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_22D88F558();
  }

LABEL_13:
  v16 = *v3;
  *(v16 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = *(v16 + 48);
  v18 = sub_22D8B0C6C();
  result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * a2, v24, v18);
  v20 = *(v16 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_22D8B1FAC();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v22;
  }

  return result;
}

uint64_t sub_22D88F014(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22D88E5E0(v5 + 1);
      goto LABEL_8;
    }

    if (v6 <= v5)
    {
      sub_22D890850(v5 + 1);
LABEL_8:
      v23 = v3;
      v7 = *v3;
      v8 = sub_22D8B0F6C();
      sub_22D84D680(&qword_2814591F8, MEMORY[0x282221B10], MEMORY[0x282221B20]);
      v9 = sub_22D8B196C();
      v10 = ~(-1 << *(v7 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          break;
        }

        v11 = *(v8 - 8);
        MEMORY[0x28223BE20](v9);
        v13 = &v23 - v12;
        (*(v11 + 16))(&v23 - v12, *(v7 + 48) + *(v14 + 72) * a2, v8);
        sub_22D84D680(&qword_2814591F0, MEMORY[0x282221B10], MEMORY[0x282221B28]);
        v15 = sub_22D8B19AC();
        (*(v11 + 8))(v13, v8);
        if (v15)
        {
          goto LABEL_16;
        }

        v9 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_22D88F558();
  }

LABEL_13:
  v16 = *v3;
  *(v16 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = *(v16 + 48);
  v18 = sub_22D8B0F6C();
  result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * a2, v24, v18);
  v20 = *(v16 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_22D8B1FAC();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v22;
  }

  return result;
}

void sub_22D88F2B4()
{
  v1 = v0;
  sub_22D8580D8(&qword_27DA0DC20, &qword_22D8B4A98);
  v2 = *v0;
  v3 = sub_22D8B1DEC();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

void sub_22D88F41C()
{
  v1 = v0;
  sub_22D8580D8(&qword_27DA0D908, &qword_22D8B4770);
  v2 = *v0;
  v3 = sub_22D8B1DEC();
  if (v2[2])
  {
    sub_22D84E10C();
    v6 = (v5 + 63) >> 6;
    if (v3 != v2 || v4 >= &v2[v6 + 7])
    {
      memmove(v4, v2 + 7, 8 * v6);
    }

    v8 = 0;
    *(v3 + 16) = v2[2];
    sub_22D84E10C();
    sub_22D84DFD8();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_15:
        v18 = v14 | (v8 << 6);
        v19 = (v2[6] + 16 * v18);
        v20 = v19[1];
        v21 = (*(v3 + 48) + 16 * v18);
        *v21 = *v19;
        v21[1] = v20;
      }

      while (v11);
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
        goto LABEL_17;
      }

      ++v15;
      if (v2[v8 + 7])
      {
        sub_22D84E214();
        v11 = v17 & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v3;
  }
}

void sub_22D88F558()
{
  sub_22D851698();
  v31 = v1;
  v2 = v0;
  sub_22D8580D8(v3, v4);
  v5 = *v0;
  v6 = sub_22D8B1DEC();
  if (v5[2])
  {
    v30 = v2;
    sub_22D84E10C();
    v9 = (v8 + 63) >> 6;
    if (v6 != v5 || v7 >= &v5[v9 + 7])
    {
      memmove(v7, v5 + 7, 8 * v9);
    }

    v11 = 0;
    v12 = v5[2];
    v32 = v6;
    *(v6 + 16) = v12;
    sub_22D84E10C();
    sub_22D84DFD8();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_15:
        v22 = v18 | (v11 << 6);
        v23 = v31(0);
        v24 = *(v23 - 8);
        MEMORY[0x28223BE20](v23);
        v26 = &v29 - v25;
        v28 = *(v27 + 72) * v22;
        (*(v24 + 16))(&v29 - v25, v5[6] + v28, v23);
        (*(v24 + 32))(*(v32 + 48) + v28, v26, v23);
      }

      while (v15);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v2 = v30;
        v6 = v32;
        goto LABEL_19;
      }

      ++v19;
      if (v5[v11 + 7])
      {
        sub_22D84E214();
        v15 = v21 & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v2 = v6;
    sub_22D84D1C0();
  }
}

uint64_t sub_22D88F76C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22D8580D8(&qword_27DA0DC20, &qword_22D8B4A98);
  result = sub_22D8B1DFC();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        sub_22D8B201C();

        sub_22D8B1A6C();
        sub_22D8B1A6C();
        result = sub_22D8B205C();
        v21 = -1 << *(v5 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (*(v5 + 48) + 32 * v24);
        *v29 = v17;
        v29[1] = v18;
        v29[2] = v19;
        v29[3] = v20;
        ++*(v5 + 16);
        v3 = v31;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
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
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v30;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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

uint64_t sub_22D88F9CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22D8580D8(&qword_27DA0D908, &qword_22D8B4770);
  result = sub_22D8B1DFC();
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
        sub_22D8B201C();

        sub_22D8B1A6C();
        result = sub_22D8B205C();
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

uint64_t sub_22D88FC00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22D8580D8(&qword_27DA0DC50, &qword_22D8B4AD8);
  result = sub_22D8B1DFC();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v36 = result;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v38 = (v10 - 1) & v10;
LABEL_12:
        v16 = v13 | (v6 << 6);
        v17 = sub_22D8B12BC();
        v37 = &v33;
        v18 = *(v17 - 8);
        MEMORY[0x28223BE20](v17);
        v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = v21;
        v23 = *(v3 + 48);
        v24 = *(v22 + 72);
        (*(v18 + 16))(v20, v23 + v24 * v16, v17);
        v5 = v36;
        sub_22D84D680(&qword_281458778, MEMORY[0x282221D00], MEMORY[0x282221D28]);
        result = sub_22D8B196C();
        v25 = -1 << *(v5 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        result = (*(v18 + 32))(*(v5 + 48) + v28 * v24, v20, v17);
        ++*(v5 + 16);
        v10 = v38;
        v3 = v35;
        if (!v38)
        {
          goto LABEL_7;
        }
      }

      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v34;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v38 = (v15 - 1) & v15;
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

uint64_t sub_22D88FF14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22D8580D8(&qword_27DA0DBE0, &qword_22D8B4A48);
  result = sub_22D8B1DFC();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v36 = result;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v38 = (v10 - 1) & v10;
LABEL_12:
        v16 = v13 | (v6 << 6);
        v17 = sub_22D8B0C6C();
        v37 = &v33;
        v18 = *(v17 - 8);
        MEMORY[0x28223BE20](v17);
        v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = v21;
        v23 = *(v3 + 48);
        v24 = *(v22 + 72);
        (*(v18 + 16))(v20, v23 + v24 * v16, v17);
        v5 = v36;
        sub_22D84D680(&qword_281458798, MEMORY[0x282221988], MEMORY[0x2822219A0]);
        result = sub_22D8B196C();
        v25 = -1 << *(v5 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        result = (*(v18 + 32))(*(v5 + 48) + v28 * v24, v20, v17);
        ++*(v5 + 16);
        v10 = v38;
        v3 = v35;
        if (!v38)
        {
          goto LABEL_7;
        }
      }

      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v34;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v38 = (v15 - 1) & v15;
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

uint64_t sub_22D890228(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22D8580D8(&qword_27DA0DBF0, &unk_22D8B4A58);
  result = sub_22D8B1DFC();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v36 = result;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v38 = (v10 - 1) & v10;
LABEL_12:
        v16 = v13 | (v6 << 6);
        v17 = sub_22D8B0EBC();
        v37 = &v33;
        v18 = *(v17 - 8);
        MEMORY[0x28223BE20](v17);
        v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = v21;
        v23 = *(v3 + 48);
        v24 = *(v22 + 72);
        (*(v18 + 16))(v20, v23 + v24 * v16, v17);
        v5 = v36;
        sub_22D84D680(&qword_281459208, MEMORY[0x282221A90], MEMORY[0x282221AB0]);
        result = sub_22D8B196C();
        v25 = -1 << *(v5 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        result = (*(v18 + 32))(*(v5 + 48) + v28 * v24, v20, v17);
        ++*(v5 + 16);
        v10 = v38;
        v3 = v35;
        if (!v38)
        {
          goto LABEL_7;
        }
      }

      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v34;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v38 = (v15 - 1) & v15;
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

uint64_t sub_22D89053C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22D8580D8(&qword_27DA0DBE8, &qword_22D8B4A50);
  result = sub_22D8B1DFC();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v36 = result;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v38 = (v10 - 1) & v10;
LABEL_12:
        v16 = v13 | (v6 << 6);
        v17 = sub_22D8B0D8C();
        v37 = &v33;
        v18 = *(v17 - 8);
        MEMORY[0x28223BE20](v17);
        v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = v21;
        v23 = *(v3 + 48);
        v24 = *(v22 + 72);
        (*(v18 + 16))(v20, v23 + v24 * v16, v17);
        v5 = v36;
        sub_22D84D680(&qword_281459218, MEMORY[0x282221A08], MEMORY[0x282221A30]);
        result = sub_22D8B196C();
        v25 = -1 << *(v5 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        result = (*(v18 + 32))(*(v5 + 48) + v28 * v24, v20, v17);
        ++*(v5 + 16);
        v10 = v38;
        v3 = v35;
        if (!v38)
        {
          goto LABEL_7;
        }
      }

      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v34;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v38 = (v15 - 1) & v15;
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

uint64_t sub_22D890850(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22D8580D8(&qword_27DA0DBC8, &unk_22D8B4A10);
  result = sub_22D8B1DFC();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v36 = result;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v38 = (v10 - 1) & v10;
LABEL_12:
        v16 = v13 | (v6 << 6);
        v17 = sub_22D8B0F6C();
        v37 = &v33;
        v18 = *(v17 - 8);
        MEMORY[0x28223BE20](v17);
        v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = v21;
        v23 = *(v3 + 48);
        v24 = *(v22 + 72);
        (*(v18 + 16))(v20, v23 + v24 * v16, v17);
        v5 = v36;
        sub_22D84D680(&qword_2814591F8, MEMORY[0x282221B10], MEMORY[0x282221B20]);
        result = sub_22D8B196C();
        v25 = -1 << *(v5 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        result = (*(v18 + 32))(*(v5 + 48) + v28 * v24, v20, v17);
        ++*(v5 + 16);
        v10 = v38;
        v3 = v35;
        if (!v38)
        {
          goto LABEL_7;
        }
      }

      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v34;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v38 = (v15 - 1) & v15;
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

uint64_t sub_22D890B64(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2318D48F0](v3);
  if (v3)
  {
    v5 = a2 + 56;
    do
    {

      sub_22D8B1A6C();
      sub_22D8B1A6C();

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

id sub_22D890C08(void *a1)
{
  sub_22D84E124(a1, a1[3]);
  sub_22D869100(0xD000000000000010, 0x800000022D8B8BA0, 1, sub_22D88A9B8, 0);
  sub_22D84E124(a1, a1[3]);
  sub_22D869100(0xD000000000000010, 0x800000022D8B8BC0, 1, sub_22D88AB20, 0);
  sub_22D84E124(a1, a1[3]);
  sub_22D869100(0x63697665645F6D62, 0xED00006F666E4965, 1, sub_22D88AD48, 0);
  sub_22D84E124(a1, a1[3]);
  sub_22D869100(0x7079426D675F6D62, 0xEB00000000737361, 1, sub_22D88AED8, 0);
  sub_22D84E124(a1, a1[3]);
  sub_22D869100(0x44726573755F6D62, 0xEF73746C75616665, 2, sub_22D88B194, 0);
  sub_22D84E124(a1, a1[3]);
  return sub_22D869100(0xD000000000000013, 0x800000022D8B8BE0, 1, sub_22D88B550, 0);
}

uint64_t sub_22D890E88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22D852220(a1, a2, a3, a4);
  sub_22D84C740();
  (*(v6 + 16))(v4, v5);
  return v4;
}

unint64_t sub_22D890F4C()
{
  result = qword_27DA0DB98;
  if (!qword_27DA0DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0DB98);
  }

  return result;
}

uint64_t sub_22D890FA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22D852220(a1, a2, a3, a4);
  sub_22D84C740();
  (*(v6 + 32))(v4, v5);
  return v4;
}

unint64_t sub_22D890FF4()
{
  result = qword_27DA0DBA0;
  if (!qword_27DA0DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0DBA0);
  }

  return result;
}

uint64_t sub_22D891090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22D891110(uint64_t a1)
{
  sub_22D8B12BC();
  if (v1 <= 0x3F)
  {
    sub_22D8911AC();
    if (v2 <= 0x3F)
    {
      sub_22D8911FC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22D8911AC()
{
  if (!qword_2814584D8)
  {
    v0 = sub_22D8B1B2C();
    if (!v1)
    {
      atomic_store(v0, &qword_2814584D8);
    }
  }
}

void sub_22D8911FC(uint64_t a1)
{
  if (!qword_2814587B0)
  {
    sub_22D8B083C();
    v1 = sub_22D8B1D7C();
    if (!v2)
    {
      atomic_store(v1, &qword_2814587B0);
    }
  }
}

__n128 sub_22D891254(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22D891268(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_22D8912A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionEvaluator.EvaluationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionEvaluator.EvaluationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22D89147C()
{
  result = qword_27DA0DBB0;
  if (!qword_27DA0DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0DBB0);
  }

  return result;
}

unint64_t sub_22D8914D0()
{
  result = qword_27DA0DC18;
  if (!qword_27DA0DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0DC18);
  }

  return result;
}

uint64_t sub_22D89154C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22D8915C4(unint64_t *a1)
{
  v2 = MEMORY[0x282221D00];
  v3 = MEMORY[0x282221D28];

  return sub_22D84D680(a1, v2, v3);
}

void *sub_22D8915E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22D88C4B4(v5, a2, a3, a4, v4);
}

void static Daemon.main()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13 = a1;
  v14 = a2;
  v6 = sub_22D8B1C9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D8B1CEC();
  MEMORY[0x28223BE20](v10);
  static Daemon.enterSandbox()(a1, a2);
  sub_22D891800();
  v15 = MEMORY[0x277D84F90];
  sub_22D891844();
  sub_22D8580D8(&qword_27DA0DC60, qword_22D8B4AF0);
  sub_22D89189C();
  sub_22D8B1DAC();
  (*(v7 + 104))(v9, *MEMORY[0x277D85268], v6);
  v11 = sub_22D8B1CFC();
  dispatch_activate(v11);
  v12 = MEMORY[0x2318D49C0]();
  sub_22D891900(v11, v3, v13, v14);
  objc_autoreleasePoolPop(v12);
  dispatch_main();
}

unint64_t sub_22D891800()
{
  result = qword_281458890;
  if (!qword_281458890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281458890);
  }

  return result;
}

unint64_t sub_22D891844()
{
  result = qword_281458898;
  if (!qword_281458898)
  {
    sub_22D8B1CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458898);
  }

  return result;
}

unint64_t sub_22D89189C()
{
  result = qword_281458908;
  if (!qword_281458908)
  {
    sub_22D85EE94(&qword_27DA0DC60, qword_22D8B4AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458908);
  }

  return result;
}

uint64_t sub_22D891900(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a2;
  v8[5] = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22D891BC0;
  *(v9 + 24) = v8;
  v13[4] = sub_22D891BCC;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_22D891BF4;
  v13[3] = &unk_2840E4038;
  v10 = _Block_copy(v13);
  v11 = a1;

  dispatch_async_and_wait(v11, v10);
  _Block_release(v10);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D891AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2814589E0 != -1)
  {
    swift_once();
  }

  v7 = sub_22D8B178C();
  sub_22D84C6FC(v7, qword_281459298);
  v8 = sub_22D8B176C();
  v9 = sub_22D8B1C6C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22D84A000, v8, v9, "Starting modelcatalogd", v10, 2u);
    MEMORY[0x2318D50E0](v10, -1, -1);
  }

  return (*(a4 + 24))(a2, a3, a4);
}

uint64_t static Daemon.enterSandbox()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(a1);
  sub_22D8B1A5C();

  v2 = _set_user_dir_suffix();

  if (!v2)
  {
    _exit(5);
  }

  v3 = static Daemon.confstr(_:)(65537);
  if (!v4 || (String.realpath.getter(v3, v4), v6 = v5, , !v6))
  {
    _exit(3);
  }
}

uint64_t static Daemon.confstr(_:)(uint64_t a1)
{
  sub_22D8B067C();
  swift_allocObject();
  v4 = 0x40000000000;
  v5 = sub_22D8B064C();
  sub_22D89228C(&v4, 0);
  v5 |= 0x4000000000000000uLL;
  v2 = sub_22D891E40(&v4, a1);
  sub_22D877894(v4, v5);
  return v2;
}

uint64_t sub_22D891D60@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = sub_22D8B1A8C();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t String.realpath.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_22D8B1A5C();
  v3 = realpath_DARWIN_EXTSN((v2 + 32), 0);

  if (!v3)
  {
    return 0;
  }

  v4 = sub_22D8B1A8C();
  MEMORY[0x2318D50E0](v3, -1, -1);
  return v4;
}

uint64_t sub_22D891E40(uint64_t *a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = v2;
  v6 = a2;
  switch(v3 >> 62)
  {
    case 1uLL:
      v12 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22D877894(v4, v3);
      *a1 = xmmword_22D8B3EA0;
      sub_22D877894(0, 0xC000000000000000);
      v13 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v4)
      {
        goto LABEL_23;
      }

      if (sub_22D8B063C() && __OFSUB__(v4, sub_22D8B066C()))
      {
        goto LABEL_24;
      }

      sub_22D8B067C();
      swift_allocObject();
      v14 = sub_22D8B062C();

      v12 = v14;
LABEL_16:
      if (v13 < v4)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v5 = sub_22D8921E0(v4, v4 >> 32, v12, v6);

      v11 = v12 | 0x4000000000000000;
      if (v2)
      {
        *a1 = v4;
        goto LABEL_19;
      }

      *a1 = v4;
      a1[1] = v11;
      break;
    case 2uLL:

      sub_22D877894(v4, v3);
      v18 = v4;
      v19 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_22D8B3EA0;
      sub_22D877894(0, 0xC000000000000000);
      sub_22D8B074C();
      v9 = v19;
      v10 = sub_22D8921E0(*(v18 + 16), *(v18 + 24), v19, v6);
      if (v2)
      {
        v11 = v19 | 0x8000000000000000;
        *a1 = v18;
LABEL_19:
        a1[1] = v11;
      }

      else
      {
        v5 = v10;
        *a1 = v18;
        a1[1] = v9 | 0x8000000000000000;
      }

      break;
    case 3uLL:
      memset(v17, 0, 15);
      sub_22D891D60(v17, a2, &v18);
      if (!v2)
      {
        return v18;
      }

      return v5;
    default:
      v5 = v4 >> 40;
      v16 = a2;
      sub_22D877894(v4, v3);
      *v17 = v4;
      *&v17[8] = v3;
      v17[10] = BYTE2(v3);
      v17[11] = BYTE3(v3);
      v17[12] = BYTE4(v3);
      v17[13] = BYTE5(v3);
      v17[14] = BYTE6(v3);
      sub_22D891D60(v17, v16, &v18);
      if (!v2)
      {
        v5 = v18;
      }

      v8 = *&v17[8] | ((*&v17[12] | (v17[14] << 16)) << 32);
      *a1 = *v17;
      a1[1] = v8;
      return v5;
  }

  return v5;
}

uint64_t sub_22D8921E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_22D8B063C();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = sub_22D8B066C();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_22D8B065C();
  result = sub_22D891D60((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_22D89228C(int *a1, int a2)
{
  result = sub_22D8B076C();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_22D8B063C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_22D8B066C();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_22D8B065C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t static ModelCatalogAgent.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60(&qword_2814589E0);
  }

  v2 = sub_22D8B178C();
  v3 = sub_22D84C6FC(v2, qword_281459298);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static ModelCatalogAgent.start()()
{
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60(&qword_2814589E0);
  }

  v0 = sub_22D8B178C();
  sub_22D84C6FC(v0, qword_281459298);
  v1 = sub_22D8B176C();
  v2 = sub_22D8B1C6C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22D84A000, v1, v2, "starting ModelCatalogAgent", v3, 2u);
    MEMORY[0x2318D50E0](v3, -1, -1);
  }

  if (qword_281458AF0 != -1)
  {
    swift_once();
  }

  sub_22D85BDA8();
  type metadata accessor for SubscriptionEvaluationXPCServiceServer();
  sub_22D892514();
  return sub_22D8B136C();
}

unint64_t sub_22D892514()
{
  result = qword_281458A88;
  if (!qword_281458A88)
  {
    type metadata accessor for SubscriptionEvaluationXPCServiceServer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458A88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelCatalogAgent(_BYTE *result, int a2, int a3)
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

uint64_t sub_22D892658()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_281459248 = result;
  return result;
}

uint64_t sub_22D89268C()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_281459250 = result;
  return result;
}

uint64_t sub_22D8926C0()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_281459258 = result;
  return result;
}

uint64_t sub_22D8926F4()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_281459240 = result;
  return result;
}

uint64_t sub_22D892728()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_281459260 = result;
  return result;
}

uint64_t sub_22D89275C()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_27DA0EB40 = result;
  return result;
}

uint64_t sub_22D892790()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_281459288 = result;
  return result;
}

uint64_t sub_22D8927C4()
{
  sub_22D8927F8();
  result = sub_22D8B19CC();
  qword_281459290 = result;
  return result;
}

uint64_t sub_22D892804()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22D8B1A2C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22D892B40();
  v1 = objc_opt_self();
  v2 = sub_22D8B1ACC();

  v26[0] = 0;
  v3 = [v1 dataWithJSONObject:v2 options:0 error:v26];

  v4 = v26[0];
  if (!v3)
  {
    v11 = v4;
    v12 = sub_22D8B069C();

    swift_willThrow();
    if (qword_281458500 != -1)
    {
      sub_22D892BA4(&qword_281458500);
    }

    v13 = sub_22D8B178C();
    sub_22D84C6FC(v13, qword_281459270);
    v14 = v12;
    v15 = sub_22D8B176C();
    v16 = sub_22D8B1C4C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_22D84A000, v15, v16, "allAneArchitectureTypesJson could not serialize JSON array with error: %@", v17, 0xCu);
      sub_22D862C98(v18);
      MEMORY[0x2318D50E0](v18, -1, -1);
      MEMORY[0x2318D50E0](v17, -1, -1);
    }

    return 23899;
  }

  v5 = sub_22D8B07BC();
  v7 = v6;

  sub_22D8B1A1C();
  v8 = sub_22D8B1A0C();
  if (!v9)
  {
    if (qword_281458500 != -1)
    {
      sub_22D892BA4(&qword_281458500);
    }

    v21 = sub_22D8B178C();
    sub_22D84C6FC(v21, qword_281459270);
    v22 = sub_22D8B176C();
    v23 = sub_22D8B1C4C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22D84A000, v22, v23, "allAneArchitectureTypesJson could not create string from json data", v24, 2u);
      MEMORY[0x2318D50E0](v24, -1, -1);
    }

    sub_22D877894(v5, v7);
    return 23899;
  }

  v10 = v8;
  sub_22D877894(v5, v7);
  return v10;
}

void *sub_22D892B40()
{
  sub_22D894218(&unk_2840E2C98);
  sub_22D894218(&unk_2840E2CC8);
  sub_22D894218(&unk_2840E2CF8);
  return &unk_2840E2B98;
}

uint64_t sub_22D892BA4(uint64_t a1)
{

  return swift_once();
}

void sub_22D892BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v4)
  {
LABEL_14:

    return;
  }

  v18 = MEMORY[0x277D84F90];
  sub_22D87B9A8(0, v4 & ~(v4 >> 63), 0);
  if (a2 >= a1 && (v4 & 0x8000000000000000) == 0)
  {
    v8 = a1 + 4;
    while ((a1 & 0x8000000000000000) == 0)
    {
      if ((v8 - 4) >= *(*a3 + 16))
      {
        goto LABEL_17;
      }

      if ((v8 - 4) >= *(a4 + 16))
      {
        goto LABEL_18;
      }

      v9 = *(a4 + 8 * v8);
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      v10 = *(*a3 + 8 * v8);
      if (v9 >= *(v10 + 16))
      {
        goto LABEL_20;
      }

      v11 = v10 + 16 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      v15 = *(v18 + 16);
      v14 = *(v18 + 24);

      if (v15 >= v14 >> 1)
      {
        sub_22D87B9A8((v14 > 1), v15 + 1, 1);
      }

      *(v18 + 16) = v15 + 1;
      v16 = v18 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      ++v8;
      if (!--v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_22D892D48(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_22D88C498(*(a1 + 16), 0);
  sub_22D8AF198();
  v4 = sub_22D8B12BC();
  sub_22D84C3FC(v4);
  sub_22D84D24C();
  v6 = sub_22D8AE6F8(&v8, v1 + v5, v3, a1);
  sub_22D879544(v8);
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

void *sub_22D892E04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22D88C428(*(a1 + 16), 0);
  sub_22D8AE98C(&v7, v3 + 4, v2, a1);
  v5 = v4;
  sub_22D879544(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_22D892E94()
{
  sub_22D851698();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22D8AF220();
  v9 = sub_22D8580D8(v7, v8);
  sub_22D84C3FC(v9);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v10);
  sub_22D8AF88C();
  v11 = sub_22D8AF574();
  sub_22D8AECE4(v11, v12, &qword_27DA0D628, "l\x1B");
  v13 = sub_22D8B1B9C();
  v14 = sub_22D8AF22C();
  v16 = sub_22D84D0C0(v14, v15, v13);

  if (v16 == 1)
  {
    sub_22D84D014(v0, &qword_27DA0D628, "l\x1B");
  }

  else
  {
    sub_22D8B1B8C();
    sub_22D84C5C4();
    (*(v17 + 8))(v0, v13);
  }

  v18 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_22D84D014(v4, &qword_27DA0D628, "l\x1B");
    sub_22D8AFDF0();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_22D8B1B3C();
  sub_22D8AF1A4();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22D8B1A5C();

  sub_22D8AFDF0();
  swift_task_create();
  sub_22D8AF054();

  sub_22D84D014(v4, &qword_27DA0D628, "l\x1B");

LABEL_9:
  sub_22D84D1C0();
}

void sub_22D8930E4()
{
  sub_22D851698();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_22D8AF790();
  v11 = sub_22D8580D8(v9, v10);
  sub_22D84C3FC(v11);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v12);
  sub_22D8AF88C();
  sub_22D8AECE4(v6, v0, &qword_27DA0D628, "l\x1B");
  v13 = sub_22D8B1B9C();
  v14 = sub_22D8AF22C();
  v16 = sub_22D84D0C0(v14, v15, v13);

  if (v16 == 1)
  {
    sub_22D84D014(v0, &qword_27DA0D628, "l\x1B");
  }

  else
  {
    sub_22D8B1B8C();
    sub_22D84C5C4();
    (*(v17 + 8))(v0, v13);
  }

  v18 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_22D84D014(v6, &qword_27DA0D628, "l\x1B");
    v20 = swift_allocObject();
    *(v20 + 16) = v4;
    *(v20 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_22D8B1B3C();
  sub_22D8AF1A4();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22D8AFA18();
  sub_22D8B1A5C();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v2;

  swift_task_create();
  sub_22D84E0E8();

  sub_22D84D014(v6, &qword_27DA0D628, "l\x1B");

LABEL_9:
  sub_22D84D1C0();
}

BOOL sub_22D893390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22D8B201C();
  sub_22D8B1A6C();
  v6 = sub_22D8B205C();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_22D8B1F8C();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

BOOL sub_22D8934A0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = (a4)(0, a2);
    sub_22D84C5D0(v11);
    v14 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v14 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_22D89357C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v6 = result + 32;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 == v4)
    {

      return v7;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    sub_22D84E298(v6, &v16);
    sub_22D84E124(&v16, v17);
    v8 = sub_22D8B0A5C();
    if (*(*a2 + 16))
    {
      sub_22D852D10(v8, v9);
      v11 = v10;

      if (v11)
      {
        result = sub_22D84D8A0(&v16);
        goto LABEL_13;
      }
    }

    else
    {
    }

    sub_22D851550(&v16, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22D87BC48(0, *(v7 + 16) + 1, 1);
      v7 = v18;
    }

    v14 = *(v7 + 16);
    v13 = *(v7 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_22D87BC48(v13 > 1, v14 + 1, 1);
      v7 = v18;
    }

    *(v7 + 16) = v14 + 1;
    result = sub_22D851550(v15, v7 + 40 * v14 + 32);
LABEL_13:
    v6 += 40;
    ++v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D8936FC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;

    sub_22D851F6C(&v7, v6, v5);

    v4 += 2;
  }
}

uint64_t sub_22D8937A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22D8937C8, 0, 0);
}

uint64_t sub_22D8937C8()
{
  sub_22D84D77C();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  sub_22D8B0FDC();
  *v4 = v0;
  v4[1] = sub_22D8938C0;
  sub_22D8AEFD4();

  return MEMORY[0x2822008A0](v5);
}

uint64_t sub_22D8938C0()
{
  sub_22D84D198();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v5 = *v1;
  sub_22D84CED0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_22D84C3F0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    sub_22D84D800();

    return v10();
  }
}

uint64_t sub_22D8939DC()
{
  sub_22D84D198();

  sub_22D84D800();

  return v0();
}

uint64_t sub_22D893A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v24 = a2;
  v5 = sub_22D8B18DC();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22D8B18FC();
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D8580D8(&qword_27DA0DCB8, &qword_22D8B4E20);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  (*(v12 + 16))(&v20 - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v20;
  *(v16 + 24) = v17;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_22D8AEBC8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D854268;
  aBlock[3] = &unk_2840E46E0;
  v18 = _Block_copy(aBlock);

  sub_22D8B18EC();
  v25 = MEMORY[0x277D84F90];
  sub_22D8AEC30(&qword_281458940, MEMORY[0x277D85198]);
  sub_22D8580D8(&qword_27DA0DCC0, &unk_22D8B4E28);
  sub_22D87C430(&qword_281458920, &qword_27DA0DCC0, &unk_22D8B4E28);
  sub_22D8B1DAC();
  MEMORY[0x2318D4570](0, v10, v7, v18);
  _Block_release(v18);
  (*(v23 + 8))(v7, v5);
  (*(v8 + 8))(v10, v22);
}

uint64_t sub_22D893DE0(uint64_t (*a1)(uint64_t))
{
  v2 = sub_22D8B0FDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = a1(v5);
  MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v9 - v6, v9 - v6, v2);
  sub_22D8580D8(&qword_27DA0DCB8, &qword_22D8B4E20);
  sub_22D8B1B5C();
  return (*(v3 + 8))(v9 - v6, v2);
}

uint64_t sub_22D893F6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    while (v2 != v3)
    {
      v4 = *(a1 + 32 + 8 * v3++);
      if (!*(v4 + 16))
      {
        return a1;
      }
    }

    sub_22D893FCC(0, v2);
  }

  return a1;
}

uint64_t sub_22D893FCC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_22D8B1B0C();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_22D8B4780)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_22D894070()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *(v1 + 16);
    swift_bridgeObjectRetain_n();
    sub_22D892BC4(0, v2, v0, v1);
    v3 = 0;
    for (i = v2 - 1; ; i = v5)
    {
      v5 = i - 1;
      if (i < 1)
      {
        if ((i != 0) | v3 & 1)
        {

          v0[1] = 0;
          return;
        }

        v5 = 0;
        v3 = 1;
      }

      v6 = v0[1];
      if (!v6)
      {
        break;
      }

      if (i >= *(v6 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v7 = *(v6 + 8 * i + 32);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_22;
      }

      if (i >= *(*v0 + 16))
      {
        goto LABEL_23;
      }

      if (v9 < *(*(*v0 + 8 * i + 32) + 16))
      {

        v11 = v0[1];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_16:
          if (i >= *(v11 + 16))
          {
            __break(1u);
          }

          else
          {
            v12 = *(v11 + 32 + 8 * i);
            v8 = __OFADD__(v12, 1);
            v13 = v12 + 1;
            if (!v8)
            {
              *(v11 + 32 + 8 * i) = v13;
              v0[1] = v11;
              return;
            }
          }

          __break(1u);
          break;
        }

LABEL_25:
        sub_22D8AE6E4();
        v11 = v14;
        goto LABEL_16;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22D8AE6E4();
        v6 = v10;
      }

      if (i >= *(v6 + 16))
      {
        goto LABEL_24;
      }

      *(v6 + 8 * i + 32) = 0;
      v0[1] = v6;
    }

    __break(1u);
  }
}

uint64_t sub_22D894218(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_22D8ADF74(result, 1, sub_22D851D5C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22D8942EC()
{
  v0 = sub_22D8B073C();
  v1 = sub_22D84C3FC(v0);
  MEMORY[0x28223BE20](v1);
  sub_22D84CFA4();
  sub_22D8B09DC();
  sub_22D8B12CC();
  result = sub_22D8B091C();
  qword_2814594E8 = result;
  return result;
}

uint64_t sub_22D894368()
{
  sub_22D8B118C();
  result = sub_22D8B117C();
  qword_2814594A8 = result;
  return result;
}

uint64_t sub_22D89439C()
{
  result = sub_22D8B08FC();
  qword_2814594A0 = result;
  return result;
}

void sub_22D8943BC()
{
  sub_22D8580D8(&qword_27DA0DCC8, &qword_22D8B4E40);
  v0 = sub_22D8B0EBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22D8B3740;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D29B38], v0);
  v6(v5 + v2, *MEMORY[0x277D29B30], v0);
  sub_22D84D258(v4);
  qword_2814594B0 = v7;
}

uint64_t sub_22D8944D4(uint64_t a1)
{
  sub_22D8B0CAC();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22D89457C;

  return MEMORY[0x282188168](a1);
}

uint64_t sub_22D89457C()
{
  sub_22D84D198();
  v3 = v2;
  sub_22D84C734();
  v4 = *v1;
  sub_22D84CED0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_22D89466C(void *a1, uint64_t a2)
{
  v3 = &unk_22D8B3000;
  if (!a2)
  {
    v26 = sub_22D8B09EC();
    sub_22D8551D4(&qword_281459228, MEMORY[0x282221880]);
    v27 = swift_allocError();
    v29 = v28;
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_22D8B1E2C();
    sub_22D84E124(a1, a1[3]);
    v30 = sub_22D8B0E5C();
    v32 = v31;

    v85 = v30;
    v86 = v32;
    v33 = 0x800000022D8B91B0;
    v34 = 0xD000000000000010;
LABEL_11:
    MEMORY[0x2318D4340](v34, v33);
    v39 = v86;
    *v29 = v85;
    v29[1] = v39;
    (*(*(v26 - 8) + 104))(v29, *MEMORY[0x277D29A50], v26);
    swift_willThrow();
    goto LABEL_12;
  }

  sub_22D84E124(a1, a1[3]);
  v5 = sub_22D8B0C6C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D8B0E4C();
  v9 = sub_22D8B0C2C();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v12 = sub_22D872F94(v9, v11, a2);

  if (!v12)
  {
    v26 = sub_22D8B09EC();
    sub_22D8551D4(&qword_281459228, MEMORY[0x282221880]);
    v27 = swift_allocError();
    v29 = v35;
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_22D8B1E2C();
    sub_22D84E124(a1, a1[3]);
    v36 = sub_22D8B0E5C();
    v38 = v37;

    v85 = v36;
    v86 = v38;
    v34 = 0xD000000000000015;
    v33 = 0x800000022D8B91D0;
    goto LABEL_11;
  }

  sub_22D84E124(a1, a1[3]);
  v13 = v12;
  sub_22D8B0E5C();
  v14 = sub_22D8B19CC();

  v15 = [v13 assetNamed_];

  if (v15)
  {
    v16 = v15;
    if (UAFAsset.isPresent()())
    {

      if (qword_2814589E0 != -1)
      {
        swift_once();
      }

      v17 = sub_22D8B178C();
      sub_22D84C6FC(v17, qword_281459298);
      sub_22D84E298(a1, &v85);
      v18 = sub_22D8B176C();
      v19 = sub_22D8B1C6C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v84 = v21;
        *v20 = 136315138;
        sub_22D84E124(&v85, v87);
        v22 = sub_22D8B0E5C();
        v24 = v23;
        sub_22D84D8A0(&v85);
        v25 = sub_22D84C63C(v22, v24, &v84);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_22D84A000, v18, v19, "availableUseCases: resource %s is ready", v20, 0xCu);
        sub_22D84D8A0(v21);
        MEMORY[0x2318D50E0](v21, -1, -1);
        MEMORY[0x2318D50E0](v20, -1, -1);
      }

      else
      {

        sub_22D84D8A0(&v85);
      }

      return 1;
    }

    if (qword_281458500 != -1)
    {
      swift_once();
    }

    v61 = sub_22D8B178C();
    sub_22D84C6FC(v61, qword_281459270);
    sub_22D84E298(a1, &v85);
    v62 = v16;
    v63 = sub_22D8B176C();
    v64 = sub_22D8B1C4C();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = v83;
      *v65 = 136315394;
      sub_22D84E124(&v85, v87);
      v66 = sub_22D8B0E5C();
      v68 = v67;
      sub_22D84D8A0(&v85);
      v69 = sub_22D84C63C(v66, v68, &v84);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v70 = [v62 metadata];
      sub_22D8B191C();

      v3 = &unk_22D8B3000;
      v71 = sub_22D8B192C();
      v73 = v72;

      v74 = sub_22D84C63C(v71, v73, &v84);

      *(v65 + 14) = v74;
      _os_log_impl(&dword_22D84A000, v63, v64, "Asset %s does not have a location. Metadata: %s", v65, 0x16u);
      v75 = v83;
      swift_arrayDestroy();
      MEMORY[0x2318D50E0](v75, -1, -1);
      MEMORY[0x2318D50E0](v65, -1, -1);
    }

    else
    {

      sub_22D84D8A0(&v85);
    }

    v76 = sub_22D8B09EC();
    sub_22D8551D4(&qword_281459228, MEMORY[0x282221880]);
    v27 = swift_allocError();
    v78 = v77;
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_22D8B1E2C();
    sub_22D84E124(a1, a1[3]);
    v79 = sub_22D8B0E5C();
    v81 = v80;

    v85 = v79;
    v86 = v81;
    MEMORY[0x2318D4340](0x6F6C206F6E202D20, 0xEE006E6F69746163);
    v82 = v86;
    *v78 = v85;
    v78[1] = v82;
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x277D29A50], v76);
    swift_willThrow();
  }

  else
  {
    v54 = sub_22D8B09EC();
    sub_22D8551D4(&qword_281459228, MEMORY[0x282221880]);
    v27 = swift_allocError();
    v56 = v55;
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_22D8B1E2C();
    sub_22D84E124(a1, a1[3]);
    v57 = sub_22D8B0E5C();
    v59 = v58;

    v85 = v57;
    v86 = v59;
    MEMORY[0x2318D4340](0xD000000000000011, 0x800000022D8B91F0);
    v60 = v86;
    *v56 = v85;
    v56[1] = v60;
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D29A50], v54);
    swift_willThrow();
  }

LABEL_12:
  if (qword_2814589E0 != -1)
  {
    swift_once();
  }

  v40 = sub_22D8B178C();
  sub_22D84C6FC(v40, qword_281459298);
  sub_22D84E298(a1, &v85);
  v41 = v27;
  v42 = sub_22D8B176C();
  v43 = sub_22D8B1C6C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v84 = v46;
    *v44 = v3[230];
    sub_22D84E124(&v85, v87);
    v47 = sub_22D8B0E5C();
    v49 = v48;
    sub_22D84D8A0(&v85);
    v50 = sub_22D84C63C(v47, v49, &v84);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2112;
    v51 = v27;
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 14) = v52;
    *v45 = v52;
    _os_log_impl(&dword_22D84A000, v42, v43, "availableUseCases: resource %s is NOT ready: %@", v44, 0x16u);
    sub_22D84D014(v45, &qword_27DA0D4D0, &qword_22D8B3400);
    MEMORY[0x2318D50E0](v45, -1, -1);
    sub_22D84D8A0(v46);
    MEMORY[0x2318D50E0](v46, -1, -1);
    MEMORY[0x2318D50E0](v44, -1, -1);
  }

  else
  {

    sub_22D84D8A0(&v85);
  }

  return 0;
}

uint64_t sub_22D89515C()
{
  v0 = sub_22D8B1C9C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D8B1CEC();
  MEMORY[0x28223BE20](v4);
  v6[0] = sub_22D85AFB0(0, &qword_281458890, 0x277D85CA8);
  v6[1] = MEMORY[0x277D84F90];
  sub_22D8AEC30(&qword_281458898, MEMORY[0x277D852C0]);
  sub_22D8580D8(&qword_27DA0DC60, qword_22D8B4AF0);
  sub_22D87C430(&qword_281458908, &qword_27DA0DC60, qword_22D8B4AF0);
  sub_22D8B1DAC();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v0);
  result = sub_22D8B1CFC();
  qword_281459488 = result;
  return result;
}

uint64_t sub_22D8953A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_22D8953C8, 0, 0);
}

uint64_t sub_22D8953C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22D84DF84();
  sub_22D8AFA60();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v18 = sub_22D8B178C();
  v16[7] = sub_22D84DD10(v18, qword_281459298);

  v19 = sub_22D8B176C();
  sub_22D8B1C6C();
  sub_22D8AF43C();

  if (sub_22D868510())
  {
    sub_22D84DD3C();
    a12 = sub_22D8AF080();
    *v17 = 136315138;
    v20 = sub_22D84CFB4();
    *(v17 + 4) = sub_22D84C63C(v20, v21, v22);
    sub_22D84E1F0();
    sub_22D8552DC(v23, v24, v25, v26);
    sub_22D8AEF74();
    sub_22D8728AC();
  }

  v27 = v16[2];
  v28 = sub_22D8B0EBC();
  v16[8] = v28;
  sub_22D84D7DC();
  v30 = v29;
  v16[9] = v29;
  v16[10] = sub_22D8AF5EC();
  v31 = sub_22D8580D8(&qword_27DA0D808, &qword_22D8B3DE0);
  sub_22D84C3FC(v31);
  v32 = sub_22D84C584();

  sub_22D8AFA0C();
  sub_22D8B0E9C();
  v33 = sub_22D8AF7C4();
  sub_22D8AFBB4(v33, v34, v28);
  if (v35)
  {
    v37 = v16[2];
    v36 = v16[3];
    sub_22D84D014(v32, &qword_27DA0D808, &qword_22D8B3DE0);

    v38 = sub_22D8B0A1C();
    v39 = sub_22D84D0F4(&qword_2814587A0);
    v40 = sub_22D8AFC60(v38, v39);
    *v41 = v37;
    v41[1] = v36;
    sub_22D84C5C4();
    (*(v42 + 104))();
    swift_willThrow();

    sub_22D8AF79C();
    v43 = v40;
    v44 = sub_22D8B176C();
    sub_22D8B1C4C();
    sub_22D84C2AC();

    if (sub_22D8AFBCC())
    {
      sub_22D8AF4E8();
      sub_22D8AF4CC();
      a12 = sub_22D8AF080();
      *v40 = 136315394;
      v45 = sub_22D85522C();
      v48 = sub_22D84C63C(v45, v46, v47);
      sub_22D8AF1F4(v48);
      v49 = _swift_stdlib_bridgeErrorToNSError();
      sub_22D8AFE5C(v49);
      sub_22D855CCC();
      _os_log_impl(v50, v51, v52, v53, v54, 0x16u);
      sub_22D84D014(v27, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D8728AC();
      sub_22D8AEF40();
      sub_22D84DDE4();
    }

    sub_22D8B00E4();
    v55 = sub_22D84CF98();
    (v40)(v55);

    goto LABEL_20;
  }

  sub_22D8AF020();
  v56();

  v57 = sub_22D8B0E7C();
  v58 = swift_task_alloc();
  v59 = sub_22D855CDC(v58);
  v63 = sub_22D8AFFC8(v59, v60, v61, v62);

  if (v63)
  {
    if (qword_2814589E8 != -1)
    {
      sub_22D84DE80(&qword_2814589E8);
    }

    sub_22D84DD10(v18, qword_2814592B0);
    v64 = swift_task_alloc();
    sub_22D8AF87C();
    v65();
    v66 = sub_22D8B176C();
    v67 = sub_22D8B1C6C();
    if (os_log_type_enabled(v66, v67))
    {
      a10 = sub_22D84DD3C();
      a11 = sub_22D84CE7C();
      a12 = a11;
      *a10 = 136315138;
      a9 = sub_22D8B0EAC();
      v68 = sub_22D8AEF28();
      v69 = v64(v68);
      v75 = sub_22D8AFF88(v69, v70, v71, v72, v73, v74);

      *(a10 + 4) = v75;
      sub_22D8AFF68(&dword_22D84A000, v76, v77, "AssetManager not subscribing to deprecated requestResourcesKey: %s as SubscriptionEvaluation FF is enabled", a10);
      sub_22D8AEF74();
      sub_22D85167C();
    }

    else
    {

      v82 = sub_22D8AEF28();
      v57(v82);
      v30 = v57;
    }

    v83 = v16[4];

    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D84C868();
    v84 = sub_22D8B1D4C();
    v83(v84, 0);

    v85 = sub_22D84C538();
    v30(v85);

LABEL_20:
    sub_22D84D800();
    sub_22D84E168();

    return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  swift_task_alloc();
  sub_22D84DDC0();
  v16[11] = v78;
  *v78 = v79;
  sub_22D8AFDDC(v78);
  sub_22D84E168();

  return sub_22D86E034();
}

uint64_t sub_22D895928()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v3 = v2;
  v4 = *v1;
  sub_22D84CED0();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22D895A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22D8AF47C();
  sub_22D8516FC();
  v15 = sub_22D8AFDC8();
  v16(v15);

  v17 = *(v13 + 96);
  sub_22D8AF79C();
  v18 = v17;
  v19 = sub_22D8B176C();
  sub_22D8B1C4C();
  sub_22D84C2AC();

  if (sub_22D8AFBCC())
  {
    sub_22D8AF4E8();
    sub_22D8AF4CC();
    sub_22D8AF080();
    sub_22D8AFE94();
    *v12 = 136315394;
    v20 = sub_22D85522C();
    v23 = sub_22D84C63C(v20, v21, v22);
    sub_22D8AF1F4(v23);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    sub_22D8AFE5C(v24);
    sub_22D855CCC();
    _os_log_impl(v25, v26, v27, v28, v29, 0x16u);
    sub_22D84D014(v14, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D8728AC();
    sub_22D8AEF40();
    sub_22D84DDE4();
  }

  sub_22D8B00E4();
  v30 = sub_22D84CF98();
  v12(v30);

  sub_22D84D800();
  sub_22D8AF2C0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_22D895B60(uint64_t a1)
{
  sub_22D8AF6DC();
  sub_22D872924();
  sub_22D84D764();
  v1 = swift_task_alloc();
  v2 = sub_22D84D1FC(v1);
  *v2 = v3;
  sub_22D84DF3C(v2);
  sub_22D84E19C();
  sub_22D8AF734();

  return sub_22D8953A0(v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_22D895C44(uint64_t a1, uint64_t a2)
{
  sub_22D8B0028();
  sub_22D8AF718();
  v7 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  sub_22D84C3FC(v7);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v8);
  sub_22D8AF67C();
  sub_22D84E35C();
  sub_22D84C4F8(v9, v10, v11, v12);
  sub_22D8AF3F4();
  v13 = swift_allocObject();
  v14 = sub_22D8AFDA4(v13);
  v14[4] = v6;
  v14[5] = v5;
  v14[6] = v4;
  v14[7] = v3;
  v14[8] = v2;

  v15 = v2;
  sub_22D862778();
  sub_22D8930E4();

  sub_22D8AFEDC();
}

uint64_t sub_22D895D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_22D895D34, 0, 0);
}

uint64_t sub_22D895D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22D84DF84();
  sub_22D8AFA60();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v18 = sub_22D8B178C();
  v16[7] = sub_22D84DD10(v18, qword_281459298);

  v19 = sub_22D8B176C();
  sub_22D8B1C6C();
  sub_22D8AF43C();

  if (sub_22D868510())
  {
    sub_22D84DD3C();
    a12 = sub_22D8AF080();
    *v17 = 136315138;
    v20 = sub_22D84CFB4();
    *(v17 + 4) = sub_22D84C63C(v20, v21, v22);
    sub_22D84E1F0();
    sub_22D8552DC(v23, v24, v25, v26);
    sub_22D8AEF74();
    sub_22D8728AC();
  }

  v27 = v16[2];
  v28 = sub_22D8B0EBC();
  v16[8] = v28;
  sub_22D84D7DC();
  v30 = v29;
  v16[9] = v29;
  v16[10] = sub_22D8AF5EC();
  v31 = sub_22D8580D8(&qword_27DA0D808, &qword_22D8B3DE0);
  sub_22D84C3FC(v31);
  v32 = sub_22D84C584();

  sub_22D8AFA0C();
  sub_22D8B0E9C();
  v33 = sub_22D8AF7C4();
  sub_22D8AFBB4(v33, v34, v28);
  if (v35)
  {
    v37 = v16[2];
    v36 = v16[3];
    sub_22D84D014(v32, &qword_27DA0D808, &qword_22D8B3DE0);

    v38 = sub_22D8B0A1C();
    v39 = sub_22D84D0F4(&qword_2814587A0);
    v40 = sub_22D8AFC60(v38, v39);
    *v41 = v37;
    v41[1] = v36;
    sub_22D84C5C4();
    (*(v42 + 104))();
    swift_willThrow();

    sub_22D8AF79C();
    v43 = v40;
    v44 = sub_22D8B176C();
    sub_22D8B1C4C();
    sub_22D84C2AC();

    if (sub_22D8AFBCC())
    {
      sub_22D8AF4E8();
      sub_22D8AF4CC();
      a12 = sub_22D8AF080();
      *v40 = 136315394;
      v45 = sub_22D85522C();
      v48 = sub_22D84C63C(v45, v46, v47);
      sub_22D8AF1F4(v48);
      v49 = _swift_stdlib_bridgeErrorToNSError();
      sub_22D8AFE5C(v49);
      sub_22D855CCC();
      _os_log_impl(v50, v51, v52, v53, v54, 0x16u);
      sub_22D84D014(v27, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D8728AC();
      sub_22D8AEF40();
      sub_22D84DDE4();
    }

    sub_22D8B00E4();
    v55 = sub_22D84CF98();
    (v40)(v55);

    goto LABEL_20;
  }

  sub_22D8AF020();
  v56();

  v57 = sub_22D8B0E7C();
  v58 = swift_task_alloc();
  v59 = sub_22D855CDC(v58);
  v63 = sub_22D8AFFC8(v59, v60, v61, v62);

  if (v63)
  {
    if (qword_2814589E8 != -1)
    {
      sub_22D84DE80(&qword_2814589E8);
    }

    sub_22D84DD10(v18, qword_2814592B0);
    v64 = swift_task_alloc();
    sub_22D8AF87C();
    v65();
    v66 = sub_22D8B176C();
    v67 = sub_22D8B1C6C();
    if (os_log_type_enabled(v66, v67))
    {
      a10 = sub_22D84DD3C();
      a11 = sub_22D84CE7C();
      a12 = a11;
      *a10 = 136315138;
      a9 = sub_22D8B0EAC();
      v68 = sub_22D8AEF28();
      v69 = v64(v68);
      v75 = sub_22D8AFF88(v69, v70, v71, v72, v73, v74);

      *(a10 + 4) = v75;
      sub_22D8AFF68(&dword_22D84A000, v76, v77, "AssetManager not unsubscribing to deprecated requestResourcesKey: %s as SubscriptionEvaluation FF is enabled", a10);
      sub_22D8AEF74();
      sub_22D85167C();
    }

    else
    {

      v84 = sub_22D8AEF28();
      v57(v84);
      v30 = v57;
    }

    v85 = v16[4];

    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D84C868();
    v86 = sub_22D8B1D4C();
    v85(v86, 0);

    v87 = sub_22D84C538();
    v30(v87);

LABEL_20:
    sub_22D84D800();
    sub_22D84E168();

    return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  swift_task_alloc();
  sub_22D84DDC0();
  v16[11] = v78;
  *v78 = v79;
  sub_22D8AFDDC(v78);
  sub_22D84E168();

  return sub_22D86EB88(v80, v81);
}

uint64_t sub_22D896294()
{
  sub_22D84D198();
  sub_22D84C734();
  sub_22D84C3C8();
  *v3 = v2;
  v4 = *v1;
  sub_22D84CED0();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22D89638C()
{
  sub_22D872924();
  v1 = *(v0 + 32);
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D84C868();
  v2 = sub_22D8B1D4C();
  v1(v2, 0);

  v3 = sub_22D84EB60();
  v4(v3);

  sub_22D84D800();

  return v5();
}

uint64_t sub_22D896454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22D8AF47C();
  sub_22D8516FC();
  v15 = sub_22D8AFDC8();
  v16(v15);

  v17 = *(v13 + 96);
  sub_22D8AF79C();
  v18 = v17;
  v19 = sub_22D8B176C();
  sub_22D8B1C4C();
  sub_22D84C2AC();

  if (sub_22D8AFBCC())
  {
    sub_22D8AF4E8();
    sub_22D8AF4CC();
    sub_22D8AF080();
    sub_22D8AFE94();
    *v12 = 136315394;
    v20 = sub_22D85522C();
    v23 = sub_22D84C63C(v20, v21, v22);
    sub_22D8AF1F4(v23);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    sub_22D8AFE5C(v24);
    sub_22D855CCC();
    _os_log_impl(v25, v26, v27, v28, v29, 0x16u);
    sub_22D84D014(v14, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D8728AC();
    sub_22D8AEF40();
    sub_22D84DDE4();
  }

  sub_22D8B00E4();
  v30 = sub_22D84CF98();
  v12(v30);

  sub_22D84D800();
  sub_22D8AF2C0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_22D896594()
{
  swift_unknownObjectRelease();

  v1 = sub_22D8AF374();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_22D8965DC(uint64_t a1)
{
  sub_22D8AF6DC();
  sub_22D872924();
  sub_22D84D764();
  v1 = swift_task_alloc();
  v2 = sub_22D84D1FC(v1);
  *v2 = v3;
  sub_22D84DF3C(v2);
  sub_22D84E19C();
  sub_22D8AF734();

  return sub_22D895D0C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_22D8966C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[63] = a7;
  v8[64] = a8;
  v8[61] = a5;
  v8[62] = a6;
  v8[60] = a4;
  sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D896770, 0, 0);
}

uint64_t sub_22D896770()
{
  v95 = v1;
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v3 = sub_22D8B178C();
  *(v1 + 536) = sub_22D84C6FC(v3, qword_281459298);

  v4 = sub_22D8B176C();
  sub_22D8B1C6C();
  sub_22D8B003C();
  if (sub_22D84DFC0())
  {
    sub_22D84DD3C();
    v93 = sub_22D8AF080();
    *v2 = 136315138;
    v5 = sub_22D8AF1E8();
    *(v2 + 4) = sub_22D84C63C(v5, v6, v7);
    sub_22D8516B0();
    sub_22D8552DC(v8, v9, v10, v11);
    sub_22D8AEF74();
    sub_22D8728AC();
  }

  sub_22D8B099C();
  if (*(v1 + 144))
  {
    v12 = (v1 + 280);
    sub_22D851550((v1 + 120), v1 + 80);
    sub_22D84E298(v1 + 80, v1 + 160);
    v13 = sub_22D8B176C();
    v14 = sub_22D8B1C6C();
    if (sub_22D84F8E8(v14))
    {
      v15 = sub_22D84DD3C();
      v16 = sub_22D84CE7C();
      v93 = v16;
      *v15 = 136315138;
      sub_22D84E298(v1 + 160, v1 + 440);
      sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
      v17 = sub_22D8B1A3C();
      v19 = v18;
      sub_22D84D8A0((v1 + 160));
      v20 = sub_22D84C63C(v17, v19, &v93);

      *(v15 + 4) = v20;
      sub_22D8AF804(&dword_22D84A000, v13, v14, "Attempting explicit request found resource: %s", v89);
      sub_22D84D8A0(v16);
      sub_22D8728AC();
      sub_22D84D6DC();
    }

    else
    {

      sub_22D84D8A0((v1 + 160));
    }

    sub_22D84E298(v1 + 80, v1 + 240);
    sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
    sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
    if (swift_dynamicCast())
    {
      sub_22D851550((v1 + 280), v1 + 200);
      v12 = sub_22D8B125C();
      sub_22D84E124((v1 + 80), *(v1 + 104));
      sub_22D8AF054();
      v22 = sub_22D8B0A4C();
      v24 = sub_22D893390(v22, v23, v12);

      if (v24)
      {
        v25 = sub_22D8B176C();
        v26 = sub_22D8B1C6C();
        if (sub_22D84CEE0(v26))
        {
          v27 = sub_22D85225C();
          sub_22D84C544(v27);
          sub_22D84C460();
          _os_log_impl(v28, v29, v30, v31, v32, 2u);
          sub_22D84DDE4();
        }

        v33 = sub_22D8B083C();
        sub_22D84E35C();
        sub_22D84C4F8(v34, v35, v36, v33);
        sub_22D84E298(v1 + 80, v1 + 360);
        sub_22D8580D8(&qword_27DA0DCD0, &qword_22D8B4E58);
        if (swift_dynamicCast())
        {
          sub_22D851550((v1 + 400), v1 + 320);
          v37 = sub_22D8580D8(&unk_27DA0DCE0, &qword_22D8B4E68);
          sub_22D84C3FC(v37);
          v38 = sub_22D84C584();
          sub_22D84E124((v1 + 320), *(v1 + 344));
          sub_22D84C868();
          sub_22D8B0FAC();
          sub_22D84D7DC();
          sub_22D84C584();
          sub_22D8B115C();
          sub_22D8B0F9C();
          v39 = sub_22D8AFA00();
          v40(v39);
          v41 = sub_22D8B11AC();
          v42 = sub_22D8AF7C4();
          sub_22D8AFBB4(v42, v43, v41);
          if (v44)
          {

            sub_22D84D014(v38, &unk_27DA0DCE0, &qword_22D8B4E68);
          }

          else
          {
            sub_22D8B119C();
            v57 = v56;
            sub_22D84C5C4();
            v58 = sub_22D8AFA54();
            v59(v58);

            if ((v57 & 1) == 0)
            {
              v60 = *(v1 + 520);
              sub_22D8B080C();
              v61 = sub_22D8538E0();
              sub_22D84D014(v61, v62, &unk_22D8B3DB0);
              sub_22D84C4F8(v60, 0, 1, v33);
              sub_22D8AF020();
              sub_22D8AED30(v63, v64, v65, &unk_22D8B3DB0);
            }
          }

          sub_22D84D8A0((v1 + 320));
        }

        else
        {
          *(v1 + 432) = 0;
          *(v1 + 400) = 0u;
          *(v1 + 416) = 0u;
          sub_22D84D014(v1 + 400, &qword_27DA0DCD8, &qword_22D8B4E60);
        }

        v92 = *(v1 + 528);
        v66 = *(v1 + 496);
        sub_22D8580D8(&qword_27DA0D818, &qword_22D8B3DF8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22D8B3470;
        sub_22D84F5A0();
        *(v68 + 32) = 0xD000000000000025;
        *(v68 + 40) = v69;
        v93 = 0;
        v94 = 0xE000000000000000;
        sub_22D8B1E2C();

        sub_22D84F5A0();
        v93 = 0xD00000000000001ALL;
        v94 = v70;
        v71 = sub_22D84CFB4();
        MEMORY[0x2318D4340](v71);
        v72 = v94;
        *(inited + 48) = v93;
        *(inited + 56) = v72;
        v90 = sub_22D8B193C();
        v91 = (v66 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_unifiedAssetInterface);
        sub_22D84E124((v1 + 200), *(v1 + 224));
        sub_22D84C868();
        v73 = sub_22D8B0C6C();
        sub_22D84D7DC();
        v75 = v74;
        v76 = sub_22D84C584();
        *(v1 + 544) = v76;
        sub_22D8B0E4C();
        sub_22D8B0C3C();
        (*(v75 + 8))(v76, v73);
        v77 = MEMORY[0x277D84F90];
        sub_22D8AFA54();
        v78 = sub_22D8B193C();
        v79 = sub_22D8B0F3C();
        *(v1 + 552) = v79;
        v80 = *(v79 - 8);
        *(v1 + 560) = v80;
        v81 = sub_22D84C584();
        *(v1 + 568) = v81;
        v82 = sub_22D8AFA00();
        sub_22D86D340(v82, v83, v77, v78, v90, v92, v84);

        sub_22D84E124(v91, v91[3]);
        sub_22D8B0DAC();
        *(v1 + 576) = v85;
        sub_22D8580D8(&qword_27DA0D820, &unk_22D8B3E00);
        v86 = (*(v80 + 80) + 32) & ~*(v80 + 80);
        v87 = swift_allocObject();
        *(v1 + 584) = v87;
        *(v87 + 16) = xmmword_22D8B3470;
        (*(v80 + 16))(v87 + v86, v81, v79);
        v88 = swift_task_alloc();
        *(v1 + 592) = v88;
        *v88 = v1;
        sub_22D84DD88(v88);

        return sub_22D865664();
      }

      sub_22D84D8A0((v1 + 200));
    }

    else
    {
      *(v1 + 312) = 0;
      *v12 = 0u;
      *(v1 + 296) = 0u;
      sub_22D84D014(v1 + 280, &qword_27DA0D698, &qword_22D8B36C0);
    }

    v45 = sub_22D8B176C();
    v46 = sub_22D8B1C6C();
    if (sub_22D84CEE0(v46))
    {
      v47 = sub_22D85225C();
      sub_22D84C544(v47);
      sub_22D84C460();
      _os_log_impl(v48, v49, v50, v51, v52, 2u);
      sub_22D84DDE4();
    }

    v53 = *(v1 + 504);

    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D8B1D4C();
    sub_22D8AEECC();
    v53();

    sub_22D84D8A0((v1 + 80));
  }

  else
  {
    v21 = *(v1 + 504);
    sub_22D84D014(v1 + 120, &qword_27DA0DC68, &qword_22D8B4C08);
    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D8B1D4C();
    sub_22D8AEECC();
    v21();
  }

  sub_22D84D800();

  return v54();
}

uint64_t sub_22D897134()
{
  sub_22D84D77C();
  sub_22D84C734();
  sub_22D84C3C8();
  *v3 = v2;
  v4 = *v1;
  sub_22D84CED0();
  *v5 = v4;
  *(v6 + 600) = v0;

  swift_setDeallocating();
  sub_22D870E80();
  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22D897274()
{
  sub_22D84F8A0();
  v1 = v0[66];
  v2 = v0[63];
  (*(v0[70] + 8))(v0[71], v0[69]);

  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D84C868();
  v3 = sub_22D8B1D4C();
  v2(v3, 0);

  sub_22D84D014(v1, &qword_27DA0D608, &unk_22D8B3DB0);
  sub_22D84D8A0(v0 + 25);
  sub_22D84D8A0(v0 + 10);

  sub_22D84D800();

  return v4();
}

uint64_t sub_22D897384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  sub_22D8AF47C();
  sub_22D8516FC();
  v13 = v12[75];
  v14 = v12[66];
  (*(v12[70] + 8))(v12[71], v12[69]);

  sub_22D84D014(v14, &qword_27DA0D608, &unk_22D8B3DB0);

  sub_22D84D8A0(v12 + 25);
  sub_22D84D8A0(v12 + 10);

  v15 = v13;
  v16 = sub_22D8B176C();
  sub_22D8B1C4C();

  if (sub_22D84DFC0())
  {
    v17 = v12[75];
    v18 = sub_22D8AF4E8();
    v19 = sub_22D84E1FC();
    a10 = sub_22D84CE7C();
    *v18 = 136315394;
    v20 = sub_22D85522C();
    v23 = sub_22D84C63C(v20, v21, v22);
    sub_22D8AF81C(v23);
    v24 = v17;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    *v19 = v25;
    sub_22D8516B0();
    sub_22D8B00B4(v26, v27, v28, v29);
    sub_22D84D014(v19, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D8A0(a10);
    sub_22D84D6DC();
    sub_22D8AF038();
  }

  v30 = v12[75];
  v31 = v12[63];
  v32 = v30;
  v33 = sub_22D84CF98();
  v31(v33);

  sub_22D84D800();
  sub_22D8AF2C0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_22D897560(uint64_t a1)
{
  sub_22D8AF6DC();
  sub_22D872924();
  sub_22D84D764();
  v1 = swift_task_alloc();
  v2 = sub_22D84D1FC(v1);
  *v2 = v3;
  sub_22D84DF3C(v2);
  sub_22D84E19C();
  sub_22D8AF734();

  return sub_22D8966C0(v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_22D897644(uint64_t a1, uint64_t a2)
{
  sub_22D8B0028();
  sub_22D8AF718();
  v7 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  sub_22D84C3FC(v7);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v8);
  sub_22D8AF67C();
  sub_22D84E35C();
  sub_22D84C4F8(v9, v10, v11, v12);
  sub_22D8AF3F4();
  v13 = swift_allocObject();
  v14 = sub_22D8AFDA4(v13);
  v14[4] = v6;
  v14[5] = v5;
  v14[6] = v2;
  v14[7] = v4;
  v14[8] = v3;

  v15 = v2;

  sub_22D862778();
  sub_22D8930E4();

  sub_22D8AFEDC();
}

uint64_t sub_22D89770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[55] = a7;
  v8[56] = a8;
  v8[53] = a5;
  v8[54] = a6;
  v8[52] = a4;
  return MEMORY[0x2822009F8](sub_22D897734, 0, 0);
}

uint64_t sub_22D897734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22D8AF47C();
  sub_22D8516FC();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v15 = sub_22D8B178C();
  *(v13 + 456) = sub_22D84C6FC(v15, qword_281459298);

  v16 = sub_22D8B176C();
  sub_22D8B1C6C();
  sub_22D8B003C();
  if (sub_22D84DFC0())
  {
    sub_22D84DD3C();
    a10 = sub_22D8AF080();
    *v14 = 136315138;
    v17 = sub_22D8AF1E8();
    *(v14 + 4) = sub_22D84C63C(v17, v18, v19);
    sub_22D8516B0();
    sub_22D8552DC(v20, v21, v22, v23);
    sub_22D8AEF74();
    sub_22D8728AC();
  }

  sub_22D8B099C();
  if (*(v13 + 80))
  {
    sub_22D851550((v13 + 56), v13 + 16);
    sub_22D84E298(v13 + 16, v13 + 96);
    v24 = sub_22D8B176C();
    v25 = sub_22D8B1C6C();
    if (sub_22D84F8E8(v25))
    {
      v26 = sub_22D84DD3C();
      sub_22D84CE7C();
      sub_22D8AFE94();
      *v26 = 136315138;
      sub_22D84E298(v13 + 96, v13 + 376);
      sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
      sub_22D8B1A3C();
      sub_22D8AFE7C();
      sub_22D84D8A0((v13 + 96));
      v27 = sub_22D8AF220();
      sub_22D84C63C(v27, v28, v29);
      sub_22D84D0E8();

      *(v26 + 4) = v14;
      sub_22D855CCC();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      sub_22D8AEF40();
      sub_22D84DDE4();
    }

    else
    {

      sub_22D84D8A0((v13 + 96));
    }

    sub_22D84E298(v13 + 16, v13 + 176);
    v36 = sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
    sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
    if (swift_dynamicCast())
    {
      sub_22D851550((v13 + 216), v13 + 136);
      v37 = sub_22D8B125C();
      sub_22D84E124((v13 + 16), *(v13 + 40));
      sub_22D8AF054();
      v38 = sub_22D8B0A4C();
      v40 = sub_22D893390(v38, v39, v37);

      if (v40)
      {
        v41 = sub_22D8B176C();
        v42 = sub_22D8B1C6C();
        if (sub_22D84CEE0(v42))
        {
          v43 = sub_22D85225C();
          sub_22D8AFA30(v43);
          sub_22D84E1F0();
          sub_22D8AFC78(v44, v45, v46, v47);
          sub_22D84D6DC();
        }

        sub_22D84E298(v13 + 16, v13 + 296);
        sub_22D8580D8(&qword_27DA0DCD0, &qword_22D8B4E58);
        if (swift_dynamicCast())
        {
          sub_22D851550((v13 + 336), v13 + 256);
          v48 = sub_22D8580D8(&unk_27DA0DCE0, &qword_22D8B4E68);
          sub_22D84C3FC(v48);
          v49 = sub_22D84C584();
          sub_22D84E124((v13 + 256), *(v13 + 280));
          sub_22D84C868();
          v50 = sub_22D8B0FAC();
          sub_22D84D7DC();
          v52 = v51;
          sub_22D84C584();
          sub_22D8AF454();
          sub_22D8B115C();
          sub_22D8B0F9C();
          (*(v52 + 8))(v36, v50);
          v53 = sub_22D8B11AC();
          sub_22D8AFBB4(v49, 1, v53);
          if (v54)
          {

            sub_22D84D014(v49, &unk_27DA0DCE0, &qword_22D8B4E68);
          }

          else
          {
            sub_22D8B119C();
            sub_22D84C5C4();
            v73 = sub_22D84C538();
            v74(v73);
          }

          sub_22D84D8A0((v13 + 256));
        }

        else
        {
          *(v13 + 368) = 0;
          *(v13 + 336) = 0u;
          *(v13 + 352) = 0u;
          sub_22D84D014(v13 + 336, &qword_27DA0DCD8, &qword_22D8B4E60);
        }

        sub_22D851278((v13 + 136), *(v13 + 160));
        sub_22D8B0A5C();
        *(v13 + 464) = v75;
        swift_task_alloc();
        sub_22D84DDC0();
        *(v13 + 472) = v76;
        *v76 = v77;
        v76[1] = sub_22D897DB0;
        sub_22D8AF430();
        sub_22D8AF2C0();

        return sub_22D86E614(v78, v79, v80, v81);
      }

      sub_22D84D8A0((v13 + 136));
    }

    else
    {
      *(v13 + 248) = 0;
      *(v13 + 232) = 0u;
      *(v13 + 216) = 0u;
      sub_22D84D014(v13 + 216, &qword_27DA0D698, &qword_22D8B36C0);
    }

    v55 = sub_22D8B176C();
    v56 = sub_22D8B1C6C();
    if (sub_22D84CEE0(v56))
    {
      v57 = sub_22D85225C();
      sub_22D84C544(v57);
      sub_22D84C460();
      _os_log_impl(v58, v59, v60, v61, v62, 2u);
      sub_22D84DDE4();
    }

    v63 = *(v13 + 440);

    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D8B1D4C();
    sub_22D8AEECC();
    v63();

    sub_22D84D8A0((v13 + 16));
  }

  else
  {
    v35 = *(v13 + 440);
    sub_22D84D014(v13 + 56, &qword_27DA0DC68, &qword_22D8B4C08);
    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D8B1D4C();
    sub_22D8AEECC();
    v35();
  }

  sub_22D84D800();
  sub_22D8AF2C0();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12);
}

uint64_t sub_22D897DB0()
{
  sub_22D84D198();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v5 = *v1;
  sub_22D84CED0();
  *v6 = v5;
  *(v3 + 480) = v0;

  if (!v0)
  {
  }

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22D897EB0()
{
  sub_22D84D77C();
  v2 = v1[55];
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D84C868();
  sub_22D8B1D4C();
  sub_22D8AEECC();
  v2();

  sub_22D84D8A0(v1 + 17);
  sub_22D84D8A0(v1 + 2);
  sub_22D84D800();

  return v3();
}

uint64_t sub_22D897F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  sub_22D8AF47C();
  sub_22D8516FC();
  v13 = v12[60];

  sub_22D84D8A0(v12 + 17);
  sub_22D84D8A0(v12 + 2);

  v14 = v13;
  v15 = sub_22D8B176C();
  sub_22D8B1C4C();
  sub_22D8B003C();

  if (sub_22D84DFC0())
  {
    v16 = v12[60];
    v17 = sub_22D8AF4E8();
    v18 = sub_22D84E1FC();
    a10 = sub_22D84CE7C();
    *v17 = 136315394;
    v19 = sub_22D85522C();
    v22 = sub_22D84C63C(v19, v20, v21);
    sub_22D8AF81C(v22);
    v23 = v16;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v18 = v24;
    sub_22D8516B0();
    sub_22D8B00B4(v25, v26, v27, v28);
    sub_22D84D014(v18, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D8A0(a10);
    sub_22D84D6DC();
    sub_22D8AF038();
  }

  v29 = v12[60];
  v30 = v12[55];
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D84C868();
  v31 = sub_22D8B1D4C();
  v32 = v29;
  v33 = sub_22D8AF214();
  v30(v33);

  sub_22D84D800();
  sub_22D8AF2C0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_22D8980EC()
{
  swift_unknownObjectRelease();

  v1 = sub_22D8AF374();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_22D898134(uint64_t a1)
{
  sub_22D8AF6DC();
  sub_22D872924();
  sub_22D84D764();
  v1 = swift_task_alloc();
  v2 = sub_22D84D1FC(v1);
  *v2 = v3;
  sub_22D84DF3C(v2);
  sub_22D84E19C();
  sub_22D8AF734();

  return sub_22D89770C(v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_22D8981F8(uint64_t a1, void (**a2)(void, void, void))
{
  if (qword_2814589E0 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v3 = sub_22D8B178C();
    sub_22D84C6FC(v3, qword_281459298);
    v4 = sub_22D8B176C();
    v5 = sub_22D8B1C6C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22D84A000, v4, v5, "requesting resources", v6, 2u);
      MEMORY[0x2318D50E0](v6, -1, -1);
    }

    v7 = sub_22D8B09BC();
    v8 = *(v7 + 16);
    if (!v8)
    {
      break;
    }

    v12 = a2;
    v14[5] = MEMORY[0x277D84F90];
    sub_22D8B1E7C();
    a2 = sub_22D8B0CCC();
    v9 = 0;
    v10 = v7 + 32;
    while (v9 < *(v7 + 16))
    {
      sub_22D84E298(v10, v14);
      sub_22D84E298(v14, v13);
      sub_22D8B0CBC();
      ++v9;
      sub_22D84D014(v13, &qword_27DA0DC68, &qword_22D8B4C08);
      sub_22D84D8A0(v14);
      sub_22D8B1E5C();
      sub_22D8B1E8C();
      sub_22D8B1E9C();
      sub_22D8B1E6C();
      v10 += 40;
      if (v8 == v9)
      {

        a2 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_10:
  sub_22D8B0CCC();
  v11 = sub_22D8B1ACC();
  (a2)[2](a2, v11, 0);

  _Block_release(a2);
}

void CatalogServiceServer.Server.resourceContainers(with:)(void (*a1)(uint64_t))
{
  v5 = v2;
  if (qword_2814589E0 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v7 = sub_22D8B178C();
    sub_22D84DD10(v7, qword_281459298);
    v8 = sub_22D8B176C();
    v9 = sub_22D8B1C6C();
    if (sub_22D84CEE0(v9))
    {
      v10 = sub_22D85225C();
      sub_22D8AFA30(v10);
      sub_22D84E1F0();
      sub_22D8AFC78(v11, v12, v13, v14);
      sub_22D84D6DC();
    }

    v15 = sub_22D8B09BC();
    v16 = *(v15 + 16);
    if (!v16)
    {
      break;
    }

    v19 = a1;
    v22 = MEMORY[0x277D84F90];
    sub_22D8B1E7C();
    sub_22D8B0CCC();
    sub_22D8AFE68();
    while (v4 < *(v15 + 16))
    {
      sub_22D84E298(v3, v21);
      sub_22D84E298(v21, v20);
      v17 = sub_22D8B0CBC();
      if (v5)
      {

        sub_22D84D014(v20, &qword_27DA0DC68, &qword_22D8B4C08);
        sub_22D84D8A0(v21);

        sub_22D8B068C();
        v18 = sub_22D8AF004();
        v19(v18);

        return;
      }

      v1 = v17;
      ++v4;
      sub_22D84D014(v20, &qword_27DA0DC68, &qword_22D8B4C08);
      sub_22D84D8A0(v21);
      sub_22D8B1E5C();
      a1 = *(v22 + 16);
      sub_22D8B1E8C();
      sub_22D8AF778();
      sub_22D8B1E9C();
      sub_22D8B1E6C();
      v3 += 40;
      if (v16 == v4)
      {

        (v19)(v22, 0);
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_22D86845C();
    swift_once();
  }

  (a1)(MEMORY[0x277D84F90], 0);
LABEL_11:
}

void sub_22D898708(uint64_t a1, void (**a2)(void, void, void))
{
  if (qword_2814589E0 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v3 = sub_22D8B178C();
    sub_22D84C6FC(v3, qword_281459298);
    v4 = sub_22D8B176C();
    v5 = sub_22D8B1C6C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22D84A000, v4, v5, "requesting resource bundles", v6, 2u);
      MEMORY[0x2318D50E0](v6, -1, -1);
    }

    v7 = sub_22D8B093C();
    v8 = *(v7 + 16);
    if (!v8)
    {
      break;
    }

    v12 = a2;
    v14[5] = MEMORY[0x277D84F90];
    sub_22D8B1E7C();
    a2 = sub_22D8B106C();
    v9 = 0;
    v10 = v7 + 32;
    while (v9 < *(v7 + 16))
    {
      sub_22D84E298(v10, v14);
      sub_22D84E298(v14, v13);
      sub_22D8B105C();
      ++v9;
      sub_22D84D014(v13, &qword_27DA0DC70, &unk_22D8B4C10);
      sub_22D84D8A0(v14);
      sub_22D8B1E5C();
      sub_22D8B1E8C();
      sub_22D8B1E9C();
      sub_22D8B1E6C();
      v10 += 40;
      if (v8 == v9)
      {

        a2 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_10:
  sub_22D8B106C();
  v11 = sub_22D8B1ACC();
  (a2)[2](a2, v11, 0);

  _Block_release(a2);
}

void CatalogServiceServer.Server.resourceBundleContainers(with:)(void (*a1)(uint64_t))
{
  v5 = v2;
  if (qword_2814589E0 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v7 = sub_22D8B178C();
    sub_22D84DD10(v7, qword_281459298);
    v8 = sub_22D8B176C();
    v9 = sub_22D8B1C6C();
    if (sub_22D84CEE0(v9))
    {
      v10 = sub_22D85225C();
      sub_22D8AFA30(v10);
      sub_22D84E1F0();
      sub_22D8AFC78(v11, v12, v13, v14);
      sub_22D84D6DC();
    }

    v15 = sub_22D8B093C();
    v16 = *(v15 + 16);
    if (!v16)
    {
      break;
    }

    v19 = a1;
    v22 = MEMORY[0x277D84F90];
    sub_22D8B1E7C();
    sub_22D8B106C();
    sub_22D8AFE68();
    while (v4 < *(v15 + 16))
    {
      sub_22D84E298(v3, v21);
      sub_22D84E298(v21, v20);
      v17 = sub_22D8B105C();
      if (v5)
      {

        sub_22D84D014(v20, &qword_27DA0DC70, &unk_22D8B4C10);
        sub_22D84D8A0(v21);

        sub_22D8B068C();
        v18 = sub_22D8AF004();
        v19(v18);

        return;
      }

      v1 = v17;
      ++v4;
      sub_22D84D014(v20, &qword_27DA0DC70, &unk_22D8B4C10);
      sub_22D84D8A0(v21);
      sub_22D8B1E5C();
      a1 = *(v22 + 16);
      sub_22D8B1E8C();
      sub_22D8AF778();
      sub_22D8B1E9C();
      sub_22D8B1E6C();
      v3 += 40;
      if (v16 == v4)
      {

        (v19)(v22, 0);
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_22D86845C();
    swift_once();
  }

  (a1)(MEMORY[0x277D84F90], 0);
LABEL_11:
}

void sub_22D898C18(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_22D898CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22D8AFF0C();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v36 = sub_22D8B178C();
  sub_22D84C6FC(v36, qword_281459298);
  v37 = v35;
  v38 = sub_22D8B176C();
  v39 = sub_22D8B1C6C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = sub_22D84DD3C();
    a11 = sub_22D84CE7C();
    v41 = v33;
    v42 = v27;
    v43 = v29;
    v44 = a11;
    *v40 = 136315138;
    v45 = v31();
    v47 = sub_22D84C63C(v45, v46, &a11);

    *(v40 + 4) = v47;
    v48 = v43;
    v27 = v42;
    v33 = v41;
    _os_log_impl(&dword_22D84A000, v38, v39, v48, v40, 0xCu);
    sub_22D84D8A0(v44);
    sub_22D84DDE4();
    sub_22D84C3D8();
  }

  v27(v37, v33 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_sideloadURL);
  sub_22D8B095C();
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D853B64();
  v49 = sub_22D8B1D3C();
  v50 = sub_22D8AF070();
  v51(v50, v49, 0);

  sub_22D8AF620();

  _Block_release(v52);
}

void sub_22D898EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v38 = va_arg(va1, void *);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);
  v48 = va_arg(va1, void);
  v49 = va_arg(va1, void);
  v50 = va_arg(va1, void);
  v51 = va_arg(va1, void);
  v52 = va_arg(va1, void);
  sub_22D8AFF0C();
  v51 = v11;
  v52 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v10;
  v21 = v20;
  v23 = v22;
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v24 = sub_22D8B178C();
  sub_22D84DD10(v24, qword_281459298);
  v25 = v23;
  v26 = sub_22D8B176C();
  v27 = sub_22D8B1C6C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = sub_22D84DD3C();
    v29 = v14;
    v30 = v21;
    v31 = sub_22D84CE7C();
    v38 = v31;
    *v28 = 136315138;
    v32 = v18();
    v34 = sub_22D84C63C(v32, v33, va);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_22D84A000, v26, v27, v16, v28, 0xCu);
    sub_22D84D8A0(v31);
    v21 = v30;
    v14 = v29;
    v19 = v10;
    sub_22D84C3D8();
    sub_22D8AF038();
  }

  v14(v25, v19 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_sideloadURL);
  sub_22D8B095C();
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D853B64();
  v37 = sub_22D8B1D3C();
  v21(v37, 0);
  sub_22D8AF620();
}

void sub_22D8991AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22D8AFEF0();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v34 = sub_22D8B178C();
  sub_22D84DD10(v34, qword_281459298);

  v35 = sub_22D8B176C();
  v36 = sub_22D8B1C6C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = sub_22D84DD3C();
    v38 = sub_22D84CE7C();
    a9 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_22D84C63C(v33, v31, &a9);
    _os_log_impl(&dword_22D84A000, v35, v36, v27, v37, 0xCu);
    sub_22D84D8A0(v38);
    sub_22D84C3D8();
    sub_22D8AF344();
  }

  v25(v33, v31, v29 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_sideloadURL);
  sub_22D8B095C();
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D853B64();
  v39 = sub_22D8B1D3C();
  v40 = sub_22D8AF070();
  v41(v40, v39, 0);

  sub_22D8AF604();

  _Block_release(v42);
}

void sub_22D899390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, ...)
{
  sub_22D8AFF0C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v12 = sub_22D8B178C();
  sub_22D84DD10(v12, qword_281459298);

  v13 = sub_22D8B176C();
  v14 = sub_22D8B1C6C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v11;
    v16 = sub_22D84DD3C();
    v24 = sub_22D84CE7C();
    *v16 = 136315138;
    v17 = sub_22D8AFA18();
    *(v16 + 4) = sub_22D84C63C(v17, v18, v19);
    _os_log_impl(&dword_22D84A000, v13, v14, v9, v16, 0xCu);
    sub_22D84D8A0(v24);
    sub_22D8AF038();
    v11 = v15;
    sub_22D84C3D8();
  }

  v20 = sub_22D8AFA18();
  v7(v20);
  sub_22D8B095C();
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D853B64();
  v23 = sub_22D8B1D3C();
  v11(v23, 0);
  sub_22D8AF620();
}

void sub_22D899634(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v59 = a4;
  v6 = sub_22D8580D8(&qword_27DA0D798, &unk_22D8B3AF0);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = v52 - v7;
  v58 = sub_22D8B073C();
  v54 = *(v58 - 8);
  v8 = MEMORY[0x28223BE20](v58);
  v57 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = v52 - v10;
  v11 = a1 == 0xD000000000000028 && 0x800000022D8B8F10 == a2;
  if (v11 || (sub_22D8B1F8C() & 1) != 0)
  {
    a2 = 0x800000022D8B8FC0;
    a1 = 0xD000000000000027;
  }

  else
  {
    v47 = a1 == 0xD000000000000023 && 0x800000022D8B8F40 == a2;
    if (v47 || (sub_22D8B1F8C() & 1) != 0)
    {
      a2 = 0x800000022D8B8F90;
      a1 = 0xD000000000000022;
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }
  }

  if (qword_2814589E0 != -1)
  {
    swift_once();
  }

  v12 = sub_22D8B178C();
  v13 = sub_22D84C6FC(v12, qword_281459298);

  v52[2] = v13;
  v14 = sub_22D8B176C();
  v15 = sub_22D8B1C6C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v60[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_22D84C63C(a1, a2, v60);
    _os_log_impl(&dword_22D84A000, v14, v15, "requesting resource information for: %s", v16, 0xCu);
    sub_22D84D8A0(v17);
    MEMORY[0x2318D50E0](v17, -1, -1);
    MEMORY[0x2318D50E0](v16, -1, -1);
  }

  v55 = sub_22D8B193C();
  v18 = sub_22D8B0C1C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22D8580D8(&qword_27DA0DC78, &unk_22D8B4C20);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v52 - v23;
  sub_22D8B0D9C();
  v52[1] = v52;

  if (sub_22D84D0C0(v24, 1, v18) == 1)
  {
    sub_22D84D014(v24, &qword_27DA0DC78, &unk_22D8B4C20);
  }

  else
  {
    (*(v19 + 32))(v21, v24, v18);
    v48 = v53;
    sub_22D8B0BFC();
    sub_22D8B06BC();
    (*(v54 + 8))(v48, v58);
    v49 = v55;
    swift_isUniquelyReferenced_nonNull_native();
    v60[0] = v49;
    sub_22D8AD400();
    v50 = v60[0];
    sub_22D8B0C0C();
    swift_isUniquelyReferenced_nonNull_native();
    v60[0] = v50;
    sub_22D8AD400();
    v51 = v60[0];
    sub_22D8B0BEC();
    swift_isUniquelyReferenced_nonNull_native();
    v60[0] = v51;
    sub_22D8AD400();
    (*(v19 + 8))(v21, v18);
  }

  v25 = sub_22D8B08DC();
  v26 = sub_22D893390(a1, a2, v25);

  if (v26)
  {

    sub_22D84C4F8(v56, 1, 1, v58);
    v27 = objc_allocWithZone(sub_22D8B0EDC());
    v28 = sub_22D8B0ECC();
    (v59)[2](v59, v28, 0);
  }

  else
  {
    v29 = v53;
    sub_22D8B12DC();
    v30 = v57;
    sub_22D8B06DC();

    v31 = v54;
    v32 = *(v54 + 8);
    v33 = v29;
    v34 = v58;
    v32(v33, v58);
    v35 = v56;
    (*(v31 + 16))(v56, v30, v34);
    sub_22D84C4F8(v35, 0, 1, v34);
    v36 = objc_allocWithZone(sub_22D8B0EDC());
    v37 = sub_22D8B0ECC();
    v38 = sub_22D8B176C();
    v39 = sub_22D8B1C6C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v60[0] = v41;
      *v40 = 136315138;
      v42 = [v37 debugDescription];
      v43 = sub_22D8B19FC();
      v45 = v44;

      v46 = sub_22D84C63C(v43, v45, v60);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_22D84A000, v38, v39, "Resource Info is: %s", v40, 0xCu);
      sub_22D84D8A0(v41);
      MEMORY[0x2318D50E0](v41, -1, -1);
      MEMORY[0x2318D50E0](v40, -1, -1);
    }

    (v59)[2](v59, v37, 0);
    v32(v57, v58);
  }

  _Block_release(v59);
}

void CatalogServiceServer.Server.resourceInformation(identifier:with:)()
{
  sub_22D851698();
  v75 = v2;
  v76 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22D8580D8(&qword_27DA0D798, &unk_22D8B3AF0);
  sub_22D84C3FC(v7);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v8);
  v73 = v69 - v9;
  v77 = sub_22D8B073C();
  sub_22D84D7DC();
  v71 = v10;
  v12 = MEMORY[0x28223BE20](v11);
  v74 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = v69 - v14;
  v15 = v6 == 0xD000000000000028 && 0x800000022D8B8F10 == v4;
  if (!v15)
  {
    sub_22D85522C();
    if ((sub_22D8B1F8C() & 1) == 0 && (v6 != 0xD000000000000023 || 0x800000022D8B8F40 != v4))
    {
      sub_22D85522C();
      if ((sub_22D8B1F8C() & 1) == 0)
      {
        swift_bridgeObjectRetain_n();
      }
    }
  }

  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v16 = sub_22D8B178C();
  sub_22D84DD10(v16, qword_281459298);

  v69[1] = v0;
  v17 = sub_22D8B176C();
  v18 = sub_22D8B1C6C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = sub_22D84DD3C();
    v20 = sub_22D84CE7C();
    v78 = v20;
    *v19 = 136315138;
    v21 = sub_22D85522C();
    *(v19 + 4) = sub_22D84C63C(v21, v22, v23);
    _os_log_impl(&dword_22D84A000, v17, v18, "requesting resource information for: %s", v19, 0xCu);
    sub_22D84D8A0(v20);
    sub_22D8AF2DC();
    sub_22D84DDE4();
  }

  v72 = sub_22D8B193C();
  v24 = sub_22D8B0C1C();
  sub_22D84D7DC();
  MEMORY[0x28223BE20](v25);
  sub_22D84CFA4();
  sub_22D8AFCE0();
  v26 = sub_22D8580D8(&qword_27DA0DC78, &unk_22D8B4C20);
  sub_22D84C3FC(v26);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v27);
  sub_22D8AF88C();
  sub_22D85522C();
  sub_22D8B0D9C();
  v69[0] = v69;

  v28 = sub_22D8AF22C();
  sub_22D8AFBB4(v28, v29, v24);
  if (v15)
  {
    sub_22D84D014(v18, &qword_27DA0DC78, &unk_22D8B4C20);
  }

  else
  {
    sub_22D8AF0BC();
    v62();
    v63 = v70;
    sub_22D8B0BFC();
    sub_22D8B06BC();
    (*(v71 + 8))(v63, v77);
    v64 = v72;
    swift_isUniquelyReferenced_nonNull_native();
    v78 = v64;
    sub_22D8AD400();
    v65 = v78;
    sub_22D8B0C0C();
    swift_isUniquelyReferenced_nonNull_native();
    v78 = v65;
    sub_22D8AD400();
    v66 = v78;
    sub_22D8B0BEC();
    swift_isUniquelyReferenced_nonNull_native();
    v78 = v66;
    v18 = &v78;
    sub_22D8AD400();
    v67 = sub_22D8AF214();
    v68(v67);
  }

  v30 = sub_22D8B08DC();
  v31 = sub_22D85522C();
  sub_22D893390(v31, v32, v30);
  sub_22D84C59C();
  if (v18)
  {

    sub_22D84E118();
    sub_22D84E35C();
    sub_22D84C4F8(v33, v34, v35, v77);
    v36 = objc_allocWithZone(sub_22D8B0EDC());
    sub_22D8AEFC8();
    v37 = sub_22D8B0ECC();
    (v76)(v37, 0);
  }

  else
  {
    v38 = v70;
    sub_22D8B12DC();
    v39 = v74;
    sub_22D85522C();
    sub_22D8B06DC();

    v40 = v71;
    v41 = *(v71 + 8);
    v42 = v38;
    v43 = v77;
    v41(v42, v77);
    v44 = v73;
    (*(v40 + 16))(v73, v39, v43);
    sub_22D84C4F8(v44, 0, 1, v43);
    v45 = objc_allocWithZone(sub_22D8B0EDC());
    v46 = sub_22D8B0ECC();
    v47 = sub_22D8B176C();
    v48 = sub_22D8B1C6C();

    if (sub_22D84DFC0())
    {
      sub_22D84DD3C();
      v49 = sub_22D854F30();
      v78 = v49;
      *v44 = 136315138;
      v50 = [v46 debugDescription];
      sub_22D8B19FC();
      sub_22D8AFE7C();

      v51 = sub_22D8AF220();
      v54 = sub_22D84C63C(v51, v52, v53);

      *(v44 + 4) = v54;
      sub_22D8516B0();
      sub_22D8B015C(v55, v56, v57, v58);
      sub_22D84D8A0(v49);
      sub_22D84D6DC();
      sub_22D8AF2DC();
    }

    v59 = v46;
    v60 = sub_22D8AF384();
    v76(v60);

    v41(v74, v77);
  }

  sub_22D84D1C0();
}

void sub_22D89A8DC(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_22D8ACDF8(0xD00000000000001DLL, 0x800000022D8B8FF0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_22D8B19CC();
    v7 = sub_22D8B19CC();
    [v5 setObject:v6 forKey:v7];

    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    v8 = sub_22D8B1D4C();
    (a2)[2](a2, v8, 0);
  }

  else
  {
    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    v8 = sub_22D8B1D4C();
    (a2)[2](a2, v8, 0);
  }

  _Block_release(a2);
}

void CatalogServiceServer.Server.enableTestResources(with:)(void (*a1)(id, void))
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_22D8ACDF8(0xD00000000000001DLL, 0x800000022D8B8FF0);
  if (v3)
  {
    v4 = v3;
    v5 = sub_22D8B19CC();
    v6 = sub_22D8B19CC();
    [v4 setObject:v5 forKey:v6];

    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    v7 = sub_22D8B1D4C();
    a1(v7, 0);
  }

  else
  {
    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D84C868();
    v7 = sub_22D8B1D4C();
    a1(v7, 0);
  }
}

uint64_t sub_22D89ABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_sideloadURL;
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_22D89AC74;

  return static ModelCatalogDaemon.essentialResourcesReady(sideLoadUrl:)(a4 + v8);
}

uint64_t sub_22D89AC74()
{
  sub_22D84D77C();
  v3 = v2;
  sub_22D84C734();
  v5 = v4;
  sub_22D84F51C();
  *v6 = v5;
  v7 = *v1;
  sub_22D84CED0();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3 & 1;
  }

  sub_22D8AEFD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22D89AD80()
{
  sub_22D84D77C();
  v2 = *(v1 + 16);
  sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
  sub_22D8B1D3C();
  sub_22D8AEECC();
  v2();

  sub_22D84D800();

  return v3();
}

uint64_t sub_22D89AE18()
{
  sub_22D84D77C();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = sub_22D8B068C();
  v2(0, v3);

  sub_22D84D800();

  return v4();
}

uint64_t sub_22D89AED4(uint64_t a1, uint64_t a2)
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v3 = *(v2 + 40);
  v4 = sub_22D8B178C();
  sub_22D84DD10(v4, qword_281459298);
  v5 = v3;
  v6 = sub_22D8B176C();
  sub_22D8B1C4C();

  if (sub_22D8AFC90())
  {
    sub_22D84DD3C();
    v7 = sub_22D84C600();
    sub_22D84C520(5.7779e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    sub_22D8AF7F8(v8);
    sub_22D8AF09C(&dword_22D84A000, v9, v10, "acquireCoherenceToken failed, returning no tokens due to: %@");
    sub_22D84D014(v7, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D6DC();
  }

  v11 = *(v2 + 40);
  v12 = *(v2 + 16);

  v13 = sub_22D8B068C();
  v12(0, v13);

  sub_22D84D800();
  sub_22D8AFC08();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_22D89B050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  return MEMORY[0x2822009F8](sub_22D89B074, 0, 0);
}

uint64_t sub_22D89B074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22D84DF84();
  sub_22D8AFA60();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v17 = sub_22D8B178C();
  *(v16 + 80) = sub_22D84C6FC(v17, qword_281459298);
  v18 = sub_22D8B176C();
  v19 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v19))
  {
    v20 = sub_22D85225C();
    sub_22D84C544(v20);
    sub_22D84C460();
    _os_log_impl(v21, v22, v23, v24, v25, 2u);
    sub_22D84DDE4();
  }

  sub_22D8B09DC();
  v26 = sub_22D8B094C();
  v27 = *(v26 + 16);
  if (v27)
  {
    v86 = MEMORY[0x277D84F90];
    sub_22D87BBA4(0, v27, 0);
    v28 = v86;
    a10 = v26;
    v29 = v26 + 32;
    a12 = sub_22D8B0C6C();
    sub_22D84D7DC();
    v31 = v30;
    a11 = *(v32 + 64) + 15;
    do
    {
      v33 = swift_task_alloc();
      sub_22D84E298(v29, v16 + 16);
      sub_22D84E124((v16 + 16), *(v16 + 40));
      sub_22D8B0E4C();
      sub_22D84D8A0((v16 + 16));
      a13 = v28;
      v35 = *(v28 + 16);
      v34 = *(v28 + 24);
      if (v35 >= v34 >> 1)
      {
        v37 = sub_22D84C4D0(v34);
        sub_22D87BBA4(v37, v35 + 1, 1);
      }

      *(v28 + 16) = v35 + 1;
      sub_22D84D24C();
      (*(v31 + 32))(v28 + v36 + *(v31 + 72) * v35, v33, a12);

      v29 += 40;
      --v27;
    }

    while (v27);
  }

  sub_22D8871C4();
  v39 = v38;
  *(v16 + 88) = v38;
  v40 = *(v38 + 32);
  *(v16 + 200) = v40;
  v41 = 1 << v40;
  v42 = -1;
  if (1 << v40 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v38 + 56);
  v44 = sub_22D8B0C6C();
  *(v16 + 96) = v44;
  sub_22D84D7DC();
  v46 = v45;
  *(v16 + 104) = v45;
  *(v16 + 112) = *(v47 + 64);
  v48 = sub_22D84C584();
  v49 = v48;
  *(v16 + 120) = v48;
  *(v16 + 201) = 0;
  if (v43)
  {
    v50 = 0;
LABEL_17:
    *(v16 + 128) = v43;
    *(v16 + 136) = v50;
    (*(v46 + 16))(v48, *(v39 + 48) + *(v46 + 72) * (__clz(__rbit64(v43)) | (v50 << 6)), v44);
    v52 = sub_22D8B0FDC();
    *(v16 + 144) = v52;
    sub_22D84C5D0(v52);
    *(v16 + 152) = v53;
    *(v16 + 160) = *(v54 + 64);
    *(v16 + 168) = sub_22D84C584();
    if (qword_281459190 != -1)
    {
      sub_22D84DE40(&qword_281459190);
    }

    v55 = *(v16 + 104);
    swift_task_alloc();
    v56 = *(v55 + 32);
    sub_22D8AF020();
    v56();
    v57 = swift_allocObject();
    v58 = sub_22D8AFA6C(v57);
    (v56)(v58);

    swift_task_alloc();
    sub_22D84DDC0();
    *(v16 + 184) = v59;
    *v59 = v60;
    sub_22D8AF178(v59);
    sub_22D855A60();
    sub_22D84E168();

    return v64(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, sub_22D8937A4, a13, a14, a15, a16);
  }

  else
  {
    v51 = 0;
    while (1)
    {
      v50 = v51 + 1;
      if (v51 + 1 >= (v41 + 63) >> 6)
      {
        break;
      }

      v43 = *(v39 + 8 * v51++ + 64);
      if (v43)
      {
        goto LABEL_17;
      }
    }

    v70 = sub_22D8B176C();
    v71 = sub_22D8B1C6C();
    if (sub_22D84CEE0(v71))
    {
      v49 = sub_22D84E1FC();
      *v49 = 67109120;
      v49[1] = 1;
      sub_22D84C460();
      _os_log_impl(v72, v73, v74, v75, v76, 8u);
      sub_22D84DDE4();
    }

    v77 = *(v16 + 64);
    sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
    sub_22D853B64();
    sub_22D8B1D3C();
    sub_22D8AEECC();
    v77();

    sub_22D84D800();
    sub_22D84E168();

    return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_22D89B5D0()
{
  sub_22D84D77C();
  sub_22D84F51C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  sub_22D8AEFD4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_22D89B6F0()
{
  sub_22D8516FC();
  v1 = *(v0 + 152);
  v2 = MEMORY[0x277D29BD8];
  swift_task_alloc();
  (*(v1 + 32))();
  v3 = sub_22D8AF448();
  v5 = v4(v3);
  if (v2 && v5 == *v2)
  {
    v6 = MEMORY[0x277D29CA0];
    v7 = sub_22D8AF0D4();
    v8(v7);
    sub_22D8B124C();
    v9 = sub_22D8AF0D4();
    v11 = v10(v9);
    v12 = *(v0 + 201);
    if (v6)
    {
      v12 |= v11 == *v6;
    }
  }

  else
  {
    v12 = *(v0 + 201);
  }

  v13 = *(v0 + 168);
  v14 = sub_22D8AF0D4();
  v15(v14);

  v17 = *(v0 + 128);
  v16 = *(v0 + 136);
  *(v0 + 201) = v12 & 1;
  v18 = (v17 - 1) & v17;
  if (v18)
  {
    v19 = *(v0 + 88);
    goto LABEL_12;
  }

  while (1)
  {
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v20 >= (((1 << *(v0 + 200)) + 63) >> 6))
    {

      v32 = sub_22D8B176C();
      v33 = sub_22D8B1C6C();
      if (sub_22D84CEE0(v33))
      {
        v13 = sub_22D84E1FC();
        *v13 = 67109120;
        v13[1] = (v12 ^ 1) & 1;
        sub_22D84C460();
        _os_log_impl(v34, v35, v36, v37, v38, 8u);
        sub_22D84DDE4();
      }

      v39 = *(v0 + 64);
      sub_22D85AFB0(0, &qword_281458490, 0x277CCABB0);
      sub_22D8B1D3C();
      sub_22D8AEECC();
      v39();

      sub_22D84D800();
      sub_22D872A24();

      __asm { BRAA            X1, X16 }
    }

    v19 = *(v0 + 88);
    v18 = *(v19 + 8 * v20 + 56);
    ++v16;
    if (v18)
    {
      v16 = v20;
LABEL_12:
      *(v0 + 128) = v18;
      *(v0 + 136) = v16;
      (*(*(v0 + 104) + 16))(*(v0 + 120), *(v19 + 48) + *(*(v0 + 104) + 72) * (__clz(__rbit64(v18)) | (v16 << 6)), *(v0 + 96));
      v21 = sub_22D8B0FDC();
      *(v0 + 144) = v21;
      sub_22D84C5D0(v21);
      *(v0 + 152) = v22;
      *(v0 + 160) = *(v23 + 64);
      *(v0 + 168) = sub_22D84C584();
      if (qword_281459190 == -1)
      {
LABEL_13:
        v24 = *(v0 + 104);
        swift_task_alloc();
        v25 = *(v24 + 32);
        sub_22D8AF020();
        v25();
        v26 = swift_allocObject();
        v27 = sub_22D8AFA6C(v26);
        (v25)(v27);

        swift_task_alloc();
        sub_22D84DDC0();
        *(v0 + 184) = v28;
        *v28 = v29;
        sub_22D8AF178(v28);
        sub_22D855A60();
        sub_22D872A24();

        __asm { BR              X3 }
      }

LABEL_22:
      sub_22D84DE40(&qword_281459190);
      goto LABEL_13;
    }
  }

  __break(1u);
  goto LABEL_22;
}

uint64_t sub_22D89BB10()
{
  sub_22D84D198();

  sub_22D84D800();

  return v0();
}

uint64_t sub_22D89BBB8(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v8 = _Block_copy(aBlock);
  sub_22D8AF3DC();
  *(swift_allocObject() + 16) = v8;
  v9 = a1;
  v10 = sub_22D8AF448();
  a6(v10);
}

uint64_t CatalogServiceServer.Server.useCaseResourceAvailability(by:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  sub_22D84C3FC(v7);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v8);
  sub_22D8AFCE0();
  sub_22D8B1B9C();
  sub_22D84E35C();
  sub_22D84C4F8(v9, v10, v11, v12);
  sub_22D8AFDB0();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = v3;
  v13[6] = a2;
  v13[7] = a3;

  v14 = v3;

  sub_22D8AEFE4();
  sub_22D892E94();
}

uint64_t sub_22D89BD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[91] = a7;
  v7[90] = a6;
  v7[89] = a5;
  v7[88] = a4;
  return MEMORY[0x2822009F8](sub_22D89BD5C, 0, 0);
}

void *sub_22D89BD5C()
{
  v90 = v0;
  v1 = sub_22D886CD4();
  v2 = MEMORY[0x277D84F90];
  v82 = v0;
  if (v1)
  {
    v3 = v1;
    v89 = MEMORY[0x277D84F90];
    result = sub_22D87B9A8(0, v1 & ~(v1 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = *(v0 + 704);
    v2 = v89;
    v84 = v6 + 32;
    v86 = v6 & 0xC000000000000001;
    v88 = v3;
    do
    {
      if (v86)
      {
        v7 = MEMORY[0x2318D4700](v5, *(v0 + 704));
      }

      else
      {
        v7 = *(v84 + 8 * v5);
      }

      v8 = v7;
      sub_22D8B0D8C();
      sub_22D84D7DC();
      sub_22D84C584();
      sub_22D8B111C();
      v9 = sub_22D8B0D1C();
      v11 = v10;

      v12 = sub_22D85522C();
      v13(v12);

      v89 = v2;
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22D87B9A8((v14 > 1), v15 + 1, 1);
        v2 = v89;
      }

      ++v5;
      *(v2 + 16) = v15 + 1;
      v16 = v2 + 16 * v15;
      *(v16 + 32) = v9;
      *(v16 + 40) = v11;
      v0 = v82;
    }

    while (v88 != v5);
  }

  *(v0 + 736) = v2;
  if (qword_2814589E0 != -1)
  {
LABEL_65:
    sub_22D86845C();
    swift_once();
  }

  v17 = sub_22D8B178C();
  *(v0 + 744) = sub_22D84DD10(v17, qword_281459298);

  v18 = sub_22D8B176C();
  v19 = sub_22D8B1C6C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = sub_22D84DD3C();
    v21 = sub_22D84CE7C();
    v89 = v21;
    *v20 = 136315138;
    *(v0 + 696) = v2;
    sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
    sub_22D87C430(&qword_281458918, &qword_27DA0D7A0, &unk_22D8B3B50);
    v22 = sub_22D8B199C();
    sub_22D84C63C(v22, v23, &v89);
    sub_22D8AFCA8();
    *(v20 + 4) = &qword_27DA0D7A0;
    sub_22D8B0144(&dword_22D84A000, v18, v19, "useCaseResourceAvailability called with use case identifiers: %s", v77);
    sub_22D84D8A0(v21);
    v0 = v82;
    sub_22D84C3D8();
    sub_22D84F8CC();
  }

  v24 = sub_22D8B09BC();
  v25 = 0;
  v79 = *(v24 + 16);
  v80 = v24;
  v78 = v24 + 32;
  v26 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v77 = v2;
  while (v25 != v79)
  {
    sub_22D8AD6C8(v25, 1, v80);
    sub_22D84E298(v78 + 40 * v25, v0 + 72);
    sub_22D84E124((v0 + 72), *(v0 + 96));
    sub_22D8AEFC8();
    v28 = sub_22D8B0A7C();
    v29 = *(v28 + 16);
    if (v29)
    {
      v81 = v25;
      v89 = v26;
      sub_22D87B9A8(0, v29, 0);
      v30 = v89;
      v31 = 0;
      v87 = sub_22D8B12BC();
      sub_22D84D7DC();
      v83 = v28 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v85 = v32;
      do
      {
        v33 = swift_task_alloc();
        (*(v85 + 16))(v33, v83 + *(v85 + 72) * v31, v87);
        v34 = sub_22D8B0D8C();
        sub_22D84D7DC();
        v36 = v35;
        v37 = sub_22D84C584();
        sub_22D8B127C();
        v38 = v37;
        sub_22D8B0D1C();
        sub_22D8AF568();
        (*(v36 + 8))(v37, v34);
        v39 = sub_22D84C538();
        v40(v39);

        v89 = v30;
        v41 = *(v30 + 16);
        sub_22D8AFD58();
        if (v43)
        {
          v45 = sub_22D84C4D0(v42);
          sub_22D87B9A8(v45, v33, 1);
          v30 = v89;
        }

        ++v31;
        *(v30 + 16) = v33;
        v44 = v30 + 16 * v41;
        *(v44 + 32) = v38;
        *(v44 + 40) = v27;
      }

      while (v29 != v31);

      v0 = v82;
      v26 = MEMORY[0x277D84F90];
      v2 = v77;
      v25 = v81;
    }

    else
    {

      v30 = v26;
    }

    ++v25;
    v46 = sub_22D851EAC(v30);
    sub_22D8AE06C(v2, v46);
    v48 = *(v47 + 16);

    v49 = (v0 + 72);
    if (v48)
    {
      sub_22D851550(v49, v0 + 112);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_22D8AFE48();
        sub_22D87BC68(v50, v51, v52);
      }

      v54 = *(v27 + 16);
      v53 = *(v27 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_22D87BC68(v53 > 1, v54 + 1, 1);
      }

      *(v27 + 16) = v54 + 1;
      sub_22D851550((v0 + 112), v27 + 40 * v54 + 32);
    }

    else
    {
      sub_22D84D8A0(v49);
    }
  }

  v55 = *(v27 + 16);
  if (v55)
  {
    v56 = v27 + 32;
    v57 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_22D84E298(v56, v82 + 152);
      sub_22D851550((v82 + 152), v82 + 272);
      sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
      v58 = sub_22D8AF220();
      sub_22D8580D8(v58, v59);
      if (swift_dynamicCast())
      {
        if (*(v82 + 256))
        {
          sub_22D851550((v82 + 232), v82 + 192);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22D84C414();
            sub_22D84F408();
            v57 = v61;
          }

          v60 = *(v57 + 16);
          if (v60 >= *(v57 + 24) >> 1)
          {
            sub_22D8AF9B8();
            sub_22D84F408();
            v57 = v62;
          }

          *(v57 + 16) = v60 + 1;
          sub_22D851550((v82 + 192), v57 + 40 * v60 + 32);
          goto LABEL_40;
        }
      }

      else
      {
        *(v82 + 264) = 0;
        *(v82 + 248) = 0u;
        *(v82 + 232) = 0u;
      }

      sub_22D84D014(v82 + 232, &qword_27DA0D698, &qword_22D8B36C0);
LABEL_40:
      v56 += 40;
      if (!--v55)
      {

        v0 = v82;
        goto LABEL_43;
      }
    }
  }

  v57 = MEMORY[0x277D84F90];
LABEL_43:
  v63 = 0;
  v64 = *(v57 + 16);
  v65 = v57 + 32;
  v66 = MEMORY[0x277D84F90];
  v2 = 40;
  while (1)
  {
    *(v0 + 752) = v66;
    if (v64 == v63)
    {
      break;
    }

    if (v63 >= *(v57 + 16))
    {
      __break(1u);
      goto LABEL_65;
    }

    sub_22D84E298(v65, v0 + 312);
    sub_22D851278((v0 + 312), *(v0 + 336));
    v67 = sub_22D8B0A6C();
    v69 = v68;
    if (v67 == MEMORY[0x2318D3170]() && v69 == v70)
    {
    }

    else
    {
      sub_22D8AFA0C();
      v72 = sub_22D8B1F8C();

      if ((v72 & 1) == 0)
      {
        v0 = v82;
        sub_22D84D8A0((v82 + 312));
        goto LABEL_58;
      }
    }

    v0 = v82;
    sub_22D851550((v82 + 312), v82 + 352);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v66;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22D87BC48(0, *(v66 + 16) + 1, 1);
      v66 = v89;
    }

    v75 = *(v66 + 16);
    v74 = *(v66 + 24);
    if (v75 >= v74 >> 1)
    {
      sub_22D87BC48(v74 > 1, v75 + 1, 1);
      v66 = v89;
    }

    *(v66 + 16) = v75 + 1;
    sub_22D851550((v82 + 352), v66 + 40 * v75 + 32);
LABEL_58:
    v65 += 40;
    ++v63;
  }

  *(v0 + 760) = sub_22D8B193C();
  if (qword_281459018 != -1)
  {
    sub_22D84DB74(&qword_281459018);
  }

  *(v0 + 768) = qword_281459480;
  v76 = swift_task_alloc();
  *(v0 + 776) = v76;
  *v76 = v0;
  sub_22D84DD88(v76);

  return sub_22D869C90();
}

uint64_t sub_22D89C71C()
{
  sub_22D84D198();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 784) = v5;
  *(v3 + 792) = v0;

  if (v0)
  {
  }

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22D89C834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22D852350();
  v16 = v14[94];
  v17 = *(v16 + 16);
  v14[100] = v17;
  if (v17)
  {
    v18 = 0;
    a10 = v14 + 85;
    v19 = (v14[89] + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_resourceReadinessProvider);
    v14[101] = *v19;
    v14[102] = v19[1];
    v20 = v14[98];
    v21 = v14[95];
    while (1)
    {
      v14[115] = v20;
      v14[114] = v18;
      v14[113] = v21;
      v14[112] = v20;
      sub_22D84E298(v16 + 40 * v18 + 32, (v14 + 49));
      sub_22D84E4D0(v14 + 49);
      v22 = sub_22D8B0A4C();
      sub_22D84F9BC(v22, v23);
      v14[82] = 0x800000022D8B9210;
      sub_22D8ADEAC();
      sub_22D8ADF00();
      sub_22D84E0B0();
      v24 = sub_22D8B198C();

      if (v24)
      {
        break;
      }

      v25 = v14[113];
      v26 = v14[101];
      sub_22D851278(v14 + 49, v14[52]);
      v15 = sub_22D8B0A5C();
      v28 = v27;
      v26(v14 + 49, v20);
      swift_isUniquelyReferenced_nonNull_native();
      v14[85] = v25;
      v29 = sub_22D85522C();
      sub_22D852D10(v29, v30);
      sub_22D84F5B8();
      if (v33)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v34 = v31;
      v35 = v32;
      sub_22D8580D8(&qword_27DA0D620, &qword_22D8B3408);
      if (sub_22D8B1EAC())
      {
        v36 = sub_22D85522C();
        sub_22D852D10(v36, v37);
        sub_22D8AF248();
        if (!v39)
        {
          sub_22D8728C8();

          return sub_22D8B1FBC();
        }

        v34 = v38;
      }

      v21 = *a10;
      if (v35)
      {
        sub_22D8AFCD4();
        *(v40 + v34) = v41;
      }

      else
      {
        sub_22D8AF544();
        sub_22D84DDB0(v42);
        v43 = (*(v21 + 48) + 16 * v34);
        *v43 = v15;
        v43[1] = v28;
        sub_22D8AFCD4();
        *(v44 + v34) = v45;
        sub_22D8AF538();
        if (v33)
        {
          goto LABEL_27;
        }

        *(v21 + 16) = v46;
      }

      v47 = v14[100];
      v48 = v14[114] + 1;
      sub_22D84D8A0(v14 + 49);
      if (v48 == v47)
      {
        goto LABEL_16;
      }

      v18 = v14[114] + 1;
      v16 = v14[94];
    }

    sub_22D8AEEDC();
    v14[116] = sub_22D8B0C6C();
    sub_22D84D7DC();
    v14[117] = *(v66 + 64);
    v14[118] = sub_22D8AF5EC();
    sub_22D8538E0();
    sub_22D8B0E4C();
    v67 = sub_22D8B0C2C();
    v69 = sub_22D84CFEC(v67, v68);
    v15(v69);
    sub_22D8AEEDC();
    v14[123] = swift_task_alloc();
    sub_22D8538E0();
    sub_22D8B0E4C();
    sub_22D8B0C2C();
    sub_22D8AF7EC();
    v14[124] = v70;
    v71 = sub_22D85236C();
    v15(v71);
    v72 = sub_22D852330(v14 + 49);
    v14[125] = sub_22D8AFB78(v72);
    v73 = swift_task_alloc();
    v14[126] = v73;
    *v73 = v14;
    sub_22D84CF64(v73);
    sub_22D8728C8();

    return sub_22D869A48();
  }

  else
  {
    v20 = v14[98];
    v21 = v14[95];
LABEL_16:
    v14[104] = v20;
    v14[103] = v21;
    v49 = sub_22D8B0FDC();
    v14[105] = v49;
    sub_22D84C5D0(v49);
    v14[106] = v50;
    v14[107] = *(v51 + 64);
    v14[108] = sub_22D84C584();
    if (qword_281459190 != -1)
    {
LABEL_28:
      sub_22D84DE40(&qword_281459190);
    }

    v52 = v14[89];
    sub_22D8AF3DC();
    v53 = swift_allocObject();
    sub_22D8AF8AC(v53);
    v76 = sub_22D854FB8(&dword_22D8B4E00);
    v54 = v52;
    swift_task_alloc();
    sub_22D84DDC0();
    v14[110] = v55;
    *v55 = v56;
    sub_22D84CEB0(v55);
    sub_22D855A60();
    sub_22D8728C8();

    return v60(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, v76, a12, a13, a14);
  }
}

uint64_t sub_22D89CCE0()
{
  sub_22D84D198();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v5 = *v1;
  sub_22D84CED0();
  *v6 = v5;
  *(v3 + 888) = v0;

  if (!v0)
  {
  }

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22D89CDE0()
{
  sub_22D84D77C();
  v2 = *v1;
  sub_22D84CED0();
  *v3 = v2;
  v4 = *v1;
  sub_22D84F51C();
  *v5 = v4;
  *(v2 + 1016) = v6;
  *(v2 + 1024) = v0;

  if (v0)
  {
  }

  else
  {
  }

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22D89D56C()
{
  v204 = v0;
  v1 = v0[106];
  v2 = sub_22D84C584();
  v3 = *(v1 + 16);
  sub_22D8AF430();
  v3();
  v4 = sub_22D84EB60();
  v6 = v5(v4);
  v194 = v0;
  if (!MEMORY[0x277D29BD8] || v6 != *MEMORY[0x277D29BD8])
  {
    goto LABEL_9;
  }

  v7 = v0[105];
  v8 = sub_22D84C584();
  (v3)(v8, v2, v7);
  v9 = sub_22D8AF574();
  v10(v9);
  sub_22D8B124C();
  v11 = sub_22D8AF574();
  v13 = v12(v11);
  if (!MEMORY[0x277D29CA0] || v13 != *MEMORY[0x277D29CA0])
  {
    v30 = sub_22D8AF574();
    v31(v30);

LABEL_9:
    v8 = sub_22D8B176C();
    v32 = sub_22D8B1C2C();
    v33 = os_log_type_enabled(v8, v32);
    v34 = v0[106];
    if (v33)
    {
      v35 = sub_22D85225C();
      *v35 = 0;
      _os_log_impl(&dword_22D84A000, v8, v32, "Model Catalog subscriptions have enough space", v35, 2u);
      sub_22D8728AC();
    }

    v36 = *(v34 + 8);
    v37 = sub_22D8AF448();
    v36(v37);
    goto LABEL_12;
  }

  v14 = v0[111];
  sub_22D8AF0E0((v0[89] + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_unifiedAssetInterface), *(v0[89] + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_unifiedAssetInterface + 24));
  sub_22D8580D8(&qword_27DA0DC98, &unk_22D8B4DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D8B3470;
  *(inited + 32) = sub_22D8B0DAC();
  *(inited + 40) = v16;
  *(inited + 48) = MEMORY[0x277D84F90];
  sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
  v17 = sub_22D8B193C();
  v18 = sub_22D864D34(v17);
  v191 = v14;
  if (v14)
  {
    v19 = *(v0[106] + 8);
    (v19)(v0[108], v0[105]);

    v20 = sub_22D8AF580();
    (v19)(v20);

    v21 = v191;
    v22 = sub_22D8B176C();
    v2 = sub_22D8B1C4C();

    if (sub_22D868510())
    {
      sub_22D84DD3C();
      v8 = sub_22D8AF4CC();
      *v19 = 138412290;
      v23 = v191;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v24;
      *v8 = v24;
      sub_22D84C460();
      _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
      sub_22D84D014(v8, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D84D6DC();
      sub_22D84DDE4();
    }

    else
    {
    }

    goto LABEL_13;
  }

  v170 = v18;

  v171 = sub_22D8B176C();
  v172 = sub_22D8B1C6C();
  if (sub_22D84F8E8(v172))
  {
    v173 = sub_22D84DD3C();
    *v173 = 134217984;
    *(v173 + 4) = v170;
    sub_22D8516B0();
    sub_22D8B0144(v174, v175, v176, v177);
    sub_22D84F8CC();
  }

  v178 = v0[106];

  v36 = *(v178 + 8);
  v179 = sub_22D8AFA54();
  v36(v179);

LABEL_12:
  (v36)(v2, v0[105]);

LABEL_13:
  v38 = v0[100];
  v186 = sub_22D8B10EC();
  v39 = sub_22D8B193C();
  if (v38)
  {
    v40 = 0;
    v188 = (v0 + 83);
    v41 = v0[103];
    v185 = v0[94] + 32;
    v181 = 136315138;
    v184 = v41;
    while (1)
    {
      if (v40 >= *(v0[94] + 16))
      {
        goto LABEL_86;
      }

      sub_22D84E298(v185 + 40 * v40, (v0 + 54));
      sub_22D84E4D0(v0 + 54);
      v42 = sub_22D8B0A5C();
      v8 = v43;
      if (!*(v41 + 16))
      {
        break;
      }

      sub_22D852D10(v42, v43);
      v45 = v44;

      if ((v45 & 1) == 0)
      {
        goto LABEL_38;
      }

      v8 = v0[57];
      sub_22D84E4D0(v0 + 54);
      v46 = sub_22D8B0A7C();
      v2 = *(v46 + 16);
      if (v2)
      {
        v183 = v40;
        sub_22D8B12BC();
        sub_22D8AF994();
        v48 = v46 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v192 = *(v49 + 72);
        while (1)
        {
          v199 = v2;
          v50 = v194[92];
          v8 = swift_task_alloc();
          v197 = v48;
          sub_22D8AFE88();
          v51();
          v52 = sub_22D8B0D8C();
          sub_22D84D7DC();
          v53 = sub_22D8AF5EC();
          sub_22D8B127C();
          sub_22D8B0D1C();
          sub_22D8AF424();
          v54 = sub_22D8AFE3C();
          v195 = v55;
          (v55)(v54);
          v194[83] = v53;
          v194[84] = v2;
          v56 = swift_task_alloc();
          v57 = sub_22D8AF114(v56, v188);
          LOBYTE(v50) = sub_22D855C1C(v57, v58, v50);

          if (v50)
          {
            v59 = sub_22D8B128C();
            v60 = swift_task_alloc();
            v187 = v8;
            sub_22D8B127C();
            sub_22D8B0D1C();
            sub_22D84C578();
            v8 = v195;
            v195(v60, v52);
            v61 = *(v39 + 16);
            if (v59)
            {
              if (v61)
              {
                v62 = sub_22D84F800();
                sub_22D852D10(v62, v63);
                v65 = v64;

                if (v65)
                {
                  sub_22D853B0C();
                  v8 = v187;
                  v66 = sub_22D851E68();
                  v67(v66);
                  goto LABEL_34;
                }
              }

              else
              {
              }

              v79 = swift_task_alloc();
              sub_22D8AFAD8(v79);
              sub_22D8B0D1C();
              v81 = v80;
              v82 = sub_22D8AFDFC();
              v52(v82);
              v83 = objc_allocWithZone(v186);
              sub_22D853B64();
              goto LABEL_33;
            }

            if (!v61)
            {

LABEL_32:

              v84 = swift_task_alloc();
              sub_22D8AFAD8(v84);
              sub_22D8B0D1C();
              v81 = v85;
              v86 = sub_22D8AFDFC();
              v52(v86);
              v87 = objc_allocWithZone(v186);
LABEL_33:
              sub_22D8B109C();
              swift_isUniquelyReferenced_nonNull_native();
              v203[0] = v39;
              sub_22D84C55C();
              v88 = sub_22D85236C();
              sub_22D8AD600(v88, v89, v81, v90, &unk_27DA0DCA8, &unk_22D8B4E10, v91);

              sub_22D853B0C();
              v92 = sub_22D851E68();
              v93(v92);
LABEL_34:

              goto LABEL_35;
            }

            v70 = sub_22D84F800();
            v72 = sub_22D852D10(v70, v71);
            v74 = v73;

            if ((v74 & 1) == 0)
            {
              goto LABEL_32;
            }

            v75 = *(*(v39 + 56) + 8 * v72);

            v76 = v75;
            sub_22D8B10AC();
            sub_22D8B10BC();
            sub_22D8B107C();
            sub_22D8B108C();
            sub_22D8B10CC();
            sub_22D8B10DC();

            sub_22D853B0C();
            v8 = v187;
            v77 = sub_22D851E68();
            v78(v77);
          }

          else
          {
            sub_22D853B0C();
            v68 = sub_22D851E68();
            v69(v68);
          }

LABEL_35:

          v48 = v197 + v192;
          v2 = (v199 - 1);
          if (v199 == 1)
          {

            v0 = v194;
            v40 = v183;
            v41 = v184;
            goto LABEL_42;
          }
        }
      }

LABEL_42:
      ++v40;
      v107 = v0[100];
      sub_22D84D8A0(v0 + 54);
      if (v40 == v107)
      {
        goto LABEL_43;
      }
    }

LABEL_38:
    sub_22D84E298((v0 + 54), (v0 + 59));
    v94 = sub_22D8B176C();
    v95 = sub_22D8B1C4C();
    if (sub_22D84F8E8(v95))
    {
      v8 = sub_22D84DD3C();
      v96 = sub_22D84CE7C();
      sub_22D8AF8E4(v96, v97, v98, v99, v100, v101, v102, v103, v181);
      sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
      sub_22D8B1A3C();
      sub_22D8AFE7C();
      sub_22D84D8A0(v194 + 59);
      v104 = sub_22D8AF220();
      sub_22D84C63C(v104, v105, v106);
      sub_22D84D0E8();
      v41 = v184;
      v0 = v194;

      *(v8 + 4) = v39;
      sub_22D8AF804(&dword_22D84A000, v94, v95, "could not find resource: %s inside resourceToReadinessMapping", v182);
      sub_22D84D8A0(v2);
      sub_22D8AF038();
      sub_22D84D6DC();
    }

    else
    {

      sub_22D84D8A0(v0 + 59);
    }

    goto LABEL_42;
  }

LABEL_43:

  v108 = v39 + 64;
  sub_22D84E484();
  v111 = v110 & v109;
  sub_22D8AF3E8();
  v113 = v112 >> 6;
  v202 = v114;

  v115 = 0;
  v196 = v108;
  if (v111)
  {
    while (1)
    {
      v116 = v115;
LABEL_48:
      sub_22D8AFD64();
      v118 = v117 | (v116 << 6);
      v119 = (*(v202 + 48) + 16 * v118);
      v120 = *v119;
      v121 = v119[1];
      v122 = *(*(v202 + 56) + 8 * v118);

      v123 = sub_22D8B176C();
      v124 = sub_22D8B1C6C();

      if (sub_22D8AFBCC())
      {
        v125 = sub_22D8AF4E8();
        sub_22D84E1FC();
        v200 = v123;
        v126 = sub_22D854F30();
        v203[0] = v126;
        *v125 = 136315394;
        v127 = sub_22D84C63C(v120, v121, v203);

        *(v125 + 4) = v127;
        *(v125 + 12) = 2112;
        *(v125 + 14) = v122;
        *v0 = v122;
        v128 = v122;
        _os_log_impl(&dword_22D84A000, v200, v124, "useCase: %s has availability: %@", v125, 0x16u);
        sub_22D84D014(v0, &qword_27DA0D4D0, &qword_22D8B3400);
        sub_22D8AF2DC();
        sub_22D84D8A0(v126);
        sub_22D85167C();
        sub_22D84C3D8();
      }

      else
      {
      }

      v115 = v116;
      v0 = v194;
    }
  }

  while (1)
  {
    v116 = v115 + 1;
    if (__OFADD__(v115, 1))
    {
      __break(1u);
      goto LABEL_85;
    }

    if (v116 >= v113)
    {
      break;
    }

    ++v115;
    if (*(v108 + 8 * v116))
    {
      goto LABEL_48;
    }
  }

  v129 = v202;

  sub_22D8B113C();
  sub_22D8AF1BC(&qword_2814591E8);
  v190 = sub_22D8B193C();
  sub_22D8AFD30();
  v132 = v130 & v131;
  v134 = (63 - v133) >> 6;

  v135 = 0;
  v193 = v134;
LABEL_53:
  v136 = v135;
  if (!v132)
  {
    goto LABEL_55;
  }

  do
  {
    v135 = v136;
LABEL_58:
    v137 = __clz(__rbit64(v132));
    v132 &= v132 - 1;
    v198 = *(*(v129 + 56) + 8 * (v137 | (v135 << 6)));
    v138 = sub_22D8B0D8C();
    sub_22D84D7DC();
    v140 = v139;
    v141 = sub_22D8AFB20();
    v142 = sub_22D8580D8(qword_27DA0D9F0, &unk_22D8B4DE0);
    sub_22D84C3FC(v142);
    sub_22D84C584();
    sub_22D8AEFC8();
    swift_bridgeObjectRetain_n();
    v8 = v198;
    sub_22D8B0D7C();
    v143 = sub_22D8AF22C();
    sub_22D8AFBB4(v143, v144, v138);
    if (!v145)
    {
      v201 = v8;
      sub_22D8AFE88();
      v146();

      swift_task_alloc();
      (*(v140 + 16))();
      v147 = sub_22D8B112C();

      v148 = v190;
      v149 = v141;
      v150 = v140;
      v189 = v149;
      if ((v190 & 0xC000000000000001) != 0)
      {
        if (v190 >= 0)
        {
          v148 = v190 & 0xFFFFFFFFFFFFFF8;
        }

        v151 = v201;
        v152 = v201;
        v153 = sub_22D8B1EDC();
        v129 = v202;
        if (__OFADD__(v153, 1))
        {
          goto LABEL_91;
        }

        v148 = sub_22D8ACE5C(v148, v153 + 1);
      }

      else
      {
        v151 = v201;
        v154 = v201;
        v129 = v202;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v203[0] = v148;
      sub_22D870F3C(v147);
      sub_22D8AF02C();
      if (!__OFADD__(v157, v158))
      {
        v159 = v155;
        v8 = v156;
        sub_22D8580D8(&qword_27DA0DCA0, &qword_22D8B4E08);
        v160 = v203[0];
        if (sub_22D8B1EAC())
        {
          v161 = sub_22D870F3C(v147);
          if ((v8 & 1) != (v162 & 1))
          {
            goto LABEL_87;
          }

          v159 = v161;
        }

        v190 = v203[0];
        if (v8)
        {
          v163 = *(v203[0] + 56);
          v164 = *(v163 + 8 * v159);
          *(v163 + 8 * v159) = v151;

          (*(v150 + 8))(v189, v138);
LABEL_76:
          v134 = v193;

          v108 = v196;
          goto LABEL_53;
        }

        sub_22D8AF544();
        sub_22D84DDB0(v165);
        *(*(v203[0] + 48) + 8 * v159) = v147;
        *(*(v160 + 56) + 8 * v159) = v151;

        (*(v150 + 8))(v189, v138);
        sub_22D8AF538();
        if (!v167)
        {
          *(v160 + 16) = v166;
          goto LABEL_76;
        }

LABEL_92:
        __break(1u);
        return;
      }

      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    sub_22D84D014(v134, qword_27DA0D9F0, &unk_22D8B4DE0);

    v136 = v135;
    v129 = v202;
    v108 = v196;
    v134 = v193;
  }

  while (v132);
LABEL_55:
  while (1)
  {
    v135 = v136 + 1;
    if (__OFADD__(v136, 1))
    {
      break;
    }

    if (v135 >= v134)
    {
      sub_22D8AFD10();

      (v8)(v190, 0);

      sub_22D84D800();
      sub_22D8AF90C();

      __asm { BRAA            X1, X16 }
    }

    v132 = *(v108 + 8 * v135);
    ++v136;
    if (v132)
    {
      goto LABEL_58;
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  sub_22D8AF90C();

  sub_22D8B1FBC();
}

uint64_t sub_22D89E5F8()
{
  sub_22D84D198();

  sub_22D84D800();

  return v0();
}

void sub_22D89EC58()
{
  v180 = v0;

  v3 = v0[111];

  v4 = v3;
  v5 = sub_22D8B176C();
  sub_22D8B1C4C();

  if (sub_22D84DFC0())
  {
    sub_22D84DD3C();
    v6 = sub_22D84C600();
    *v1 = 138412290;
    v7 = v3;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    sub_22D8AF7F8(v8);
    sub_22D8516B0();
    sub_22D8AF804(v9, v10, v11, v12);
    sub_22D84D014(v6, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D6DC();
  }

  else
  {
  }

  v13 = v0[100];
  v164 = sub_22D8B10EC();
  v14 = sub_22D8B193C();
  v170 = v0;
  if (v13)
  {
    v16 = 0;
    v165 = (v0 + 83);
    v17 = v0[103];
    v162 = v0[94] + 32;
    *&v15 = 136315138;
    v156 = v15;
    v161 = v17;
    while (1)
    {
      if (v16 >= *(v0[94] + 16))
      {
        goto LABEL_74;
      }

      sub_22D84E298(v162 + 40 * v16, (v0 + 54));
      sub_22D84E4D0(v0 + 54);
      v18 = sub_22D8B0A5C();
      if (!*(v17 + 16))
      {
        break;
      }

      v20 = sub_22D852D10(v18, v19);
      v22 = v21;

      if ((v22 & 1) == 0)
      {
        goto LABEL_29;
      }

      HIDWORD(v163) = *(*(v17 + 56) + v20);
      sub_22D84E4D0(v0 + 54);
      v23 = sub_22D8B0A7C();
      v3 = *(v23 + 16);
      if (v3)
      {
        v160 = v16;
        sub_22D8B12BC();
        sub_22D8AF994();
        v159 = v23;
        v25 = v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v168 = *(v26 + 72);
        while (1)
        {
          v176 = v3;
          v27 = v170[92];
          v28 = swift_task_alloc();
          v174 = v25;
          sub_22D8AFE88();
          v29();
          v30 = sub_22D8B0D8C();
          sub_22D84D7DC();
          v2 = sub_22D8AFA9C();
          sub_22D8B127C();
          sub_22D8B0D1C();
          sub_22D8AF424();
          v31 = sub_22D87294C();
          v171 = v32;
          (v32)(v31);
          v170[83] = v2;
          v170[84] = v3;
          v33 = swift_task_alloc();
          v34 = sub_22D8AF114(v33, v165);
          LOBYTE(v27) = sub_22D855C1C(v34, v35, v27);

          if (v27)
          {
            v36 = sub_22D8B128C();
            v37 = swift_task_alloc();
            sub_22D8B127C();
            sub_22D8B0D1C();
            sub_22D854FE4();
            v171(v37, v30);
            v38 = *(v14 + 16);
            if (v36)
            {
              if (v38)
              {
                sub_22D852D10(v37, v2);
                v40 = v39;

                if (v40)
                {
                  v49 = sub_22D8AF940(v41, v42, v43, v44, v45, v46, v47, v48, v156, *(&v156 + 1), v158, v159, v160, v161, v162, v163, v164, v28);
                  v50(v49);
                  goto LABEL_25;
                }
              }

              else
              {
              }

              v68 = swift_task_alloc();
              sub_22D8AFAB4(v68);
              sub_22D8B0D1C();
              v69 = sub_22D8508F8();
              v30(v69);
              v70 = objc_allocWithZone(v164);
              sub_22D853B64();
              goto LABEL_24;
            }

            if (!v38)
            {

LABEL_23:

              v71 = swift_task_alloc();
              sub_22D8AFAB4(v71);
              sub_22D8B0D1C();
              v72 = sub_22D8508F8();
              v30(v72);
              v73 = objc_allocWithZone(v164);
LABEL_24:
              sub_22D8B109C();
              swift_isUniquelyReferenced_nonNull_native();
              v179 = v14;
              sub_22D84C55C();
              v74 = sub_22D8AF214();
              sub_22D8AD600(v74, v75, v2, v76, &unk_27DA0DCA8, &unk_22D8B4E10, v77);

              v78 = sub_22D84F910();
              v79(v78);
LABEL_25:

              goto LABEL_26;
            }

            v53 = sub_22D852D10(v37, v2);
            v55 = v54;

            if ((v55 & 1) == 0)
            {
              goto LABEL_23;
            }

            v56 = *(*(v14 + 56) + 8 * v53);

            v57 = v56;
            sub_22D8B10AC();
            sub_22D8B10BC();
            sub_22D8B107C();
            sub_22D8B108C();
            sub_22D8B10CC();
            sub_22D8B10DC();

            v66 = sub_22D8AF940(v58, v59, v60, v61, v62, v63, v64, v65, v156, *(&v156 + 1), v158, v159, v160, v161, v162, v163, v164, v28);
            v67(v66);
          }

          else
          {
            v51 = sub_22D84F910();
            v52(v51);
          }

LABEL_26:

          v25 = v174 + v168;
          v3 = (v176 - 1);
          if (v176 == 1)
          {

            v0 = v170;
            v16 = v160;
            v17 = v161;
            goto LABEL_33;
          }
        }
      }

LABEL_33:
      ++v16;
      v94 = v0[100];
      sub_22D84D8A0(v0 + 54);
      if (v16 == v94)
      {
        goto LABEL_34;
      }
    }

LABEL_29:
    sub_22D84E298((v0 + 54), (v0 + 59));
    v80 = sub_22D8B176C();
    v81 = sub_22D8B1C4C();
    if (sub_22D84F8E8(v81))
    {
      v82 = sub_22D84DD3C();
      v83 = sub_22D84CE7C();
      sub_22D8AF8E4(v83, v84, v85, v86, v87, v88, v89, v90, v156);
      sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
      sub_22D8B1A3C();
      sub_22D8AFE7C();
      sub_22D84D8A0(v0 + 59);
      v91 = sub_22D8AF220();
      sub_22D84C63C(v91, v92, v93);
      sub_22D84D0E8();
      v17 = v161;

      *(v82 + 4) = v2;
      sub_22D8AF804(&dword_22D84A000, v80, v81, "could not find resource: %s inside resourceToReadinessMapping", v157);
      sub_22D84D8A0(v3);
      sub_22D8AF038();
      sub_22D84D6DC();
    }

    else
    {

      sub_22D84D8A0(v0 + 59);
    }

    goto LABEL_33;
  }

LABEL_34:
  v95 = v0[92];

  v96 = v14 + 64;
  sub_22D84E484();
  v99 = v98 & v97;
  sub_22D8AF3E8();
  v101 = v100 >> 6;
  v178 = v102;

  v103 = 0;
  v177 = v96;
  if (!v99)
  {
    goto LABEL_36;
  }

  do
  {
    v104 = v103;
LABEL_39:
    v105 = __clz(__rbit64(v99));
    v99 &= v99 - 1;
    v106 = v105 | (v104 << 6);
    v107 = (*(v178 + 48) + 16 * v106);
    v108 = *v107;
    v109 = v107[1];
    v110 = *(*(v178 + 56) + 8 * v106);

    v95 = sub_22D8B176C();
    v111 = sub_22D8B1C6C();

    if (os_log_type_enabled(v95, v111))
    {
      v112 = sub_22D8AF4E8();
      v172 = v95;
      v113 = sub_22D84E1FC();
      v175 = sub_22D84CE7C();
      v179 = v175;
      *v112 = 136315394;
      v114 = sub_22D84C63C(v108, v109, &v179);

      *(v112 + 4) = v114;
      *(v112 + 12) = 2112;
      *(v112 + 14) = v110;
      *v113 = v110;
      v115 = v110;
      _os_log_impl(&dword_22D84A000, v172, v111, "useCase: %s has availability: %@", v112, 0x16u);
      sub_22D84D014(v113, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D85167C();
      v95 = v175;
      sub_22D84D8A0(v175);
      sub_22D85167C();
      sub_22D84F8CC();
    }

    else
    {
    }

    v103 = v104;
    v96 = v177;
  }

  while (v99);
  while (1)
  {
LABEL_36:
    v104 = v103 + 1;
    if (__OFADD__(v103, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      sub_22D8AF90C();

      sub_22D8B1FBC();
      return;
    }

    if (v104 >= v101)
    {
      break;
    }

    v99 = *(v96 + 8 * v104);
    ++v103;
    if (v99)
    {
      goto LABEL_39;
    }
  }

  v116 = v178;

  sub_22D8B113C();
  sub_22D8AF1BC(&qword_2814591E8);
  v166 = sub_22D8B193C();
  sub_22D8AFD30();
  v119 = v117 & v118;
  v121 = (63 - v120) >> 6;

  v122 = 0;
  v169 = v121;
  while (1)
  {
    v123 = v122;
    if (v119)
    {
      goto LABEL_46;
    }

    do
    {
      v122 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        goto LABEL_73;
      }

      if (v122 >= v121)
      {
        sub_22D8AFD10();

        (v122)(v166, 0);

        sub_22D84D800();
        sub_22D8AF90C();

        __asm { BRAA            X1, X16 }
      }

      v119 = *(v96 + 8 * v122);
      ++v123;
    }

    while (!v119);
    while (2)
    {
      sub_22D8AFD64();
      v173 = *(*(v116 + 56) + 8 * (v124 | (v122 << 6)));
      v125 = sub_22D8B0D8C();
      sub_22D84D7DC();
      v167 = v126;
      v127 = sub_22D8AF5EC();
      v128 = sub_22D8580D8(qword_27DA0D9F0, &unk_22D8B4DE0);
      sub_22D84C3FC(v128);
      sub_22D84C584();
      sub_22D8AF338();
      swift_bridgeObjectRetain_n();
      v129 = v173;
      sub_22D8B0D7C();
      v130 = sub_22D8AF22C();
      sub_22D8AFBB4(v130, v131, v125);
      if (v132)
      {

        sub_22D84D014(v95, qword_27DA0D9F0, &unk_22D8B4DE0);

        v123 = v122;
        v116 = v178;
LABEL_46:
        v122 = v123;
        continue;
      }

      break;
    }

    sub_22D8AF0BC();
    v133();

    swift_task_alloc();
    (*(v167 + 16))();
    v134 = sub_22D8B112C();

    v135 = v166;
    if ((v166 & 0xC000000000000001) != 0)
    {
      if (v166 >= 0)
      {
        v135 = v166 & 0xFFFFFFFFFFFFFF8;
      }

      v136 = v129;
      v137 = sub_22D8B1EDC();
      if (__OFADD__(v137, 1))
      {
        goto LABEL_79;
      }

      v135 = sub_22D8ACE5C(v135, v137 + 1);
    }

    else
    {
      v138 = v129;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v179 = v135;
    sub_22D870F3C(v134);
    sub_22D8AF02C();
    if (__OFADD__(v141, v142))
    {
      break;
    }

    v143 = v139;
    v144 = v140;
    sub_22D8580D8(&qword_27DA0DCA0, &qword_22D8B4E08);
    v145 = sub_22D8B1EAC();
    v95 = v179;
    if (v145)
    {
      sub_22D870F3C(v134);
      sub_22D850930();
      if (!v132)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v146 = v143;
    }

    v96 = v177;
    v166 = v95;
    if (v144)
    {
      isa = v95[7].isa;
      v148 = *(isa + v146);
      v95 = v129;
      *(isa + v146) = v129;

      (*(v167 + 8))(v127, v125);
    }

    else
    {
      sub_22D8AF544();
      sub_22D84DDB0(v149);
      *(v95[6].isa + v150) = v134;
      *(v95[7].isa + v150) = v129;

      (*(v167 + 8))(v127, v125);
      sub_22D8AF538();
      if (v152)
      {
        goto LABEL_80;
      }

      v95[2].isa = v151;
    }

    v116 = v178;
    v121 = v169;
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

uint64_t sub_22D89F92C(uint64_t a1)
{
  sub_22D84E124((a1 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_unifiedAssetInterface), *(a1 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_unifiedAssetInterface + 24));
  sub_22D8580D8(&qword_27DA0DC98, &unk_22D8B4DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D8B3470;
  *(inited + 32) = sub_22D8B0DAC();
  *(inited + 40) = v2;
  *(inited + 48) = MEMORY[0x277D84F90];
  sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
  v3 = sub_22D8B193C();
  sub_22D8678C0(v3);

  return sub_22D8B1D0C();
}

void sub_22D89FAC4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_22D8B113C();
    sub_22D8B10EC();
    sub_22D8AEC30(&qword_2814591E8, MEMORY[0x282221C18]);
    v5 = sub_22D8B190C();
  }

  if (a2)
  {
    v6 = sub_22D8B068C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_22D89FBDC(uint64_t a1, uint64_t a2)
{
  sub_22D8B0028();
  sub_22D8AFEA0();
  v6 = v5;
  v7 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  sub_22D84C3FC(v7);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v8);
  sub_22D8B1B9C();
  sub_22D84E35C();
  sub_22D84C4F8(v9, v10, v11, v12);
  sub_22D8AF500();
  v13 = swift_allocObject();
  v14 = sub_22D8AFDA4(v13);
  v14[4] = v3;
  v14[5] = v6;
  v14[6] = v4;
  v15 = v3;

  v16 = sub_22D862778();
  v2(v16);

  sub_22D8AFEDC();
}

uint64_t sub_22D89FCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_22D89FCD4, 0, 0);
}

uint64_t sub_22D89FCD4()
{
  sub_22D872924();
  v1 = v0[9];
  v2 = sub_22D8B0B2C();
  v0[12] = v2;
  sub_22D84C5D0(v2);
  v0[13] = v3;
  v0[14] = *(v4 + 64);
  v5 = sub_22D84C584();
  v0[15] = v5;
  v6 = (v1 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_subscriptionManager);
  v7 = *(v1 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_subscriptionManager + 24);
  v8 = v6[4];
  sub_22D84E124(v6, v7);
  sub_22D8580D8(&qword_27DA0DC98, &unk_22D8B4DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D8B3470;
  *(inited + 32) = sub_22D8B0FCC();
  *(inited + 40) = v10;
  sub_22D8580D8(&qword_27DA0D7E0, &unk_22D8B3D70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22D8B3470;
  *(v11 + 32) = sub_22D8B116C();
  *(v11 + 40) = v12;
  *(inited + 48) = v11;
  sub_22D8580D8(&qword_27DA0D7A0, &unk_22D8B3B50);
  v13 = sub_22D8B193C();
  v0[16] = v13;
  swift_task_alloc();
  sub_22D84DDC0();
  v0[17] = v14;
  *v14 = v15;
  v14[1] = sub_22D89FEAC;

  return MEMORY[0x282188950](v5, v13, v7, v8);
}

uint64_t sub_22D89FEAC()
{
  sub_22D84D198();
  sub_22D84C734();
  v1 = *v0;
  sub_22D84CED0();
  *v2 = v1;

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D8A03C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;

  return MEMORY[0x2822009F8](sub_22D8A0460, 0, 0);
}

void sub_22D8A0460()
{
  sub_22D8516FC();
  v323 = v0;
  v1 = v0;
  v322 = *MEMORY[0x277D85DE8];
  sub_22D8B092C();
  v2 = 0;
  if (!*(v0 + 80))
  {
    sub_22D84D014(v0 + 56, &qword_27DA0DC70, &unk_22D8B4C10);
    v123 = 0x281458000;
    if (qword_2814589E0 != -1)
    {
      goto LABEL_181;
    }

    goto LABEL_69;
  }

  sub_22D851550((v0 + 56), v0 + 16);
  sub_22D8AF0E0((v0 + 16), *(v0 + 40));
  sub_22D8AF778();
  v15 = sub_22D8B0B3C();
  v16 = sub_22D8B193C();
  v311 = *(v15 + 16);
  v304 = v0;
  if (v311)
  {
    v17 = 0;
    v2 = v15 + 32;
    v309 = v15;
    do
    {
      if (v17 >= *(v15 + 16))
      {
        goto LABEL_172;
      }

      sub_22D84E298(v2, v1 + 96);
      sub_22D8AF0E0((v1 + 96), *(v1 + 120));
      sub_22D8AF778();
      v18 = sub_22D8B0A4C();
      v20 = v19;
      sub_22D8AF0E0((v1 + 96), *(v1 + 120));
      sub_22D8AF778();
      v1 = sub_22D8B0A6C();
      v315 = v21;
      swift_isUniquelyReferenced_nonNull_native();
      v318 = v16;
      v22 = sub_22D8AF784();
      sub_22D852D10(v22, v23);
      sub_22D8AF02C();
      if (__OFADD__(v26, v27))
      {
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      v28 = v24;
      v29 = v25;
      sub_22D8580D8(&qword_27DA0DC08, &qword_22D8B4A80);
      sub_22D8AF82C();
      if (sub_22D8B1EAC())
      {
        v30 = sub_22D8AF784();
        sub_22D852D10(v30, v31);
        sub_22D8554D4();
        if (!v33)
        {
          sub_22D872A24();

          sub_22D8B1FBC();
          return;
        }

        v28 = v32;
      }

      if (v29)
      {

        v16 = v318;
        sub_22D8AFD98(v318[7]);
        *v34 = v1;
        v34[1] = v315;
      }

      else
      {
        v16 = v318;
        sub_22D84DDB0(&v318[v28 >> 6]);
        v35 = (v318[6] + 16 * v28);
        *v35 = v18;
        v35[1] = v20;
        v36 = (*(v16 + 56) + 16 * v28);
        *v36 = v1;
        v36[1] = v315;
        v37 = *(v16 + 16);
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_177;
        }

        *(v16 + 16) = v39;
      }

      ++v17;
      v1 = v0;
      sub_22D84D8A0((v0 + 96));
      v2 += 40;
      v15 = v309;
    }

    while (v311 != v17);
  }

  v286 = v1 + 136;
  v291 = (v1 + 152);
  v40 = *(v1 + 160);

  sub_22D8580D8(&qword_27DA0D828, &unk_22D8B4DB0);
  sub_22D8B193C();
  v41 = 0;
  v42 = -1 << *(v16 + 32);
  if (-v42 < 64)
  {
    v43 = ~(-1 << -v42);
  }

  else
  {
    v43 = -1;
  }

  v2 = v43 & *(v16 + 64);
  v44 = OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_variantResolverMappings;
  sub_22D8AF3E8();
  v47 = v46 >> 6;
  v310 = v16;
  v301 = v45;
  v302 = v48;
  v316 = v46 >> 6;
LABEL_27:
  while (2)
  {
    if (v2)
    {
LABEL_32:
      v50 = (v41 << 10) | (16 * __clz(__rbit64(v2)));
      v51 = *(v16 + 56);
      v52 = (*(v16 + 48) + v50);
      v53 = *v52;
      v54 = v52[1];
      v55 = (v51 + v50);
      v56 = *v55;
      isUniquelyReferenced_nonNull_native = v55[1];
      v58 = *(v40 + v44);
      v59 = *(v58 + 16);

      if (v59)
      {

        v60 = sub_22D852D10(v53, v54);
        if (v61)
        {
          v2 &= v2 - 1;
          v62 = *(*(v58 + 56) + 8 * v60);
          v16 = v310;
          if (!*(v62 + 16))
          {
LABEL_37:

            v45 = v301;
            v47 = v316;
            continue;
          }

          v63 = sub_22D852D10(v56, isUniquelyReferenced_nonNull_native);
          if ((v64 & 1) == 0)
          {

            goto LABEL_37;
          }

          v296 = v44;
          v298 = v40;
          v65 = *(*(v62 + 56) + 8 * v63);
          v283 = v65 + 64;
          sub_22D855954();
          v66 = sub_22D8580D8(&qword_27DA0D830, &unk_22D8B3E10);
          sub_22D84C3FC(v66);
          v293 = swift_task_alloc();
          v282 = (63 - v62) >> 6;
          v284 = v65;
          swift_bridgeObjectRetain_n();
          v1 = 0;
          v294 = v54;
          while (1)
          {
            v67 = swift_task_alloc();
            if (v44)
            {
              v68 = v1;
LABEL_46:
              v312 = (v44 - 1) & v44;
              v70 = __clz(__rbit64(v44)) | (v68 << 6);
              v71 = *(sub_22D8B122C() - 8);
              sub_22D84C584();
              (*(v71 + 16))();
              v72 = *(*(v284 + 56) + 8 * v70);
              v73 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
              v74 = *(v73 + 48);
              v75 = sub_22D8AF448();
              v76(v75);
              *(v67 + v74) = v72;
              sub_22D84C4F8(v67, 0, 1, v73);

              v16 = v310;
              v54 = v294;
              v69 = v293;
            }

            else
            {
              v69 = v293;
              while (1)
              {
                v68 = v1 + 1;
                if (__OFADD__(v1, 1))
                {
                  goto LABEL_178;
                }

                if (v68 >= v282)
                {
                  break;
                }

                v44 = *(v283 + 8 * v68);
                ++v1;
                if (v44)
                {
                  v1 = v68;
                  goto LABEL_46;
                }
              }

              sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
              sub_22D84E35C();
              sub_22D84C4F8(v116, v117, v118, v119);
              v312 = 0;
            }

            v77 = sub_22D8AF0D4();
            sub_22D8AED30(v77, v78, &qword_27DA0D830, &unk_22D8B3E10);

            sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
            v79 = sub_22D8AEFC8();
            sub_22D8AFBB4(v79, 1, v67);
            if (v33)
            {

              v44 = v296;
              v40 = v298;
              v45 = v301;
              v47 = v316;
              goto LABEL_27;
            }

            v80 = sub_22D8B122C();
            sub_22D84D7DC();
            v82 = v81;
            v83 = sub_22D84C584();
            v306 = *(v69 + *(v67 + 48));
            (*(v82 + 32))(v83, v69, v80);
            v84 = sub_22D8B121C();
            if (!*(v302 + 16))
            {
              break;
            }

            sub_22D852D10(v84, v85);
            v87 = v86;

            v44 = v312;
            if ((v87 & 1) == 0)
            {
              goto LABEL_60;
            }

            v53 = sub_22D8B121C();
            v89 = v88;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v318 = v302;
            v288 = sub_22D852D10(v53, v89);
            sub_22D8AF02C();
            if (__OFADD__(v91, v92))
            {
              __break(1u);
LABEL_183:
              __break(1u);
LABEL_184:
              sub_22D86845C();
              swift_once();
LABEL_163:
              v266 = sub_22D8B178C();
              sub_22D84DD10(v266, qword_281459298);

              v267 = sub_22D8B176C();
              sub_22D8B1C4C();

              v1 = v304;
              if (sub_22D868510())
              {
                sub_22D84DD3C();
                v268 = sub_22D854F30();
                v318 = v268;
                *isUniquelyReferenced_nonNull_native = 136315138;
                *(isUniquelyReferenced_nonNull_native + 4) = sub_22D84C63C(v53, v54, &v318);
                sub_22D84E1F0();
                sub_22D8B015C(v269, v270, v271, v272);
                sub_22D84D8A0(v268);
                sub_22D84D6DC();
                sub_22D8AF2DC();
              }

              v273 = sub_22D8B09FC();
              v274 = sub_22D8AF63C(&qword_27DA0DC90);
              sub_22D8AFC60(v273, v274);
              sub_22D8AF360();
              sub_22D8B1E2C();

              sub_22D84F5A0();
              v276 = sub_22D8AFD44(v275);
              MEMORY[0x2318D4340](v276, v54);
              v277 = v318;
              v278 = v319;
              *isUniquelyReferenced_nonNull_native = v53;
              *(isUniquelyReferenced_nonNull_native + 8) = v54;
              *(isUniquelyReferenced_nonNull_native + 16) = v277;
              *(isUniquelyReferenced_nonNull_native + 24) = v278;
              sub_22D84C5C4();
              (*(v279 + 104))(isUniquelyReferenced_nonNull_native);
LABEL_166:
              swift_willThrow();

              sub_22D84D8A0((v1 + 16));
              v138 = 0x281458000;
LABEL_2:
              if (*(v138 + 2528) == -1)
              {
LABEL_3:
                v3 = sub_22D8B178C();
                sub_22D84C6FC(v3, qword_281459298);
                v4 = sub_22D8AF054();
                v5 = sub_22D8B176C();
                v6 = sub_22D8B1C4C();

                if (os_log_type_enabled(v5, v6))
                {
                  v7 = sub_22D84DD3C();
                  v8 = sub_22D84E1FC();
                  *v7 = 138412290;
                  v9 = v2;
                  v10 = _swift_stdlib_bridgeErrorToNSError();
                  *(v7 + 4) = v10;
                  *v8 = v10;
                  _os_log_impl(&dword_22D84A000, v5, v6, "supportedArguments: error while processing request %@.", v7, 0xCu);
                  sub_22D84D014(v8, &qword_27DA0D4D0, &qword_22D8B3400);
                  sub_22D84DDE4();
                  sub_22D8AF038();
                }

                v11 = *(v1 + 184);

                v12 = v2;
                v11(0, v2);

LABEL_6:
                sub_22D872A24();

                __asm { BRAA            X1, X16 }
              }

LABEL_179:
              sub_22D86845C();
              swift_once();
              goto LABEL_3;
            }

            v93 = v90;
            sub_22D8580D8(&unk_27DA0D840, &qword_22D8B3E20);
            sub_22D8AF82C();
            if (sub_22D8B1EAC())
            {
              v288 = sub_22D852D10(v53, v89);
              sub_22D8554D4();
              if (!v33)
              {
                goto LABEL_149;
              }
            }

            v53 = v306;
            if ((v93 & 1) == 0)
            {
              goto LABEL_183;
            }

            sub_22D855238();
            v96 = *(v94 + 8 * v95);
            *v291 = v306;
            LOBYTE(v94) = *(v96 + 32);
            v97 = v94 & 0x3F;
            v98 = 1 << v94;
            isStackAllocationSafe = swift_task_alloc();
            *(isStackAllocationSafe + 16) = v291;
            *(isStackAllocationSafe + 24) = v96;
            v100 = (v98 + 63) >> 6;
            if (v97 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
            {
              MEMORY[0x28223BE20](isStackAllocationSafe);
              sub_22D8AFE88();
              sub_22D88C8E8(v101, v102, v103);
              sub_22D8AF430();
              sub_22D8AE3D4(v104, v105, v106, v96);
              sub_22D85331C();
            }

            else
            {
              v122 = swift_slowAlloc();
              sub_22D8AE560(v122, v100, sub_22D8AEB84);
              sub_22D85331C();

              sub_22D8AF038();

              v54 = v294;
              v44 = v312;
            }

            v16 = v310;
            if (v100)
            {

              sub_22D855238();
              *(v107 + 8 * v108) = v100;
            }

            else
            {

              sub_22D872840(v318[6] + 16 * v288);
              sub_22D851E68();
              sub_22D8B1EBC();
            }

            v120 = sub_22D8AFD78();
            v121(v120);

            v302 = v318;
LABEL_64:
          }

          v44 = v312;
LABEL_60:
          v109 = sub_22D8B121C();
          v111 = v110;
          v112 = sub_22D851EAC(v306);
          v113 = swift_isUniquelyReferenced_nonNull_native();
          v318 = v302;
          sub_22D8AD538(v112, v109, v111, v113, &unk_27DA0D840, &qword_22D8B3E20, sub_22D87954C);
          v54 = v294;

          v114 = sub_22D8AFD78();
          v115(v114);
          v16 = v310;
          goto LABEL_64;
        }
      }

      if (qword_2814589E0 != -1)
      {
        goto LABEL_184;
      }

      goto LABEL_163;
    }

    break;
  }

  while (1)
  {
    v49 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v49 >= v47)
    {

      if (*(v302 + 16))
      {
        v297 = v44;
        v299 = v40;
        v1 = v302 + 64;
        sub_22D84E484();
        v141 = v140 & v139;
        sub_22D8AF3E8();
        v123 = (v142 >> 6);

        v143 = 0;
        v144 = MEMORY[0x277D84F90];
        v317 = MEMORY[0x277D84F90];
        for (i = MEMORY[0x277D84F90]; ; i[v161 + 4] = v2)
        {
          v2 = 0;
          if (v141)
          {
            v145 = v302;
            goto LABEL_81;
          }

          v145 = v302;
          do
          {
            v146 = v143 + 1;
            if (__OFADD__(v143, 1))
            {
              goto LABEL_174;
            }

            if (v146 >= v123)
            {

              v320 = sub_22D893F6C(v171);
              v321 = v172;
              v292 = v320;

              v295 = MEMORY[0x277D84F90];
LABEL_95:
              while (1)
              {
                sub_22D894070();
                if (!v173)
                {
                  break;
                }

                v174 = v173;
                v300 = v2;
                sub_22D8AF778();
                v123 = sub_22D8B193C();
                v175 = 0;
                v305 = v174;
                v307 = *(v317 + 16);
                while (v307 != v175)
                {
                  sub_22D8AF988();
                  if (v178)
                  {
                    __break(1u);
LABEL_170:
                    __break(1u);
LABEL_171:
                    __break(1u);
LABEL_172:
                    __break(1u);
                    goto LABEL_173;
                  }

                  if (v177 >= *(v174 + 16))
                  {
                    goto LABEL_170;
                  }

                  v313 = v177;
                  v180 = *(v317 + v176 + 32);
                  v179 = *(v317 + v176 + 40);
                  v2 = v176;
                  v181 = *(v174 + v176 + 32);
                  v182 = *(v174 + v176 + 40);

                  swift_isUniquelyReferenced_nonNull_native();
                  v318 = v123;
                  v183 = sub_22D8AF784();
                  sub_22D852D10(v183, v184);
                  sub_22D8AF02C();
                  if (__OFADD__(v187, v188))
                  {
                    goto LABEL_171;
                  }

                  v1 = v185;
                  v189 = v186;
                  sub_22D8580D8(&qword_27DA0DC08, &qword_22D8B4A80);
                  sub_22D8AF82C();
                  v190 = sub_22D8B1EAC();
                  v123 = v318;
                  if (v190)
                  {
                    v191 = sub_22D8AF784();
                    sub_22D852D10(v191, v192);
                    sub_22D8554D4();
                    if (!v33)
                    {
LABEL_149:
                      sub_22D8B1FBC();
                      goto LABEL_150;
                    }

                    v1 = v193;
                  }

                  if (v189)
                  {
                    v194 = (v123[7] + 16 * v1);
                    *v194 = v181;
                    v194[1] = v182;
                  }

                  else
                  {
                    sub_22D84DDB0(&v123[v1 >> 6]);
                    v195 = (v123[6] + 16 * v1);
                    *v195 = v180;
                    v195[1] = v179;
                    v196 = (v123[7] + 16 * v1);
                    *v196 = v181;
                    v196[1] = v182;
                    v197 = v123[2];
                    v38 = __OFADD__(v197, 1);
                    v198 = v197 + 1;
                    if (v38)
                    {
                      goto LABEL_176;
                    }

                    v123[2] = v198;
                  }

                  v16 = v310;
                  v175 = v313 + 1;
                  v174 = v305;
                }

                v199 = -1 << *(v16 + 32);
                if (-v199 < 64)
                {
                  v200 = ~(-1 << -v199);
                }

                else
                {
                  v200 = -1;
                }

                v201 = v200 & *(v16 + 64);
                v202 = (63 - v199) >> 6;

                v1 = 0;
                v314 = v202;
LABEL_114:
                v203 = v1;
                v2 = v300;
LABEL_115:
                v204 = v301;
                if (!v201)
                {
                  goto LABEL_117;
                }

                do
                {
                  v1 = v203;
LABEL_120:
                  v205 = (*(v16 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v201)))));
                  v206 = *v205;
                  v207 = v205[1];
                  v208 = *(v299 + v297);
                  v209 = *(v208 + 16);

                  if (!v209 || (v210 = sub_22D852D10(v206, v207), (v211 & 1) == 0))
                  {

                    if (qword_2814589E0 != -1)
                    {
                      sub_22D86845C();
                      swift_once();
                    }

                    v252 = sub_22D8B178C();
                    sub_22D84DD10(v252, qword_281459298);

                    v253 = sub_22D8B176C();
                    sub_22D8B1C4C();

                    v1 = v304;
                    if (sub_22D868510())
                    {
                      sub_22D84DD3C();
                      v254 = sub_22D854F30();
                      v318 = v254;
                      *v292 = 136315138;
                      *(v292 + 4) = sub_22D84C63C(v206, v207, &v318);
                      sub_22D84E1F0();
                      sub_22D8B015C(v255, v256, v257, v258);
                      sub_22D84D8A0(v254);
                      sub_22D84D6DC();
                      sub_22D8AF2DC();
                    }

                    v259 = sub_22D8B09FC();
                    v260 = sub_22D8AF63C(&qword_27DA0DC90);
                    sub_22D8AFC60(v259, v260);
                    sub_22D8AF360();
                    sub_22D8B1E2C();

                    sub_22D84F5A0();
                    v262 = sub_22D8AFD44(v261);
                    MEMORY[0x2318D4340](v262, v207);
                    v263 = v318;
                    v264 = v319;
                    *v292 = v206;
                    *(v292 + 8) = v207;
                    *(v292 + 16) = v263;
                    *(v292 + 24) = v264;
                    sub_22D84C5C4();
                    (*(v265 + 104))(v292);
                    goto LABEL_166;
                  }

                  v212 = v210;
                  v201 &= v201 - 1;

                  v213 = *(*(v208 + 56) + 8 * v212);
                  if (*(v213 + 16))
                  {

                    v214 = sub_22D84C538();
                    v216 = sub_22D852D10(v214, v215);
                    v218 = v217;

                    v16 = v310;
                    v202 = v314;
                    if ((v218 & 1) == 0)
                    {

                      v203 = v1;
                      goto LABEL_115;
                    }

                    v219 = *(*(v213 + 56) + 8 * v216);

                    v220 = v219 + 64;
                    sub_22D855954();
                    v290 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
                    sub_22D84C740();
                    v221 = sub_22D84C584();
                    v222 = (63 - v213) >> 6;
                    v308 = v219;

                    v223 = 0;
                    v287 = v219 + 64;
                    v285 = v222;
                    v289 = v221;
                    while (1)
                    {
                      v300 = v2;
                      if (!v207)
                      {
                        break;
                      }

                      v2 = v223;
LABEL_133:
                      v224 = __clz(__rbit64(v207)) | (v2 << 6);
                      v225 = *(v308 + 48);
                      sub_22D8B122C();
                      sub_22D84C740();
                      (*(v226 + 16))(v221, v225 + *(v226 + 72) * v224);
                      v227 = *(*(v308 + 56) + 8 * v224);
                      *(v221 + *(v290 + 48)) = v227;

                      v228 = sub_22D8B121C();
                      if (!v123[2])
                      {

                        v2 = v300;
LABEL_147:
                        sub_22D84D014(v221, &qword_27DA0D838, &unk_22D8B4DC0);

                        goto LABEL_95;
                      }

                      v230 = sub_22D852D10(v228, v229);
                      v232 = v231;

                      if ((v232 & 1) == 0)
                      {
                        v2 = v300;
LABEL_146:
                        v221 = v289;
                        goto LABEL_147;
                      }

                      v233 = (v123[7] + 16 * v230);
                      v234 = v233[1];
                      v304[17] = *v233;
                      v304[18] = v234;
                      v235 = swift_task_alloc();
                      *(v235 + 16) = v286;

                      v236 = sub_22D855C1C(sub_22D8AEE90, v235, v227);

                      if (!v236)
                      {
                        v2 = 0;
                        v16 = v310;
                        goto LABEL_146;
                      }

                      sub_22D8AF964();
                      v221 = v289;
                      sub_22D84D014(v289, &qword_27DA0D838, &unk_22D8B4DC0);
                      v223 = v2;
                      v2 = 0;
                      v16 = v310;
                      v220 = v287;
                      v222 = v285;
                    }

                    while (1)
                    {
                      v2 = v223 + 1;
                      if (__OFADD__(v223, 1))
                      {
                        goto LABEL_180;
                      }

                      if (v2 >= v222)
                      {
                        break;
                      }

                      v207 = *(v220 + 8 * v2);
                      ++v223;
                      if (v207)
                      {
                        goto LABEL_133;
                      }
                    }

                    v202 = v314;
                    goto LABEL_114;
                  }

                  v203 = v1;
                  v16 = v310;
                  v202 = v314;
                  v204 = v301;
                }

                while (v201);
                while (1)
                {
LABEL_117:
                  v1 = v203 + 1;
                  if (__OFADD__(v203, 1))
                  {
                    goto LABEL_175;
                  }

                  if (v1 >= v202)
                  {
                    break;
                  }

                  v201 = *(v204 + 8 * v1);
                  ++v203;
                  if (v201)
                  {
                    goto LABEL_120;
                  }
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v239 = sub_22D84DAB8();
                  sub_22D88C2D0(v239, v240, v241, v242);
                  v295 = v243;
                }

                sub_22D8AF060();
                if (v178)
                {
                  v244 = sub_22D854F8C(v237);
                  sub_22D88C2D0(v244, v245, v246, v295);
                  v295 = v247;
                  sub_22D8AF958(v247);
                }

                else
                {
                  sub_22D8AF958(v295);
                }

                *(v238 + 32) = v123;
              }

              v248 = v304;
              v280 = v304[23];

              v280(v295, 0);

LABEL_152:

              sub_22D84D8A0(v248 + 2);
              goto LABEL_6;
            }

            v141 = *(v1 + 8 * v146);
            ++v143;
          }

          while (!v141);
          v143 = v146;
LABEL_81:
          v147 = __clz(__rbit64(v141)) | (v143 << 6);
          v148 = (*(v145 + 48) + 16 * v147);
          v149 = *v148;
          v150 = v148[1];
          v151 = *(*(v145 + 56) + 8 * v147);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22D84DAB8();
            sub_22D851D5C();
            v317 = v162;
          }

          v153 = *(v317 + 16);
          v152 = *(v317 + 24);
          if (v153 >= v152 >> 1)
          {
            sub_22D84C4D0(v152);
            sub_22D851D5C();
            v317 = v163;
          }

          *(v317 + 16) = v153 + 1;
          v154 = v317 + 16 * v153;
          *(v154 + 32) = v149;
          *(v154 + 40) = v150;
          v155 = *(v151 + 16);
          if (v155)
          {
            v156 = sub_22D8580D8(&qword_27DA0D7E0, &unk_22D8B3D70);
            v2 = sub_22D854FC8(v156);
            j__malloc_size(v2);
            sub_22D8AEF00();
            *(v2 + 16) = v155;
            *(v2 + 24) = v157;
            sub_22D8AE98C(&v318, (v2 + 32), v155, v151);
            v159 = v158;
            sub_22D879544(v318);
            v16 = v310;
            if (v159 != v155)
            {
              __break(1u);
LABEL_180:
              __break(1u);
LABEL_181:
              sub_22D86845C();
              swift_once();
LABEL_69:
              v124 = sub_22D8B178C();
              sub_22D84C6FC(v124, qword_281459298);
              sub_22D8AEFC8();

              v125 = sub_22D8B176C();
              v126 = sub_22D8B1C4C();

              if (os_log_type_enabled(v125, v126))
              {
                v128 = *(v1 + 168);
                v127 = *(v1 + 176);
                v129 = sub_22D84DD3C();
                v2 = sub_22D84CE7C();
                v318 = v2;
                *v129 = 136315138;
                *(v129 + 4) = sub_22D84C63C(v128, v127, &v318);
                sub_22D8AF804(&dword_22D84A000, v125, v126, "supportedArguments: Cannot find resource bundle for resourceBundleID: %s", v281);
                sub_22D8AEF40();
                sub_22D84D6DC();
              }

              v131 = *(v1 + 168);
              v130 = *(v1 + 176);
              v132 = sub_22D8B09FC();
              v133 = sub_22D8AF63C(&qword_27DA0DC90);
              sub_22D8AFC60(v132, v133);
              sub_22D8AF360();

              sub_22D8B1E2C();
              MEMORY[0x2318D4340](0xD000000000000032, 0x800000022D8B9230);
              v134 = sub_22D84CFB4();
              MEMORY[0x2318D4340](v134);
              v135 = v318;
              v136 = v319;
              *v126 = v131;
              v126[1] = v130;
              v126[2] = v135;
              v126[3] = v136;
              sub_22D84C5C4();
              (*(v137 + 104))(v126);
              swift_willThrow();
              v138 = v123;
              goto LABEL_2;
            }
          }

          else
          {

            v2 = v144;
            v16 = v310;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v164 = sub_22D84DAB8();
            sub_22D88C2F4(v164, v165, v166, v167);
            i = v168;
          }

          v161 = i[2];
          v160 = i[3];
          if (v161 >= v160 >> 1)
          {
            v169 = sub_22D84C4D0(v160);
            sub_22D88C2F4(v169, v161 + 1, 1, i);
            i = v170;
          }

          v141 &= v141 - 1;
          i[2] = v161 + 1;
        }
      }

      v248 = v304;
      v249 = v304[23];

      sub_22D8580D8(&qword_27DA0DBD8, &unk_22D8B4A38);
      v250 = swift_allocObject();
      *(v250 + 16) = xmmword_22D8B3470;
      *(v250 + 32) = sub_22D8B193C();
      v249(v250, 0);

      goto LABEL_152;
    }

    v2 = *(v45 + 8 * v49);
    ++v41;
    if (v2)
    {
      v41 = v49;
      goto LABEL_32;
    }
  }

  __break(1u);
  swift_willThrow();

LABEL_150:
  sub_22D872A24();
}