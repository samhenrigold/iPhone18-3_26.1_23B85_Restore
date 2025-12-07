void sub_1C72E805C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216880, &qword_1C7565658);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1C71FAC38(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
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
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1C7551F3C();
    sub_1C75505AC();

    v17 = sub_1C7551FAC();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + v21) = v16;
    ++*(v5 + 16);
    if (!v10)
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
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72E84C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219120, &unk_1C7581260);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
  v31 = v3;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1C71FAC38(0, (v30 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v30;
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
    v16 = *(v3 + 48) + 192 * (v13 | (v6 << 6));
    v17 = *v16;
    v33[0] = *(v16 + 1);
    *(v33 + 3) = *(v16 + 4);
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    memcpy(__dst, (v16 + 24), sizeof(__dst));
    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C75505AC();

    v20 = sub_1C7551FAC();
    v21 = -1 << *(v5 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v5 + 48) + 192 * v24;
    *v29 = v17;
    *(v29 + 1) = v33[0];
    *(v29 + 4) = *(v33 + 3);
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
    memcpy((v29 + 24), __dst, 0xA8uLL);
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

LABEL_29:
  __break(1u);
}

void sub_1C72E8828(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A610, &qword_1C7581220);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1C71FAC38(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
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
    v16 = *(v3 + 48) + 32 * (v13 | (v6 << 6));
    v17 = *v16;
    v30 = *(v16 + 8);
    v18 = *(v16 + 24);
    sub_1C7551F3C();
    sub_1C75505AC();
    v19 = sub_1C7551FAC();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 32 * v23;
    *v28 = v17;
    *(v28 + 8) = v30;
    *(v28 + 24) = v18;
    ++*(v5 + 16);
    if (!v10)
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
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72E8AA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A608, &qword_1C7581218);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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
      sub_1C71FAC38(0, (v28 + 63) >> 6, v3 + 56);
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
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v17 = *v16;
    v29 = *(v16 + 24);
    v30 = *(v16 + 8);
    sub_1C7551F3C();
    sub_1C75505AC();
    v18 = sub_1C7551FAC();
    v19 = -1 << *(v5 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v5 + 48) + 40 * v22;
    *v27 = v17;
    *(v27 + 8) = v30;
    *(v27 + 24) = v29;
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
}

void sub_1C72E8D1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A618, &qword_1C7581228);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1C71FAC38(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
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
    v16 = *(v3 + 48) + 48 * (v13 | (v6 << 6));
    v17 = *v16;
    v30 = *(v16 + 24);
    v31 = *(v16 + 8);
    v18 = *(v16 + 40);
    sub_1C7551F3C();
    sub_1C75505AC();
    v19 = sub_1C7551FAC();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 48 * v23;
    *v28 = v17;
    *(v28 + 8) = v31;
    *(v28 + 24) = v30;
    *(v28 + 40) = v18;
    ++*(v5 + 16);
    if (!v10)
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
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72E8FA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A600, &qword_1C7581208);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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
        goto LABEL_31;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1C71FAC38(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_1C7551F3C();
    sub_1C7551F5C();
    if (v17)
    {
      sub_1C75505AC();
    }

    v19 = sub_1C7551FAC();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 16 * v23);
    *v28 = v18;
    v28[1] = v17;
    ++*(v5 + 16);
    if (!v10)
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
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1C72E9230(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A668, &qword_1C75812D0);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v31 = v3;
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
  v12 = v4 + 56;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1C71FAC38(0, (v30 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v30;
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
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v34 = *(v16 + 25);
    v35 = *(v16 + 24);
    v33 = *(v16 + 26);
    v32 = *(v16 + 32);
    sub_1C7551F3C();
    MEMORY[0x1CCA5CD70](v17, v18);
    sub_1C75505AC();

    v20 = sub_1C7551FAC();
    v21 = -1 << *(v5 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v5 + 48) + 40 * v24;
    *v29 = v17;
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
    *(v29 + 24) = v35;
    *(v29 + 25) = v34;
    *(v29 + 26) = v33;
    v3 = v31;
    *(v29 + 32) = v32;
    ++*(v5 + 16);
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

LABEL_29:
  __break(1u);
}

void sub_1C72E9504(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A670, &qword_1C75812D8);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1C71FAC38(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
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
    v16 = *(v3 + 48) + ((v13 | (v6 << 6)) << 6);
    v31 = *v16;
    v32 = *(v16 + 16);
    v17 = *(v16 + 32);
    v18 = *(v16 + 40);
    v30 = *(v16 + 48);
    sub_1C7551F3C();
    MEMORY[0x1CCA5CD70](v17, v18);
    sub_1C75505AC();

    v19 = sub_1C7551FAC();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + (v23 << 6);
    *v28 = v31;
    *(v28 + 16) = v32;
    *(v28 + 32) = v17;
    *(v28 + 40) = v18;
    *(v28 + 48) = v30;
    ++*(v5 + 16);
    if (!v10)
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
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72E97B0()
{
  OUTLINED_FUNCTION_33();
  v4 = OUTLINED_FUNCTION_19_1();
  v5 = type metadata accessor for PartOfWeekExtendedToken(v4);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_31();
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A678, &qword_1C75812E0);
  v8 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_169_5(v8, v9);
  OUTLINED_FUNCTION_102_10();
  if (!v10)
  {
LABEL_23:

    *v0 = v1;
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v11 = 0;
  OUTLINED_FUNCTION_90_1();
  v14 = v13 & v12;
  OUTLINED_FUNCTION_72_5();
  if (!v14)
  {
LABEL_4:
    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v11 >= v3)
      {
        break;
      }

      OUTLINED_FUNCTION_176_2();
      if (v16)
      {
        OUTLINED_FUNCTION_78_0();
        v14 = v18 & v17;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_36_26();
    if (v24 >= 64)
    {
      v26 = OUTLINED_FUNCTION_66_1();
      sub_1C71FAC38(v26, v27, v7 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_9_2();
      *(v7 + 56) = v25;
    }

    *(v7 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    v14 &= v14 - 1;
LABEL_9:
    OUTLINED_FUNCTION_179_3();
    OUTLINED_FUNCTION_14_52();
    sub_1C72FBF10(v19, v2);
    sub_1C7551F3C();
    OUTLINED_FUNCTION_92_13();
    MEMORY[0x1CCA5CD70](*v2, v2[1]);
    sub_1C75505AC();

    sub_1C7551FAC();
    OUTLINED_FUNCTION_29_32();
    if (v20)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_17:
    OUTLINED_FUNCTION_114_9(v21);
    OUTLINED_FUNCTION_14_52();
    sub_1C72FBF10(v2, v23);
    OUTLINED_FUNCTION_47_1();
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v20)
    {
      if (v22)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_38_19();
    if (!v20)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_1C72E99CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A680, &qword_1C75812E8);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v31 = v3;
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
  v12 = v4 + 56;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1C71FAC38(0, (v30 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v30;
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
    v16 = *(v3 + 48) + 56 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v35 = *(v16 + 24);
    v33 = *(v16 + 40);
    v34 = *(v16 + 32);
    v32 = *(v16 + 48);
    sub_1C7551F3C();
    MEMORY[0x1CCA5CD70](v17, v18);
    sub_1C75505AC();

    v20 = sub_1C7551FAC();
    v21 = -1 << *(v5 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v5 + 48) + 56 * v24;
    *v29 = v17;
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
    *(v29 + 24) = v35;
    *(v29 + 32) = v34;
    *(v29 + 40) = v33;
    *(v29 + 48) = v32;
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

LABEL_29:
  __break(1u);
}

void sub_1C72E9CA4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TimeExtendedToken(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A688, &qword_1C75812F0);
  v7 = sub_1C755178C();
  v8 = v7;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return;
  }

  v31 = v1;
  v9 = 0;
  v10 = (v6 + 56);
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
  v15 = v7 + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      sub_1C71FAC38(0, (v29 + 63) >> 6, v6 + 56);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v32 + 72);
    sub_1C72FBF10(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5);
    sub_1C7551F3C();
    v33 = 0x3A656D6954;
    v34 = 0xE500000000000000;
    MEMORY[0x1CCA5CD70](*v5, v5[1]);
    sub_1C75505AC();

    v20 = sub_1C7551FAC();
    v21 = -1 << *(v8 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    sub_1C72FBF10(v5, *(v8 + 48) + v24 * v19);
    ++*(v8 + 16);
    if (!v13)
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
    v28 = *(v15 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72E9FD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A690, &qword_1C75812F8);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v31 = v3;
  v12 = v4 + 56;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1C71FAC38(0, (v30 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v30;
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
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v33 = *(v16 + 25);
    v34 = *(v16 + 24);
    v32 = *(v16 + 32);
    sub_1C7551F3C();
    sub_1C755180C();

    MEMORY[0x1CCA5CD70](v17, v18);
    sub_1C75505AC();

    v20 = sub_1C7551FAC();
    v21 = -1 << *(v5 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v5 + 48) + 40 * v24;
    *v29 = v17;
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
    *(v29 + 24) = v34;
    *(v29 + 25) = v33;
    *(v29 + 32) = v32;
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

LABEL_29:
  __break(1u);
}

void sub_1C72EA2CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A698, &qword_1C7581300);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1C71FAC38(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
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
    v16 = *(v3 + 48) + 56 * (v13 | (v6 << 6));
    v32 = *v16;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    v30 = *(v16 + 32);
    v31 = *(v16 + 48);
    sub_1C7551F3C();
    MEMORY[0x1CCA5CD70](v17, v18);
    sub_1C75505AC();

    v19 = sub_1C7551FAC();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 56 * v23;
    *v28 = v32;
    *(v28 + 16) = v17;
    *(v28 + 24) = v18;
    *(v28 + 32) = v30;
    *(v28 + 48) = v31;
    ++*(v5 + 16);
    if (!v10)
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
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72EA598(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6A0, &qword_1C7581308);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1C71FAC38(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
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
    v16 = *(v3 + 48) + 72 * (v13 | (v6 << 6));
    v32 = *v16;
    v33 = *(v16 + 16);
    v17 = *(v16 + 32);
    v18 = *(v16 + 40);
    v30 = *(v16 + 48);
    v31 = *(v16 + 64);
    sub_1C7551F3C();
    MEMORY[0x1CCA5CD70](v17, v18);
    sub_1C75505AC();

    v19 = sub_1C7551FAC();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 72 * v23;
    *v28 = v32;
    *(v28 + 16) = v33;
    *(v28 + 32) = v17;
    *(v28 + 40) = v18;
    *(v28 + 48) = v30;
    *(v28 + 64) = v31;
    ++*(v5 + 16);
    if (!v10)
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
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72EA86C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6A8, &qword_1C7581310);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1C71FAC38(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
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
    v16 = *(v3 + 48) + 72 * (v13 | (v6 << 6));
    v32 = *v16;
    v33 = *(v16 + 16);
    v17 = *(v16 + 32);
    v18 = *(v16 + 40);
    v30 = *(v16 + 48);
    v31 = *(v16 + 64);
    sub_1C7551F3C();
    MEMORY[0x1CCA5CD70](v17, v18);
    sub_1C75505AC();

    v19 = sub_1C7551FAC();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 72 * v23;
    *v28 = v32;
    *(v28 + 16) = v33;
    *(v28 + 32) = v17;
    *(v28 + 40) = v18;
    *(v28 + 48) = v30;
    *(v28 + 64) = v31;
    ++*(v5 + 16);
    if (!v10)
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
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72EAB48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219108, &qword_1C7581210);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1C71FAC38(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
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
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1C7551F3C();
    sub_1C75505AC();

    v17 = sub_1C7551FAC();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + v21) = v16;
    ++*(v5 + 16);
    if (!v10)
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
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72EAE2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219128, &qword_1C7576DB0);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v26 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = v4 + 56;
  if ((v10 & v7) == 0)
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

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_1C71FAC38(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    v17 = sub_1C7551F2C();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    if (!v11)
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
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72EB050(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219140, &qword_1C7576DB8);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1C71FAC38(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
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
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1C7551F3C();
    StoryMusicTermTag.rawValue.getter();
    sub_1C75505AC();

    v17 = sub_1C7551FAC();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + v21) = v16;
    ++*(v5 + 16);
    if (!v10)
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
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72EB2BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216758, &qword_1C75654D8);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
  v31 = v3;
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
        goto LABEL_31;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1C71FAC38(0, (v30 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_1C7551F3C();
    sub_1C75505AC();

    sub_1C7551F5C();
    if (v19)
    {
      sub_1C75505AC();
    }

    v20 = sub_1C7551FAC();
    v21 = -1 << *(v5 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v5 + 48) + 24 * v24;
    *v29 = v17;
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
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
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1C72EB664(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A628, &qword_1C7581258);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_33:

    *v2 = v5;
    return;
  }

  v36 = v1;
  v37 = v3;
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
  v12 = v4 + 56;
  v38 = v4;
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
        goto LABEL_35;
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
        v39 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      sub_1C71FAC38(0, (v35 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v35;
    }

    v2 = v36;
    *(v3 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v39 = (v10 - 1) & v10;
LABEL_12:
    v16 = (*(v3 + 48) + ((v13 | (v6 << 6)) << 6));
    v17 = *v16;
    v18 = v16[1];
    v20 = v16[2];
    v19 = v16[3];
    v21 = v16[4];
    v42 = v16[6];
    v43 = v16[5];
    v41 = v16[7];
    sub_1C7551F3C();
    v40 = v18;
    sub_1C75505AC();
    sub_1C75505AC();
    MEMORY[0x1CCA5E460](*(v21 + 16));
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = v21 + 40;
      do
      {
        sub_1C75504FC();
        sub_1C75505AC();

        v23 += 16;
        --v22;
      }

      while (v22);
    }

    sub_1C7551F5C();
    if (v42)
    {
      v24 = v43;
      sub_1C75505AC();
      v5 = v38;
    }

    else
    {
      v5 = v38;
      v24 = v43;
    }

    MEMORY[0x1CCA5E460](v41);
    v25 = sub_1C7551FAC();
    v26 = -1 << *(v5 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v5 + 48) + (v29 << 6));
    *v34 = v17;
    v34[1] = v40;
    v34[2] = v20;
    v34[3] = v19;
    v34[4] = v21;
    v34[5] = v24;
    v34[6] = v42;
    v34[7] = v41;
    ++*(v5 + 16);
    v3 = v37;
    v10 = v39;
    if (!v39)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v12 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_27;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1C72EB9B8(uint64_t a1)
{
  v2 = v1;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v45 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A648, &qword_1C75812A8);
  v7 = sub_1C755178C();
  v8 = v7;
  if (!*(v6 + 16))
  {
LABEL_30:

    *v2 = v8;
    return;
  }

  v44 = v2;
  v9 = 0;
  v10 = (v6 + 56);
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
  v15 = v7 + 56;
  v46 = v6;
  v47 = v7;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v50 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v43 = 1 << *(v6 + 32);
    if (v43 >= 64)
    {
      sub_1C71FAC38(0, (v43 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v43;
    }

    v2 = v44;
    *(v6 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v50 = (v13 - 1) & v13;
LABEL_12:
    v19 = *(v6 + 48) + 120 * (v16 | (v9 << 6));
    v20 = *v19;
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    v23 = *(v19 + 48);
    v53 = *(v19 + 32);
    v54 = v23;
    v55 = *(v19 + 64);
    v56 = v20;
    v24 = *(v19 + 80);
    v25 = *(v19 + 104);
    v51 = *(v19 + 88);
    v52 = v25;
    sub_1C7551F3C();
    v49 = v21;
    v48 = v22;
    sub_1C75505AC();
    MEMORY[0x1CCA5E460](*(v24 + 16));
    v26 = *(v24 + 16);
    if (v26)
    {
      v27 = v24 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
      v28 = *(v45 + 72);
      do
      {
        sub_1C72FBF68(v27, v5);
        QueryTokenCategoryType.hash(into:)();
        sub_1C70F76E0(v5, type metadata accessor for QueryTokenSuggestion);
        v27 += v28;
        --v26;
      }

      while (v26);
    }

    v29 = sub_1C7551FAC();
    v8 = v47;
    v30 = -1 << *(v47 + 32);
    v31 = v29 & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v6 = v46;
LABEL_24:
    *(v15 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v38 = *(v8 + 48) + 120 * v33;
    v39 = v55;
    *v38 = v56;
    v40 = v54;
    *(v38 + 32) = v53;
    *(v38 + 48) = v40;
    *(v38 + 64) = v39;
    v41 = v52;
    *(v38 + 88) = v51;
    v42 = v48;
    *(v38 + 16) = v49;
    *(v38 + 24) = v42;
    *(v38 + 80) = v24;
    *(v38 + 104) = v41;
    ++*(v8 + 16);
    v13 = v50;
    if (!v50)
    {
      goto LABEL_7;
    }
  }

  v34 = 0;
  v35 = (63 - v30) >> 6;
  while (++v32 != v35 || (v34 & 1) == 0)
  {
    v36 = v32 == v35;
    if (v32 == v35)
    {
      v32 = 0;
    }

    v34 |= v36;
    v37 = *(v15 + 8 * v32);
    if (v37 != -1)
    {
      v33 = __clz(__rbit64(~v37)) + (v32 << 6);
      v6 = v46;
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1C72EBDD4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C754F0FC();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219130, &qword_1C75812A0);
  v6 = sub_1C755178C();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return;
  }

  v31 = v1;
  v32 = v5;
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
  v35 = v3 + 32;
  v14 = v6 + 56;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      sub_1C71FAC38(0, (v29 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
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
    v33 = *(v3 + 72);
    v34 = v19;
    v19(v36, v18, v37);
    sub_1C72FC014(&qword_1EC2167B8, MEMORY[0x1E69C1790], MEMORY[0x1E69C1798]);
    v20 = sub_1C755058C();
    v21 = -1 << *(v7 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v34(*(v7 + 48) + v24 * v33, v36, v37);
    ++*(v7 + 16);
    v5 = v32;
    if (!v12)
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
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72EC12C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C754D8BC();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A640, &qword_1C7581298);
  v6 = sub_1C755178C();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return;
  }

  v31 = v1;
  v32 = v5;
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
  v35 = v3 + 32;
  v14 = v6 + 56;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      sub_1C71FAC38(0, (v29 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
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
    v33 = *(v3 + 72);
    v34 = v19;
    v19(v36, v18, v37);
    sub_1C72FC014(&qword_1EDD0CBF8, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
    v20 = sub_1C755058C();
    v21 = -1 << *(v7 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v34(*(v7 + 48) + v24 * v33, v36, v37);
    ++*(v7 + 16);
    v5 = v32;
    if (!v12)
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
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72EC484(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A620, &unk_1C7581240);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1C71FAC38(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
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
    v16 = *(*(v3 + 48) + 2 * (v13 | (v6 << 6)));
    sub_1C7551F3C();
    sub_1C7551F6C();
    v17 = sub_1C7551FAC();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 2 * v21) = v16;
    ++*(v5 + 16);
    if (!v10)
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
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72EC6D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216760, &qword_1C75654E0);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v5;
    return;
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
  v12 = v4 + 56;
  v31 = v3;
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
        goto LABEL_31;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1C71FAC38(0, (v30 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_1C7551F3C();
    sub_1C75505AC();

    sub_1C7551F5C();
    if (v19)
    {
      sub_1C75505AC();
    }

    v20 = sub_1C7551FAC();
    v21 = -1 << *(v5 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v5 + 48) + 24 * v24;
    *v29 = v17;
    *(v29 + 8) = v18;
    *(v29 + 16) = v19;
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
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1C72ECA88()
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_15_57();
  v6 = OUTLINED_FUNCTION_122_7(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v8 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_169_5(v8, v9);
  OUTLINED_FUNCTION_102_10();
  if (!v10)
  {
LABEL_23:

    *v0 = v2;
    OUTLINED_FUNCTION_224_0();
    return;
  }

  v26 = v0;
  v11 = 0;
  v12 = v1 + 7;
  OUTLINED_FUNCTION_37_29();
  if (!v0)
  {
LABEL_4:
    v14 = v11;
    while (1)
    {
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v11 >= v3)
      {
        break;
      }

      ++v14;
      if (v12[v11])
      {
        OUTLINED_FUNCTION_78_0();
        v0 = (v16 & v15);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_36_26();
    if (v22 >= 64)
    {
      v24 = OUTLINED_FUNCTION_66_1();
      sub_1C71FAC38(v24, v25, (v1 + 7));
    }

    else
    {
      OUTLINED_FUNCTION_9_2();
      *v12 = v23;
    }

    v0 = v26;
    v1[2] = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_24_5();
LABEL_9:
    v17 = *(v1[6] + (v13 | (v11 << 6)));
    OUTLINED_FUNCTION_168_5();
    MEMORY[0x1CCA5E460](v17);
    sub_1C7551FAC();
    OUTLINED_FUNCTION_52_25();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_17:
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_89_13();
    *(v21 + v20) = v17;
    OUTLINED_FUNCTION_47_1();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v18)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_27_27();
    if (!v18)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_1C72ECBD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A638, &qword_1C7581278);
  v4 = sub_1C755178C();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v26 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = v4 + 56;
  if ((v10 & v7) == 0)
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

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_1C71FAC38(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 2 * (v13 | (v6 << 6)));
    v17 = MEMORY[0x1CCA5E430](*(v5 + 40), v16, 2);
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 2 * v21) = v16;
    ++*(v5 + 16);
    if (!v11)
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
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C72ECE20()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_57();
  v9 = OUTLINED_FUNCTION_122_7(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v11 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_169_5(v11, v12);
  OUTLINED_FUNCTION_102_10();
  if (!v13)
  {
LABEL_25:

    *v0 = v2;
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v14 = 0;
  OUTLINED_FUNCTION_43_29();
  OUTLINED_FUNCTION_101_11();
  if (!v4)
  {
LABEL_4:
    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v5)
      {
        break;
      }

      ++v16;
      if (v3[v14])
      {
        OUTLINED_FUNCTION_78_0();
        v4 = v18 & v17;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_36_26();
    if (v26 >= 64)
    {
      v28 = OUTLINED_FUNCTION_66_1();
      sub_1C71FAC38(v28, v29, v3);
    }

    else
    {
      OUTLINED_FUNCTION_9_2();
      *v3 = v27;
    }

    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_8_2();
LABEL_9:
    v19 = *(*(v1 + 48) + 8 * (v15 | (v14 << 6)));
    sub_1C75513DC();
    OUTLINED_FUNCTION_115_11();
    if (v20)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_172_2();
    *(v25 + 8 * v24) = v19;
    OUTLINED_FUNCTION_47_1();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v20)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    if (*(v6 + 8 * v21) != -1)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1C72ECF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_15_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217770, &unk_1C756BCC0);
  v37 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_169_5(v37, v38);
  OUTLINED_FUNCTION_102_10();
  if (!v39)
  {
LABEL_25:

    *v30 = v32;
    OUTLINED_FUNCTION_224_0();
    return;
  }

  v56 = v30;
  v40 = 0;
  OUTLINED_FUNCTION_43_29();
  OUTLINED_FUNCTION_101_11();
  if (!v34)
  {
LABEL_4:
    v42 = v40;
    while (1)
    {
      v40 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v40 >= v35)
      {
        break;
      }

      ++v42;
      if (v33[v40])
      {
        OUTLINED_FUNCTION_78_0();
        v34 = v44 & v43;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_36_26();
    if (v52 >= 64)
    {
      v54 = OUTLINED_FUNCTION_66_1();
      sub_1C71FAC38(v54, v55, v33);
    }

    else
    {
      OUTLINED_FUNCTION_9_2();
      *v33 = v53;
    }

    v30 = v56;
    *(v31 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_8_2();
LABEL_9:
    v45 = *(*(v31 + 48) + 8 * (v41 | (v40 << 6)));
    OUTLINED_FUNCTION_168_5();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_115_11();
    if (v46)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_172_2();
    *(v51 + 8 * v50) = v45;
    OUTLINED_FUNCTION_47_1();
    if (!v34)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v46)
    {
      if (v48)
      {
        break;
      }
    }

    if (v47 == v49)
    {
      v47 = 0;
    }

    if (*(v36 + 8 * v47) != -1)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1C72ED1E0()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for Hastings.Asset(0);
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_31();
  v12 = *(*v2 + 16);
  v13 = *(*v2 + 24);
  if (v13 <= v12 || (v4 & 1) == 0)
  {
    if (v4)
    {
      v14 = OUTLINED_FUNCTION_60_18(v12);
      sub_1C72E6B34(v14);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      v15 = OUTLINED_FUNCTION_60_18(v12);
      sub_1C72F5200(v15);
LABEL_8:
      v16 = *v2;
      sub_1C7551F3C();
      v17 = *v8;
      v18 = v8[1];
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_9_2();
      v21 = ~v20;
      while (1)
      {
        v6 = v19 & v21;
        OUTLINED_FUNCTION_34_11();
        if (((*(v16 + 56 + v22) >> v6) & 1) == 0)
        {
          goto LABEL_16;
        }

        sub_1C72FBF68(*(v16 + 48) + *(v10 + 72) * v6, v1);
        v23 = v1[1];
        if (*v1 == v17 && v23 == v18)
        {
          goto LABEL_19;
        }

        v25 = OUTLINED_FUNCTION_118_4(*v1, v23, v17);
        OUTLINED_FUNCTION_85_11();
        if (v25)
        {
          goto LABEL_20;
        }

        v19 = v6 + 1;
      }
    }

    sub_1C72F29BC();
  }

LABEL_16:
  OUTLINED_FUNCTION_25_35(*v2 + 8 * (v6 >> 6));
  sub_1C72FBF10(v8, v26 + *(v10 + 72) * v6);
  OUTLINED_FUNCTION_54_3();
  if (v28)
  {
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_85_11();
LABEL_20:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_127_6(v27);
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C72ED3C8()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for Hastings.Feature(0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_65();
  v39 = v0;
  if (!(!v21 & v11) || (v3 & 1) == 0)
  {
    if (v3)
    {
      sub_1C72E6E38(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        sub_1C72F2BC4();
        goto LABEL_41;
      }

      sub_1C72F54D4(v9 + 1);
    }

    sub_1C7551F3C();
    v12 = *v7;
    v13 = *(v7 + 8);
    sub_1C75505AC();
    sub_1C6FF7814();
    sub_1C754F58C();
    OUTLINED_FUNCTION_80_11();
    sub_1C72FC014(v14, v15, MEMORY[0x1E69C1938]);
    sub_1C755059C();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_6_12();
    if ((*(v18 + v17) >> v5))
    {
      v40 = ~v16;
      while (1)
      {
        OUTLINED_FUNCTION_79_13();
        sub_1C72FBF68(v19, v1);
        v20 = *(v1 + 8);
        v21 = *v1 == v12 && v20 == v13;
        if (!v21 && (OUTLINED_FUNCTION_118_4(*v1, v20, v12) & 1) == 0)
        {
          break;
        }

        v22 = *(v7 + 16);
        v23 = 0xE900000000000072;
        v24 = 0x6574636172616843;
        switch(*(v1 + 16))
        {
          case 1:
            v23 = 0xE800000000000000;
            v24 = OUTLINED_FUNCTION_79_4(0x61636F4Cu);
            break;
          case 2:
            v23 = 0xE500000000000000;
            v24 = 0x746E657645;
            break;
          case 3:
            v23 = 0xE400000000000000;
            v24 = 1885958740;
            break;
          case 4:
            v23 = 0xE500000000000000;
            v24 = 0x7972657551;
            break;
          case 5:
            v24 = 0x6B61657262656954;
            v23 = 0xEA00000000007265;
            break;
          default:
            break;
        }

        v25 = 0x6574636172616843;
        v26 = 0xE900000000000072;
        switch(v22)
        {
          case 1:
            v26 = 0xE800000000000000;
            OUTLINED_FUNCTION_105_6();
            break;
          case 2:
            v26 = 0xE500000000000000;
            v25 = 0x746E657645;
            break;
          case 3:
            v26 = 0xE400000000000000;
            v25 = 1885958740;
            break;
          case 4:
            v26 = 0xE500000000000000;
            v25 = 0x7972657551;
            break;
          case 5:
            v25 = 0x6B61657262656954;
            v26 = 0xEA00000000007265;
            break;
          default:
            break;
        }

        if (v24 == v25 && v23 == v26)
        {
        }

        else
        {
          OUTLINED_FUNCTION_96_10();
          v28 = sub_1C7551DBC();

          if ((v28 & 1) == 0)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_80_11();
        sub_1C72FC014(&qword_1EC2147A0, v29, MEMORY[0x1E69C1950]);
        sub_1C7550A5C();
        sub_1C7550A5C();
        if (v43 == v41 && v44 == v42)
        {
          goto LABEL_44;
        }

        v31 = sub_1C7551DBC();

        OUTLINED_FUNCTION_41_32();
        if (v31)
        {
          goto LABEL_45;
        }

LABEL_40:
        v5 = (v5 + 1) & v40;
        OUTLINED_FUNCTION_34_11();
        if (((*(v33 + v32) >> v5) & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      OUTLINED_FUNCTION_41_32();
      goto LABEL_40;
    }
  }

LABEL_41:
  v34 = *v39;
  OUTLINED_FUNCTION_198_1();
  OUTLINED_FUNCTION_31_33(v35);
  OUTLINED_FUNCTION_76_15();
  sub_1C72FBF10(v7, v36);
  OUTLINED_FUNCTION_43_1();
  if (v38)
  {
    __break(1u);
LABEL_44:

    OUTLINED_FUNCTION_41_32();
LABEL_45:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v34 + 16) = v37;
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C72ED848()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_17_61();
  if (!v9 & v8 && (v5 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    sub_1C72E726C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C72F4CB4(&qword_1EC219148, &qword_1C7581320);
      goto LABEL_14;
    }

    sub_1C72F58C4(v6 + 1);
  }

  v10 = *v0;
  sub_1C72DE7AC(*(*v0 + 40));
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_143_5();
  if ((*(v10 + 56 + v12) >> v2))
  {
    v13 = ~v11;
    v14 = qword_1C7581340[v4];
    while (qword_1C7581340[*(*(v10 + 48) + v2)] != v14)
    {
      v15 = sub_1C7551DBC();
      swift_bridgeObjectRelease_n();
      if (v15)
      {
        goto LABEL_18;
      }

      v2 = (v2 + 1) & v13;
      if (((*(v10 + 56 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_17;
  }

LABEL_14:
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_3_87();
  *(v16 + v2) = v4;
  OUTLINED_FUNCTION_56_23();
  if (!v19)
  {
    *(v17 + 16) = v18;
    OUTLINED_FUNCTION_25_0();
    return;
  }

  __break(1u);
LABEL_17:
  swift_bridgeObjectRelease_n();
LABEL_18:
  sub_1C7551E3C();
  __break(1u);
}

void sub_1C72ED99C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_59_20(v3);
  sub_1C754E07C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_65();
  if (!(!v8 & v7) || (v0 & 1) == 0)
  {
    if (v0)
    {
      sub_1C72E74D0(v5 + 1);
      goto LABEL_9;
    }

    if (v6 <= v5)
    {
      sub_1C72F5AF8(v5 + 1);
LABEL_9:
      OUTLINED_FUNCTION_97_9();
      OUTLINED_FUNCTION_5_69();
      v11 = sub_1C72FC014(v9, v10, MEMORY[0x1E6969620]);
      OUTLINED_FUNCTION_82_14(v11);
      OUTLINED_FUNCTION_28_27();
      while (1)
      {
        v13 = v12 & v2;
        OUTLINED_FUNCTION_33_30();
        if ((v14 & 1) == 0)
        {
          goto LABEL_13;
        }

        v15 = OUTLINED_FUNCTION_34_30();
        v16(v15);
        OUTLINED_FUNCTION_5_69();
        v18 = sub_1C72FC014(&qword_1EC215FE0, v17, MEMORY[0x1E6969628]);
        OUTLINED_FUNCTION_61_16(v18);
        v19 = OUTLINED_FUNCTION_58_22();
        v20(v19);
        if (v1)
        {
          goto LABEL_16;
        }

        v12 = v13 + 1;
      }
    }

    sub_1C72F488C();
  }

LABEL_13:
  v21 = OUTLINED_FUNCTION_8_65();
  v22(v21);
  OUTLINED_FUNCTION_54_3();
  if (v24)
  {
    __break(1u);
LABEL_16:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_127_6(v23);
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C72EDB3C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_59_20(v3);
  sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_65();
  if (!(!v8 & v7) || (v0 & 1) == 0)
  {
    if (v0)
    {
      sub_1C72E7828(v5 + 1);
      goto LABEL_9;
    }

    if (v6 <= v5)
    {
      sub_1C72F5E10(v5 + 1);
LABEL_9:
      OUTLINED_FUNCTION_97_9();
      OUTLINED_FUNCTION_4_77();
      v11 = sub_1C72FC014(v9, v10, MEMORY[0x1E6969780]);
      OUTLINED_FUNCTION_82_14(v11);
      OUTLINED_FUNCTION_28_27();
      while (1)
      {
        v13 = v12 & v2;
        OUTLINED_FUNCTION_33_30();
        if ((v14 & 1) == 0)
        {
          goto LABEL_13;
        }

        v15 = OUTLINED_FUNCTION_34_30();
        v16(v15);
        OUTLINED_FUNCTION_4_77();
        v18 = sub_1C72FC014(&qword_1EDD0F9B8, v17, MEMORY[0x1E6969788]);
        OUTLINED_FUNCTION_61_16(v18);
        v19 = OUTLINED_FUNCTION_58_22();
        v20(v19);
        if (v1)
        {
          goto LABEL_16;
        }

        v12 = v13 + 1;
      }
    }

    sub_1C72F488C();
  }

LABEL_13:
  v21 = OUTLINED_FUNCTION_8_65();
  v22(v21);
  OUTLINED_FUNCTION_54_3();
  if (v24)
  {
    __break(1u);
LABEL_16:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_127_6(v23);
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C72EDCDC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1C72E7B80(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C72F2D54();
      goto LABEL_27;
    }

    sub_1C72F6128(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1C72DE740(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    if (v5)
    {
      v12 = 0xD000000000000015;
    }

    else
    {
      v12 = 0x696A6F6D65;
    }

    if (v5)
    {
      v13 = 0x80000001C75964E0;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    do
    {
      v14 = *(*(v8 + 48) + a2) ? 0xD000000000000015 : 0x696A6F6D65;
      v15 = *(*(v8 + 48) + a2) ? 0x80000001C75964E0 : 0xE500000000000000;
      if (v14 == v12 && v15 == v13)
      {
        goto LABEL_30;
      }

      v17 = sub_1C7551DBC();

      if (v17)
      {
        goto LABEL_31;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v23 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_30:

LABEL_31:
  sub_1C7551E3C();
  __break(1u);
}

void sub_1C72EDEC0()
{
  OUTLINED_FUNCTION_154_3();
  OUTLINED_FUNCTION_12_54();
  if (!(!v8 & v7) || (v4 & 1) == 0)
  {
    if (v4)
    {
      v9 = OUTLINED_FUNCTION_60_18(v5);
      sub_1C72E7E10(v9);
      goto LABEL_11;
    }

    if (v6 <= v5)
    {
      v14 = OUTLINED_FUNCTION_60_18(v5);
      sub_1C72F6388(v14);
LABEL_11:
      OUTLINED_FUNCTION_161_5();
      MEMORY[0x1CCA5E460](v0);
      sub_1C7551FAC();
      OUTLINED_FUNCTION_9_2();
      v17 = ~v16;
      while (1)
      {
        v2 = v15 & v17;
        OUTLINED_FUNCTION_70_16();
        if (((*(v3 + 56 + v18) >> v2) & 1) == 0)
        {
          goto LABEL_8;
        }

        type metadata accessor for PHSearchEntityCategoryType(0);
        if (*(*(v3 + 48) + 8 * v2) == v0)
        {
          goto LABEL_16;
        }

        v15 = v2 + 1;
      }
    }

    sub_1C72F2E94();
  }

LABEL_8:
  OUTLINED_FUNCTION_0_135(*v1);
  *(v10 + 8 * v2) = v0;
  OUTLINED_FUNCTION_56_23();
  if (v13)
  {
    __break(1u);
LABEL_16:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v12;
  }
}

void sub_1C72EDFAC()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_17_61();
  if (!v24 & v8 && (v5 & 1) != 0)
  {
    goto LABEL_62;
  }

  if (v5)
  {
    sub_1C72E805C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C72F4CB4(&qword_1EC216880, &qword_1C7565658);
      goto LABEL_62;
    }

    sub_1C72F65A4(v6 + 1);
  }

  v9 = *v0;
  sub_1C72DF3A0(*(*v0 + 40));
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_143_5();
  if ((*(v9 + 56 + v10) >> v2))
  {
    do
    {
      v11 = 0xE400000000000000;
      v12 = 1701736302;
      switch(*(*(v9 + 48) + v2))
      {
        case 1:
          v11 = 0xE600000000000000;
          v13 = 1936876912;
          goto LABEL_28;
        case 2:
          v12 = 0x67416E6F73726570;
          v16 = 0x6570795465;
          goto LABEL_19;
        case 3:
          v12 = 1702125924;
          break;
        case 4:
          v11 = 0xE900000000000079;
          v12 = 0x6144664F74726170;
          break;
        case 5:
          OUTLINED_FUNCTION_437();
          v11 = v17 + 1529;
          v12 = 0x6557664F74726170;
          break;
        case 6:
          v11 = 0xE600000000000000;
          v13 = 1935762803;
LABEL_28:
          v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v11 = 0xE800000000000000;
          v14 = 1633906540;
          goto LABEL_23;
        case 8:
          v12 = 0x4C636972656E6567;
          v11 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v12 = 1952540791;
          break;
        case 0xA:
          v12 = 0x764563696C627570;
          v11 = 0xEB00000000746E65;
          break;
        case 0xB:
          v12 = 0x6C616E6F73726570;
          v16 = 0x746E657645;
LABEL_19:
          v11 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0xC:
          v12 = 0x746954636973756DLL;
          v11 = 0xEA0000000000656CLL;
          break;
        case 0xD:
          v11 = 0xEB00000000747369;
          v12 = 0x747241636973756DLL;
          break;
        case 0xE:
          OUTLINED_FUNCTION_437();
          v11 = v15 + 6;
          v12 = 0x6E6547636973756DLL;
          break;
        case 0xF:
          v12 = 1685024621;
          break;
        case 0x10:
          v11 = 0xE800000000000000;
          v14 = 1634891108;
LABEL_23:
          v12 = OUTLINED_FUNCTION_79_4(v14);
          break;
        case 0x11:
          v11 = 0xE600000000000000;
          v12 = 0x706972547369;
          break;
        case 0x12:
          v12 = 0x6D69546C6C417369;
          v11 = 0xE900000000000065;
          break;
        case 0x13:
          v11 = 0xE900000000000072;
          v12 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      v18 = 0xE400000000000000;
      v19 = 1701736302;
      switch(v4)
      {
        case 1:
          v18 = 0xE600000000000000;
          v20 = 1936876912;
          goto LABEL_51;
        case 2:
          v19 = 0x67416E6F73726570;
          v22 = 0x6570795465;
          goto LABEL_42;
        case 3:
          v19 = 1702125924;
          break;
        case 4:
          v18 = 0xE900000000000079;
          v19 = 0x6144664F74726170;
          break;
        case 5:
          OUTLINED_FUNCTION_437();
          v18 = v23 + 1529;
          v19 = 0x6557664F74726170;
          break;
        case 6:
          v18 = 0xE600000000000000;
          v20 = 1935762803;
LABEL_51:
          v19 = v20 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v18 = 0xE800000000000000;
          goto LABEL_46;
        case 8:
          v19 = 0x4C636972656E6567;
          v18 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v19 = 1952540791;
          break;
        case 10:
          v19 = 0x764563696C627570;
          v18 = 0xEB00000000746E65;
          break;
        case 11:
          v19 = 0x6C616E6F73726570;
          v22 = 0x746E657645;
LABEL_42:
          v18 = v22 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 12:
          v19 = 0x746954636973756DLL;
          v18 = 0xEA0000000000656CLL;
          break;
        case 13:
          v18 = 0xEB00000000747369;
          v19 = 0x747241636973756DLL;
          break;
        case 14:
          OUTLINED_FUNCTION_437();
          v18 = v21 + 6;
          v19 = 0x6E6547636973756DLL;
          break;
        case 15:
          v19 = 1685024621;
          break;
        case 16:
          v18 = 0xE800000000000000;
LABEL_46:
          OUTLINED_FUNCTION_105_6();
          break;
        case 17:
          v18 = 0xE600000000000000;
          v19 = 0x706972547369;
          break;
        case 18:
          v19 = 0x6D69546C6C417369;
          v18 = 0xE900000000000065;
          break;
        case 19:
          v18 = 0xE900000000000072;
          v19 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      v24 = v12 == v19 && v11 == v18;
      if (v24)
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_96_10();
      v25 = sub_1C7551DBC();

      if (v25)
      {
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_134_8();
    }

    while ((v26 & 1) != 0);
  }

LABEL_62:
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_3_87();
  *(v27 + v2) = v4;
  OUTLINED_FUNCTION_56_23();
  if (!v30)
  {
    *(v28 + 16) = v29;
    OUTLINED_FUNCTION_25_0();
    return;
  }

  __break(1u);
LABEL_65:

LABEL_66:
  sub_1C7551E3C();
  __break(1u);
}

void sub_1C72EE4E4()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  OUTLINED_FUNCTION_12_54();
  v30 = v1;
  if (!(!v16 & v7) || (v4 & 1) == 0)
  {
    if (v4)
    {
      sub_1C72E84C4(v5 + 1);
    }

    else
    {
      if (v6 > v5)
      {
        sub_1C72F2FE8();
        goto LABEL_30;
      }

      sub_1C72F69DC(v5 + 1);
    }

    v8 = *v1;
    sub_1C7551F3C();
    v9 = *v0;
    v10 = *(v0 + 1);
    v11 = *(v0 + 2);
    sub_1C75505AC();
    v31 = v9;
    sub_1C6FF87E8();
    sub_1C7551FAC();
    v12 = v8 + 56;
    v32 = v8;
    OUTLINED_FUNCTION_9_69();
    if ((*(v8 + 56 + v14) >> v3))
    {
      v15 = ~v13;
      do
      {
        memcpy(__dst, (*(v32 + 48) + 192 * v3), 0xC0uLL);
        v16 = __dst[1] == v10 && __dst[2] == v11;
        if (v16 || (OUTLINED_FUNCTION_84_8(), (sub_1C7551DBC() & 1) != 0))
        {
          v17 = 0xD000000000000011;
          v18 = "edMoodsInferredFallback";
          switch(LOBYTE(__dst[0]))
          {
            case 1:
              v17 = 0xD000000000000016;
              v18 = "appleMusicMaestro";
              break;
            case 2:
              v17 = 0xD000000000000015;
              v18 = "appleMusicSimpleSearch";
              break;
            case 3:
              v17 = 0xD000000000000010;
              v18 = "appleMusicSmartSearch";
              break;
            default:
              break;
          }

          v19 = v18 | 0x8000000000000000;
          v20 = 0xD000000000000011;
          v21 = "edMoodsInferredFallback";
          switch(v31)
          {
            case 1:
              v20 = 0xD000000000000016;
              v21 = "appleMusicMaestro";
              break;
            case 2:
              v20 = 0xD000000000000015;
              v21 = "appleMusicSimpleSearch";
              break;
            case 3:
              v20 = 0xD000000000000010;
              v21 = "appleMusicSmartSearch";
              break;
            default:
              break;
          }

          if (v17 == v20 && v19 == (v21 | 0x8000000000000000))
          {
            goto LABEL_33;
          }

          v23 = sub_1C7551DBC();
          sub_1C7080654(__dst, v33);

          sub_1C70806B0(__dst);
          if (v23)
          {
            goto LABEL_34;
          }
        }

        v3 = (v3 + 1) & v15;
        OUTLINED_FUNCTION_70_16();
      }

      while (((*(v12 + v24) >> v3) & 1) != 0);
    }
  }

LABEL_30:
  v25 = *v30;
  OUTLINED_FUNCTION_25_35(*v30 + 8 * (v3 >> 6));
  memcpy((v26 + 192 * v3), v27, 0xC0uLL);
  OUTLINED_FUNCTION_54_3();
  if (v29)
  {
    __break(1u);
LABEL_33:
    sub_1C7080654(__dst, v33);

    sub_1C70806B0(__dst);
LABEL_34:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v28;
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C72EE7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_206();
  v34 = v33;
  v62 = v36;
  v63 = v35;
  v38 = v37;
  v40 = v39;
  OUTLINED_FUNCTION_17_61();
  if (!(!v52 & v44) || (v41 & 1) == 0)
  {
    if (v41)
    {
      sub_1C72E8828(v42 + 1);
    }

    else
    {
      if (v43 > v42)
      {
        sub_1C72F310C();
        goto LABEL_21;
      }

      sub_1C72F6CDC(v42 + 1);
    }

    v45 = *v32;
    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_6_12();
    if ((*(v45 + 56 + v47) >> v34))
    {
      v48 = ~v46;
      do
      {
        v49 = (*(v45 + 48) + 32 * v34);
        v50 = v49[2];
        v51 = v49[3];
        v52 = *v49 == v40 && v49[1] == v38;
        if (v52 || (sub_1C7551DBC() & 1) != 0)
        {
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C7036A90(v50, v63);
          if (v53)
          {
            sub_1C7036A90(v51, v62);
            v55 = v54;

            if (v55)
            {
              goto LABEL_24;
            }
          }

          else
          {
          }
        }

        v34 = (v34 + 1) & v48;
        OUTLINED_FUNCTION_34_11();
      }

      while (((*(v45 + 56 + v56) >> v34) & 1) != 0);
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_3_87();
  v58 = (v57 + 32 * v34);
  *v58 = v40;
  v58[1] = v38;
  v58[2] = v63;
  v58[3] = v62;
  OUTLINED_FUNCTION_56_23();
  if (v61)
  {
    __break(1u);
LABEL_24:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v59 + 16) = v60;
    OUTLINED_FUNCTION_204();
  }
}

void sub_1C72EE964(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_54();
  if (!(!v19 & v8) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_1C72E8AA0(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1C72F3284();
        goto LABEL_21;
      }

      sub_1C72F6F34(v6 + 1);
    }

    v9 = *v2;
    v10 = v2[1];
    v27 = v2[3];
    v28 = v2[2];
    v11 = *v3;
    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    v12 = v11 + 56;
    v29 = v11;
    OUTLINED_FUNCTION_9_69();
    if ((*(v11 + 56 + v14) >> a2))
    {
      v15 = ~v13;
      do
      {
        v16 = (*(v29 + 48) + 40 * a2);
        v17 = v16[2];
        v18 = v16[3];
        v19 = *v16 == v9 && v16[1] == v10;
        if (v19 || (OUTLINED_FUNCTION_69_10(*v16, v16[1]) & 1) != 0)
        {
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C7036A90(v17, v28);
          if (v20)
          {
            sub_1C7036A90(v18, v27);
            v22 = v21;

            if (v22)
            {
              goto LABEL_24;
            }
          }

          else
          {
          }
        }

        a2 = (a2 + 1) & v15;
        OUTLINED_FUNCTION_70_16();
      }

      while (((*(v12 + v23) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_0_135(*v3);
  OUTLINED_FUNCTION_54_24();
  if (v26)
  {
    __break(1u);
LABEL_24:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v25;
  }
}

void sub_1C72EEB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_103_1();
  v40 = v39;
  v42 = v41;
  OUTLINED_FUNCTION_17_61();
  v71 = v38;
  if (!(!v59 & v46) || (v43 & 1) == 0)
  {
    if (v43)
    {
      sub_1C72E8D1C(v44 + 1);
    }

    else
    {
      if (v45 > v44)
      {
        sub_1C72F338C();
        goto LABEL_23;
      }

      sub_1C72F71B0(v44 + 1);
    }

    v47 = *v42;
    v48 = v42[1];
    v49 = *v38;
    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    v50 = v49 + 56;
    v74 = v49;
    OUTLINED_FUNCTION_9_69();
    if ((*(v49 + 56 + v52) >> v40))
    {
      v53 = ~v51;
      v72 = v42[3];
      v73 = v42[2];
      v70 = v42[4];
      v68 = v42[5];
      do
      {
        v54 = (*(v74 + 48) + 48 * v40);
        v56 = v54[2];
        v55 = v54[3];
        v57 = v54[4];
        v58 = v54[5];
        v59 = *v54 == v47 && v54[1] == v48;
        if (v59 || (OUTLINED_FUNCTION_69_10(*v54, v54[1]) & 1) != 0)
        {
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C7036A90(v56, v73);
          if (v60 & 1) != 0 && (sub_1C7036A90(v55, v72), (v61) && (sub_1C7036A90(v57, v70), (v62))
          {
            sub_1C7036A90(v58, v68);
            v69 = v63;

            if (v69)
            {
              goto LABEL_26;
            }
          }

          else
          {
          }
        }

        v40 = (v40 + 1) & v53;
        OUTLINED_FUNCTION_70_16();
      }

      while (((*(v50 + v64) >> v40) & 1) != 0);
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_0_135(*v71);
  OUTLINED_FUNCTION_100_11();
  OUTLINED_FUNCTION_56_23();
  if (v67)
  {
    __break(1u);
LABEL_26:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v65 + 16) = v66;
    OUTLINED_FUNCTION_102_0();
  }
}

void sub_1C72EED5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_61();
  if (!(!v21 & v10) || (v7 & 1) == 0)
  {
    if (v7)
    {
      v11 = OUTLINED_FUNCTION_177_1(v8);
      sub_1C72E8FA4(v11);
    }

    else
    {
      if (v9 > v8)
      {
        sub_1C72F3530();
        goto LABEL_23;
      }

      v12 = OUTLINED_FUNCTION_177_1(v8);
      sub_1C72F743C(v12);
    }

    v13 = *v3;
    sub_1C7551F3C();
    sub_1C7551F5C();
    if (a2)
    {
      sub_1C75505AC();
    }

    sub_1C7551FAC();
    v14 = v13 + 56;
    OUTLINED_FUNCTION_3_42();
    if ((*(v13 + 56 + v16) >> a3))
    {
      v17 = ~v15;
      v18 = *(v13 + 48);
      do
      {
        v19 = (v18 + 16 * a3);
        v20 = v19[1];
        if (v20)
        {
          if (a2)
          {
            v21 = *v19 == a1 && v20 == a2;
            if (v21 || (sub_1C7551DBC() & 1) != 0)
            {
              goto LABEL_26;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_26;
        }

        a3 = (a3 + 1) & v17;
        OUTLINED_FUNCTION_62_0();
      }

      while (((*(v14 + v22) >> a3) & 1) != 0);
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_3_87();
  v24 = (v23 + 16 * a3);
  *v24 = a1;
  v24[1] = a2;
  OUTLINED_FUNCTION_56_23();
  if (v27)
  {
    __break(1u);
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620, &qword_1C756EAF0);
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v26;
  }
}

void sub_1C72EEF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, void *a7)
{
  OUTLINED_FUNCTION_12_54();
  if (!(!v18 & v17) || (v12 & 1) == 0)
  {
    if (v12)
    {
      OUTLINED_FUNCTION_199_1();
      sub_1C72ECE20();
      goto LABEL_9;
    }

    if (v16 <= v15)
    {
      OUTLINED_FUNCTION_199_1();
      sub_1C72FAE18();
LABEL_9:
      v19 = *v8;
      sub_1C75513DC();
      OUTLINED_FUNCTION_9_2();
      v22 = ~v21;
      while (1)
      {
        a2 = v20 & v22;
        if (((*(v19 + 56 + (((v20 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v22)) & 1) == 0)
        {
          goto LABEL_13;
        }

        sub_1C6F65BE8(0, a6, a7);
        v23 = *(*(v19 + 48) + 8 * a2);
        v24 = sub_1C75513EC();

        if (v24)
        {
          goto LABEL_16;
        }

        v20 = a2 + 1;
      }
    }

    sub_1C72F4E98(v13, v14);
  }

LABEL_13:
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_3_87();
  *(v25 + 8 * a2) = v7;
  OUTLINED_FUNCTION_56_23();
  if (v28)
  {
    __break(1u);
LABEL_16:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v27;
  }
}

void sub_1C72EF04C(uint64_t *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_61();
  if (!(!v22 & v8) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_1C72E9230(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1C72F3684();
        goto LABEL_41;
      }

      sub_1C72F768C(v6 + 1);
    }

    v9 = *v2;
    sub_1C7551F3C();
    v10 = *a1;
    v11 = a1[1];
    v12 = OUTLINED_FUNCTION_15_1();
    MEMORY[0x1CCA5CD70](v12);
    sub_1C75505AC();

    sub_1C7551FAC();
    OUTLINED_FUNCTION_9_69();
    if ((*(v9 + 56 + v14) >> a2))
    {
      v15 = ~v13;
      v16 = *(a1 + 24);
      v35 = a1[2];
      v36 = *(a1 + 25);
      do
      {
        v17 = *(v9 + 48) + 40 * a2;
        v18 = *(v17 + 8);
        v19 = *(v17 + 16);
        v20 = *(v17 + 24);
        v21 = *(v17 + 25);
        v22 = *v17 == v10 && v18 == v11;
        if (!v22 && (OUTLINED_FUNCTION_69_10(*v17, v18) & 1) == 0)
        {
          goto LABEL_40;
        }

        if (v20)
        {
          if ((v16 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else if ((v16 & 1) != 0 || v19 != v35)
        {
          goto LABEL_40;
        }

        v23 = 0xEB00000000797261;
        v24 = 0x73726576696E6E61;
        switch(v21)
        {
          case 1:
            v23 = 0xE800000000000000;
            v24 = 0x7961646874726962;
            break;
          case 2:
            v23 = 0xE700000000000000;
            v24 = 0x676E6964646577;
            break;
          case 3:
            v23 = 0xE700000000000000;
            v24 = 0x747265636E6F63;
            break;
          case 4:
            v24 = OUTLINED_FUNCTION_77_6() & 0xFFFFFFFFFFFFLL | 0x4579000000000000;
            v23 = 0xEC000000746E6576;
            break;
          case 5:
            v24 = 0x65764574726F7073;
            v23 = 0xEA0000000000746ELL;
            break;
          case 6:
            v23 = 0xE700000000000000;
            v24 = 0x64656D616E6E75;
            break;
          default:
            break;
        }

        v25 = 0x73726576696E6E61;
        v26 = 0xEB00000000797261;
        switch(v36)
        {
          case 1:
            v26 = 0xE800000000000000;
            v25 = 0x7961646874726962;
            break;
          case 2:
            v26 = 0xE700000000000000;
            v25 = 0x676E6964646577;
            break;
          case 3:
            v26 = 0xE700000000000000;
            v25 = 0x747265636E6F63;
            break;
          case 4:
            OUTLINED_FUNCTION_75_6();
            v25 = v27 & 0xFFFFFFFFFFFFLL | 0x4579000000000000;
            v26 = 0xEC000000746E6576;
            break;
          case 5:
            v25 = 0x65764574726F7073;
            v26 = 0xEA0000000000746ELL;
            break;
          case 6:
            v26 = 0xE700000000000000;
            v25 = 0x64656D616E6E75;
            break;
          default:
            break;
        }

        if (v24 == v25 && v23 == v26)
        {
          goto LABEL_44;
        }

        v29 = sub_1C7551DBC();

        if (v29)
        {
          goto LABEL_45;
        }

LABEL_40:
        a2 = (a2 + 1) & v15;
        OUTLINED_FUNCTION_70_16();
      }

      while (((*(v9 + 56 + v30) >> a2) & 1) != 0);
    }
  }

LABEL_41:
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_0_135(v31);
  OUTLINED_FUNCTION_54_24();
  if (v34)
  {
    __break(1u);
LABEL_44:

LABEL_45:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v32 + 16) = v33;
  }
}

void sub_1C72EF3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_103_1();
  v41 = v40;
  OUTLINED_FUNCTION_12_54();
  v71 = v45;
  if (!(!v60 & v46) || (v42 & 1) == 0)
  {
    if (v42)
    {
      sub_1C72E9504(v43 + 1);
    }

    else
    {
      if (v44 > v43)
      {
        sub_1C72F3808();
        goto LABEL_27;
      }

      sub_1C72F7944(v43 + 1);
    }

    v47 = *v39;
    sub_1C7551F3C();
    v74 = v38[5];
    v75 = v38[4];
    MEMORY[0x1CCA5CD70]();
    sub_1C75505AC();

    sub_1C7551FAC();
    v48 = v47 + 56;
    OUTLINED_FUNCTION_9_69();
    if ((*(v47 + 56 + v50) >> v41))
    {
      v51 = ~v49;
      v52 = v38[1];
      v72 = v38[2];
      v73 = *(v38 + 24);
      v53 = *v38;
      v54 = *(v47 + 48);
      do
      {
        v55 = v54 + (v41 << 6);
        v56 = *(v55 + 16);
        v57 = *(v55 + 24);
        v58 = *(v55 + 32);
        v59 = *(v55 + 40);
        v60 = *v55 == v53 && *(v55 + 8) == v52;
        if (!v60 && (sub_1C7551DBC() & 1) == 0)
        {
          goto LABEL_26;
        }

        if (v57)
        {
          if ((v73 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else if ((v73 & 1) != 0 || v56 != v72)
        {
          goto LABEL_26;
        }

        if (v58 == v75 && v59 == v74)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_323();
        if (sub_1C7551DBC())
        {
          goto LABEL_30;
        }

LABEL_26:
        v41 = (v41 + 1) & v51;
        OUTLINED_FUNCTION_70_16();
      }

      while (((*(v48 + v62) >> v41) & 1) != 0);
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_0_135(v63);
  v65 = (v64 + (v41 << 6));
  v66 = v71[1];
  *v65 = *v71;
  v65[1] = v66;
  v67 = v71[3];
  v65[2] = v71[2];
  v65[3] = v67;
  OUTLINED_FUNCTION_56_23();
  if (v70)
  {
    __break(1u);
LABEL_30:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v68 + 16) = v69;
    OUTLINED_FUNCTION_102_0();
  }
}

void sub_1C72EF590()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1C754F65C();
  OUTLINED_FUNCTION_3_0();
  v69 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  OUTLINED_FUNCTION_17_61();
  v58 = v6;
  v57 = v0;
  if (!v36 & v18 && (v2 & 1) != 0)
  {
    goto LABEL_32;
  }

  if (v2)
  {
    sub_1C72E99CC(v16 + 1);
  }

  else
  {
    if (v17 > v16)
    {
      sub_1C72F3B04();
LABEL_32:
      OUTLINED_FUNCTION_57_24();
      OUTLINED_FUNCTION_3_87();
      OUTLINED_FUNCTION_100_11();
      *(v52 + 48) = *(v51 + 48);
      OUTLINED_FUNCTION_56_23();
      if (v55)
      {
        goto LABEL_36;
      }

      *(v53 + 16) = v54;
      OUTLINED_FUNCTION_25_0();
      return;
    }

    sub_1C72F7DFC(v16 + 1);
  }

  v19 = *v0;
  sub_1C7551F3C();
  v20 = *v6;
  v21 = v6[1];
  v72 = 0x6144664F74726150;
  v73 = 0xEA00000000003A79;
  v22 = v20;
  v67 = v21;
  MEMORY[0x1CCA5CD70]();
  sub_1C75505AC();

  sub_1C7551FAC();
  OUTLINED_FUNCTION_3_42();
  v66 = v24;
  if (((*(v24 + v25) >> v4) & 1) == 0)
  {
    goto LABEL_32;
  }

  v65 = ~v23;
  v59 = v6[2];
  v64 = *(v6 + 24);
  v26 = v6;
  v27 = (v69 + 8);
  v70 = v26[4];
  v28 = v67;
  v29 = v22;
  v63 = v19;
  v56 = v22;
  while (1)
  {
    v30 = *(v19 + 48) + 56 * v4;
    v31 = *(v30 + 8);
    v32 = *(v30 + 16);
    v33 = *(v30 + 24);
    v35 = *(v30 + 32);
    v34 = *(v30 + 40);
    v36 = *v30 == v29 && v31 == v28;
    v71 = *(v30 + 32);
    if (!v36)
    {
      v37 = v34;
      v38 = v32;
      LODWORD(v68) = v33;
      v39 = sub_1C7551DBC();
      LOBYTE(v33) = v68;
      v32 = v38;
      v34 = v37;
      v19 = v63;
      v35 = v71;
      if ((v39 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (v33)
    {
      if ((v64 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if ((v64 & 1) != 0 || v32 != v59)
    {
      goto LABEL_31;
    }

    v40 = *(v35 + 16);
    if (v40 == *(v70 + 16))
    {
      break;
    }

LABEL_31:
    v4 = (v4 + 1) & v65;
    OUTLINED_FUNCTION_62_0();
    if (((*(v50 + v49) >> v4) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v62 = v31;
  v61 = v4;
  v68 = v40;
  if (v40 && v35 != v70)
  {
    v41 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v42 = v35 + v41;
    v43 = v70 + v41;
    v60 = v34;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v44 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_171_1();
      if (v18)
      {
        break;
      }

      v45 = *(v69 + 72) * v44;
      v46 = *(v69 + 16);
      v46(v15, v42 + v45, v7);
      OUTLINED_FUNCTION_171_1();
      if (v18)
      {
        goto LABEL_35;
      }

      v46(v12, v43 + v45, v7);
      sub_1C72FC014(&qword_1EC215FE8, MEMORY[0x1E69C19F0], MEMORY[0x1E69C1A08]);
      OUTLINED_FUNCTION_282();
      v47 = sub_1C755063C();
      v48 = *v27;
      (*v27)(v12, v7);
      v48(v15, v7);
      if ((v47 & 1) == 0)
      {

        v4 = v61;
        v19 = v63;
        v29 = v56;
        goto LABEL_31;
      }

      if (v68 == ++v44)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
  }

  sub_1C7551E3C();
  __break(1u);
}

void sub_1C72EFA10()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  OUTLINED_FUNCTION_76(v14);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v57 - v16;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215D50, &qword_1C75606A8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v57 - v18;
  v19 = OUTLINED_FUNCTION_37_3();
  v69 = type metadata accessor for TimeExtendedToken(v19);
  OUTLINED_FUNCTION_3_0();
  v67 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_17_61();
  v64 = v0;
  if (!(!v34 & v27) || (v2 & 1) == 0)
  {
    if (v2)
    {
      v60 = v13;
      sub_1C72E9CA4(v25 + 1);
    }

    else
    {
      if (v26 > v25)
      {
        sub_1C72F3C9C();
        goto LABEL_57;
      }

      v60 = v13;
      sub_1C72F80C8(v25 + 1);
    }

    v2 = *v0;
    sub_1C7551F3C();
    v75 = 0x3A656D6954;
    v76 = 0xE500000000000000;
    v28 = *(v6 + 8);
    v70 = *v6;
    v74 = v28;
    MEMORY[0x1CCA5CD70]();
    sub_1C75505AC();

    sub_1C7551FAC();
    OUTLINED_FUNCTION_46_25();
    v73 = v30;
    if ((*(v30 + v31) >> v4))
    {
      v63 = v7;
      v72 = ~v29;
      v71 = *(v67 + 72);
      v58 = (v9 + 32);
      v61 = (v9 + 8);
      v32 = &qword_1EC218C50;
      v33 = v70;
      v62 = v2;
      while (1)
      {
        sub_1C72FBF68(*(v2 + 48) + v71 * v4, v24);
        v34 = *v24 == v33 && *(v24 + 8) == v74;
        if (!v34 && (sub_1C7551DBC() & 1) == 0)
        {
          goto LABEL_52;
        }

        v35 = *(v6 + 56);
        if (*(v24 + 56))
        {
          if (!*(v6 + 56))
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (*(v24 + 48) != *(v6 + 48))
          {
            v35 = 1;
          }

          if (v35)
          {
            goto LABEL_52;
          }
        }

        v36 = *(v6 + 57);
        v37 = 0xE300000000000000;
        v38 = v32;
        v39 = 7954788;
        switch(*(v24 + 57))
        {
          case 1:
            v39 = 0x61655968746E6F6DLL;
            v37 = 0xE900000000000072;
            break;
          case 2:
            v37 = 0xE400000000000000;
            v39 = 1918985593;
            break;
          case 3:
            v39 = 0x596568547265766FLL;
            v40 = 1936875877;
            goto LABEL_29;
          case 4:
            v37 = 0xE600000000000000;
            v39 = 0x6E6F73616573;
            break;
          case 5:
            v37 = 0xE700000000000000;
            v39 = OUTLINED_FUNCTION_77_6() & 0xFFFFFFFFFFFFLL | 0x79000000000000;
            break;
          case 6:
            v39 = 0x6D72657465646E75;
            v40 = 1684369001;
LABEL_29:
            v37 = v40 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          default:
            break;
        }

        v41 = 0xE300000000000000;
        v42 = 7954788;
        switch(v36)
        {
          case 1:
            v42 = 0x61655968746E6F6DLL;
            v41 = 0xE900000000000072;
            break;
          case 2:
            v41 = 0xE400000000000000;
            v42 = 1918985593;
            break;
          case 3:
            v42 = 0x596568547265766FLL;
            v43 = 1936875877;
            goto LABEL_37;
          case 4:
            v41 = 0xE600000000000000;
            v42 = 0x6E6F73616573;
            break;
          case 5:
            v41 = 0xE700000000000000;
            OUTLINED_FUNCTION_75_6();
            v42 = v44 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
            break;
          case 6:
            v42 = 0x6D72657465646E75;
            v43 = 1684369001;
LABEL_37:
            v41 = v43 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          default:
            break;
        }

        if (v39 == v42 && v37 == v41)
        {

          v32 = v38;
          v33 = v70;
        }

        else
        {
          v46 = sub_1C7551DBC();

          v32 = v38;
          v33 = v70;
          if ((v46 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        if ((MEMORY[0x1CCA59F10](v24 + *(v69 + 36), v6 + *(v69 + 36)) & 1) == 0)
        {
          goto LABEL_52;
        }

        v47 = *(v69 + 40);
        v2 = v65;
        v48 = *(v66 + 48);
        sub_1C712A774(v24 + v47, v65, v38, &qword_1C75606A0);
        v49 = v6 + v47;
        v32 = v38;
        sub_1C712A774(v49, v2 + v48, v38, &qword_1C75606A0);
        v50 = v63;
        if (__swift_getEnumTagSinglePayload(v2, 1, v63) == 1)
        {
          break;
        }

        sub_1C712A774(v2, v68, v38, &qword_1C75606A0);
        if (__swift_getEnumTagSinglePayload(v2 + v48, 1, v50) == 1)
        {
          (*v61)(v68, v50);
LABEL_51:
          sub_1C72FBFC0(v2, &qword_1EC215D50);
          v2 = v62;
          v33 = v70;
LABEL_52:
          OUTLINED_FUNCTION_40_34();
          goto LABEL_53;
        }

        v51 = v60;
        (*v58)(v60, v2 + v48, v50);
        sub_1C72FC014(&qword_1EC215D58, MEMORY[0x1E6968278], MEMORY[0x1E6968290]);
        v59 = sub_1C755063C();
        v52 = *v61;
        (*v61)(v51, v50);
        v52(v68, v50);
        v32 = v38;
        sub_1C72FBFC0(v2, v38);
        OUTLINED_FUNCTION_40_34();
        v2 = v62;
        v33 = v70;
        if (v59)
        {
          goto LABEL_61;
        }

LABEL_53:
        v4 = (v4 + 1) & v72;
        if (((*(v73 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      if (__swift_getEnumTagSinglePayload(v2 + v48, 1, v50) == 1)
      {
        goto LABEL_60;
      }

      goto LABEL_51;
    }
  }

LABEL_57:
  v53 = *v64;
  OUTLINED_FUNCTION_198_1();
  OUTLINED_FUNCTION_31_33(v54);
  sub_1C72FBF10(v6, *(v53 + 48) + *(v67 + 72) * v4);
  OUTLINED_FUNCTION_43_1();
  if (v56)
  {
    __break(1u);
LABEL_60:
    sub_1C72FBFC0(v2, &qword_1EC218C50);
    OUTLINED_FUNCTION_40_34();
LABEL_61:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v53 + 16) = v55;
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C72F01A0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_54();
  if (!(!v20 & v8) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_1C72E9FD8(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1C72F3EA4();
        goto LABEL_22;
      }

      sub_1C72F83CC(v6 + 1);
    }

    v9 = *v3;
    sub_1C7551F3C();
    v10 = *v2;
    v11 = v2[1];
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    MEMORY[0x1CCA5CD70](v10, v11);
    sub_1C75505AC();

    sub_1C7551FAC();
    OUTLINED_FUNCTION_46_25();
    if ((*(v9 + 56 + v13) >> a2))
    {
      v14 = ~v12;
      v25 = v2[2];
      v15 = *(v2 + 24);
      v16 = *(v9 + 48);
      do
      {
        v17 = v16 + 40 * a2;
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        v20 = *v17 == v10 && *(v17 + 8) == v11;
        if (v20 || (OUTLINED_FUNCTION_96_10(), (sub_1C7551DBC() & 1) != 0))
        {
          if (v19)
          {
            if (v15)
            {
              goto LABEL_25;
            }
          }

          else if ((v15 & 1) == 0 && v18 == v25)
          {
            goto LABEL_25;
          }
        }

        a2 = (a2 + 1) & v14;
        OUTLINED_FUNCTION_99_12();
      }

      while ((v21 & 1) != 0);
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_3_87();
  OUTLINED_FUNCTION_54_24();
  if (v24)
  {
    __break(1u);
LABEL_25:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v23;
  }
}

void sub_1C72F0360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_103_1();
  v41 = v40;
  OUTLINED_FUNCTION_12_54();
  if (!(!v59 & v45) || (v42 & 1) == 0)
  {
    if (v42)
    {
      sub_1C72EA2CC(v43 + 1);
    }

    else
    {
      if (v44 > v43)
      {
        sub_1C72F4028();
        goto LABEL_27;
      }

      sub_1C72F86A0(v43 + 1);
    }

    v46 = *v39;
    sub_1C7551F3C();
    v70 = v38[3];
    v71 = v38[2];
    MEMORY[0x1CCA5CD70]();
    sub_1C75505AC();

    sub_1C7551FAC();
    v47 = v46 + 56;
    OUTLINED_FUNCTION_9_69();
    if ((*(v46 + 56 + v49) >> v41))
    {
      v50 = ~v48;
      v68 = v38[4];
      v69 = *(v38 + 40);
      v51 = *v38;
      v52 = v38[1];
      v53 = *(v46 + 48);
      do
      {
        v54 = v53 + 56 * v41;
        v55 = *(v54 + 16);
        v56 = *(v54 + 24);
        v57 = *(v54 + 32);
        v58 = *(v54 + 40);
        v59 = *v54 == v51 && *(v54 + 8) == v52;
        if (!v59 && (sub_1C7551DBC() & 1) == 0)
        {
          goto LABEL_26;
        }

        if (v58)
        {
          if ((v69 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else if ((v69 & 1) != 0 || v57 != v68)
        {
          goto LABEL_26;
        }

        if (v55 == v71 && v56 == v70)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_323();
        if (sub_1C7551DBC())
        {
          goto LABEL_30;
        }

LABEL_26:
        v41 = (v41 + 1) & v50;
        OUTLINED_FUNCTION_70_16();
      }

      while (((*(v47 + v61) >> v41) & 1) != 0);
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_0_135(v62);
  OUTLINED_FUNCTION_100_11();
  *(v64 + 48) = *(v63 + 48);
  OUTLINED_FUNCTION_56_23();
  if (v67)
  {
    __break(1u);
LABEL_30:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v65 + 16) = v66;
    OUTLINED_FUNCTION_102_0();
  }
}

void sub_1C72F0530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_12_54();
  if (!(!v53 & v37) || (v34 & 1) == 0)
  {
    if (v34)
    {
      v38 = OUTLINED_FUNCTION_60_18(v35);
      sub_1C72EA598(v38);
      goto LABEL_11;
    }

    if (v36 <= v35)
    {
      v45 = OUTLINED_FUNCTION_60_18(v35);
      sub_1C72F8944(v45);
LABEL_11:
      OUTLINED_FUNCTION_203_3();
      sub_1C7551F3C();
      v46 = *(v32 + 40);
      OUTLINED_FUNCTION_208_3();
      sub_1C75505AC();

      sub_1C7551FAC();
      OUTLINED_FUNCTION_9_2();
      v49 = ~v48;
      while (1)
      {
        v50 = v47 & v49;
        OUTLINED_FUNCTION_99_12();
        if ((v51 & 1) == 0)
        {
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_188_2();
        v53 = v53 && v52 == v46;
        if (v53)
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_96_10();
        if (sub_1C7551DBC())
        {
          goto LABEL_20;
        }

        v47 = v50 + 1;
      }
    }

    sub_1C72F41C0();
  }

LABEL_8:
  v39 = *v33;
  OUTLINED_FUNCTION_198_1();
  OUTLINED_FUNCTION_31_33(v40);
  v41 = OUTLINED_FUNCTION_197_3();
  memcpy(v41, v42, 0x42uLL);
  OUTLINED_FUNCTION_43_1();
  if (v44)
  {
    __break(1u);
LABEL_20:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v39 + 16) = v43;
    OUTLINED_FUNCTION_204();
  }
}

void sub_1C72F065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_12_54();
  if (!(!v53 & v37) || (v34 & 1) == 0)
  {
    if (v34)
    {
      v38 = OUTLINED_FUNCTION_60_18(v35);
      sub_1C72EA86C(v38);
      goto LABEL_11;
    }

    if (v36 <= v35)
    {
      v45 = OUTLINED_FUNCTION_60_18(v35);
      sub_1C72F8BC8(v45);
LABEL_11:
      OUTLINED_FUNCTION_203_3();
      sub_1C7551F3C();
      v46 = *(v32 + 40);
      OUTLINED_FUNCTION_208_3();
      sub_1C75505AC();

      sub_1C7551FAC();
      OUTLINED_FUNCTION_9_2();
      v49 = ~v48;
      while (1)
      {
        v50 = v47 & v49;
        OUTLINED_FUNCTION_99_12();
        if ((v51 & 1) == 0)
        {
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_188_2();
        v53 = v53 && v52 == v46;
        if (v53)
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_96_10();
        if (sub_1C7551DBC())
        {
          goto LABEL_20;
        }

        v47 = v50 + 1;
      }
    }

    sub_1C72F4348();
  }

LABEL_8:
  v39 = *v33;
  OUTLINED_FUNCTION_198_1();
  OUTLINED_FUNCTION_31_33(v40);
  v41 = OUTLINED_FUNCTION_197_3();
  memcpy(v41, v42, 0x41uLL);
  OUTLINED_FUNCTION_43_1();
  if (v44)
  {
    __break(1u);
LABEL_20:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v39 + 16) = v43;
    OUTLINED_FUNCTION_204();
  }
}

void sub_1C72F0790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_154_3();
  v34 = v33;
  OUTLINED_FUNCTION_17_61();
  if (!v50 & v38 && (v35 & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v35)
  {
    v39 = OUTLINED_FUNCTION_60_18(v36);
    sub_1C72EAB48(v39);
  }

  else
  {
    if (v37 > v36)
    {
      sub_1C72F4CB4(&qword_1EC219108, &qword_1C7581210);
      goto LABEL_29;
    }

    v40 = OUTLINED_FUNCTION_60_18(v36);
    sub_1C72F8E54(v40);
  }

  OUTLINED_FUNCTION_203_3();
  sub_1C7551F3C();
  sub_1C7212D38(v34);
  sub_1C75505AC();

  sub_1C7551FAC();
  OUTLINED_FUNCTION_9_69();
  if ((*(v32 + 56 + v42) >> v31))
  {
    v43 = ~v41;
    do
    {
      v44 = 0xEA00000000007372;
      v45 = 0x6574636172616843;
      switch(*(*(v32 + 48) + v31))
      {
        case 1:
          v45 = OUTLINED_FUNCTION_79_4(0x61636F4Cu);
          v44 = 0xE900000000000073;
          break;
        case 2:
          v44 = 0xE500000000000000;
          v46 = 1701669204;
          goto LABEL_16;
        case 3:
          v44 = 0xE500000000000000;
          v46 = 1885958740;
LABEL_16:
          v45 = v46 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
          break;
        case 4:
          v44 = 0xE700000000000000;
          v45 = 0x73746E656D6F4DLL;
          break;
        default:
          break;
      }

      v47 = 0x6574636172616843;
      v48 = 0xEA00000000007372;
      switch(v34)
      {
        case 1:
          OUTLINED_FUNCTION_105_6();
          v48 = 0xE900000000000073;
          break;
        case 2:
          v48 = 0xE500000000000000;
          v49 = 1701669204;
          goto LABEL_22;
        case 3:
          v48 = 0xE500000000000000;
          v49 = 1885958740;
LABEL_22:
          v47 = v49 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
          break;
        case 4:
          v48 = 0xE700000000000000;
          v47 = 0x73746E656D6F4DLL;
          break;
        default:
          break;
      }

      v50 = v45 == v47 && v44 == v48;
      if (v50)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_96_10();
      v51 = sub_1C7551DBC();

      if (v51)
      {
        goto LABEL_33;
      }

      v31 = (v31 + 1) & v43;
      OUTLINED_FUNCTION_70_16();
    }

    while (((*(v32 + 56 + v52) >> v31) & 1) != 0);
  }

LABEL_29:
  OUTLINED_FUNCTION_0_135(*v30);
  *(v53 + v31) = v34;
  OUTLINED_FUNCTION_56_23();
  if (!v56)
  {
    *(v54 + 16) = v55;
    OUTLINED_FUNCTION_224_0();
    return;
  }

  __break(1u);
LABEL_32:

LABEL_33:
  sub_1C7551E3C();
  __break(1u);
}

void sub_1C72F0A18(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_54();
  if (!(!v9 & v8) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_1C72EAE2C(v6 + 1);
      goto LABEL_11;
    }

    if (v7 <= v6)
    {
      sub_1C72F9108(v6 + 1);
LABEL_11:
      v14 = *v3;
      sub_1C7551F2C();
      OUTLINED_FUNCTION_144_6();
      while (1)
      {
        OUTLINED_FUNCTION_158_3();
        if ((v15 & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v14 + 48) + 8 * a2) == v2)
        {
          goto LABEL_16;
        }
      }
    }

    sub_1C72F44D0();
  }

LABEL_8:
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_3_87();
  *(v10 + 8 * a2) = v2;
  OUTLINED_FUNCTION_56_23();
  if (v13)
  {
    __break(1u);
LABEL_16:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v12;
  }
}

void sub_1C72F0B00(unsigned __int8 a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  OUTLINED_FUNCTION_17_61();
  if (!(!v15 & v14) || (v9 & 1) == 0)
  {
    if (v9)
    {
      OUTLINED_FUNCTION_60_18(v12);
      OUTLINED_FUNCTION_199_1();
      sub_1C72ECA88();
      goto LABEL_11;
    }

    if (v13 <= v12)
    {
      OUTLINED_FUNCTION_60_18(v12);
      OUTLINED_FUNCTION_199_1();
      sub_1C72FAB00();
LABEL_11:
      v20 = *v6;
      sub_1C7551F3C();
      MEMORY[0x1CCA5E460](v8);
      sub_1C7551FAC();
      OUTLINED_FUNCTION_144_6();
      while (1)
      {
        a2 = v21 & v23;
        if (((*(v22 + (((v21 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v23)) & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v20 + 48) + a2) == v8)
        {
          goto LABEL_16;
        }

        v21 = a2 + 1;
      }
    }

    sub_1C72F4CB4(v10, v11);
  }

LABEL_8:
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_3_87();
  *(v16 + a2) = v8;
  OUTLINED_FUNCTION_56_23();
  if (v19)
  {
    __break(1u);
LABEL_16:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v18;
  }
}

void sub_1C72F0C38(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_61();
  if (!v27 & v8 && (v5 & 1) != 0)
  {
    goto LABEL_77;
  }

  if (v5)
  {
    sub_1C72EB050(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C72F4CB4(&qword_1EC219140, &qword_1C7576DB8);
      goto LABEL_77;
    }

    sub_1C72F92F4(v6 + 1);
  }

  v9 = *v2;
  sub_1C72DF3A0(*(*v2 + 40));
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_143_5();
  if ((*(v9 + 56 + v10) >> a2))
  {
    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_3_1();
    v36 = v11;
    v37 = v12;
    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_3_1();
    v34 = v13;
    v35 = v14;
    do
    {
      v15 = 0xE300000000000000;
      v16 = 7105633;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v16 = 0x4B6F72747365616DLL;
          v15 = 0xEE0064726F777965;
          break;
        case 2:
          v16 = 0xD000000000000010;
          v15 = v34;
          break;
        case 3:
          v16 = 0xD000000000000017;
          v15 = v35;
          break;
        case 4:
          v16 = 0xD000000000000013;
          v15 = v36;
          break;
        case 5:
          v15 = 0xE800000000000000;
          v16 = 0x7974697669746361;
          break;
        case 6:
          v15 = 0xE600000000000000;
          v16 = 0x656C706F6570;
          break;
        case 7:
          v15 = 0xE400000000000000;
          v16 = 1701669236;
          break;
        case 8:
          v15 = 0xE500000000000000;
          v16 = 0x6563616C70;
          break;
        case 9:
          v16 = 0x74617262656C6563;
          v18 = 7237481;
          goto LABEL_40;
        case 0xA:
          v15 = 0xE700000000000000;
          v17 = OUTLINED_FUNCTION_77_6();
          goto LABEL_34;
        case 0xB:
          v15 = 0xE400000000000000;
          v16 = 1885958772;
          break;
        case 0xC:
          v15 = 0xE700000000000000;
          v17 = 0x72746E756F63;
LABEL_34:
          v16 = v17 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
          break;
        case 0xD:
          v15 = 0xE700000000000000;
          v16 = 0x41535579746963;
          break;
        case 0xE:
          v16 = 0xD000000000000011;
          v15 = v37;
          break;
        case 0xF:
          v15 = 0xE600000000000000;
          v16 = 0x6C6175736976;
          break;
        case 0x10:
          v15 = 0xE800000000000000;
          v16 = 0x656E6F54646F6F6DLL;
          break;
        case 0x11:
          v15 = 0xE800000000000000;
          v16 = OUTLINED_FUNCTION_79_4(0x61727563u);
          break;
        case 0x12:
          v16 = 7628144;
          break;
        case 0x13:
          v15 = 0xE500000000000000;
          v16 = OUTLINED_FUNCTION_8_13() & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 0x14:
          v15 = 0xE600000000000000;
          v16 = OUTLINED_FUNCTION_8_13() & 0xFFFF0000FFFFFFFFLL | 0x746100000000;
          break;
        case 0x15:
          v15 = 0xE600000000000000;
          v16 = OUTLINED_FUNCTION_8_13() & 0xFFFF0000FFFFFFFFLL | 0x6E6500000000;
          break;
        case 0x16:
          v15 = 0xE700000000000000;
          v16 = OUTLINED_FUNCTION_8_13() | 0x65726500000000;
          break;
        case 0x17:
          v16 = 0x697254726F467369;
          v15 = 0xE900000000000070;
          break;
        case 0x18:
          v16 = 0x726F5769746C756DLL;
          v15 = 0xEF65736172685064;
          break;
        case 0x19:
          v15 = 0xE700000000000000;
          v16 = 0x646574736F6F62;
          break;
        case 0x1A:
          v16 = 0x54646574736F6F62;
          v18 = 7367026;
LABEL_40:
          v15 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x1B:
          v16 = 0x6146656C706F6570;
          v15 = 0xEC000000796C696DLL;
          break;
        default:
          break;
      }

      v19 = 0xE300000000000000;
      v20 = 7105633;
      switch(a1)
      {
        case 1:
          v20 = 0x4B6F72747365616DLL;
          v19 = 0xEE0064726F777965;
          break;
        case 2:
          v20 = 0xD000000000000010;
          v19 = v34;
          break;
        case 3:
          v20 = 0xD000000000000017;
          v19 = v35;
          break;
        case 4:
          v20 = 0xD000000000000013;
          v19 = v36;
          break;
        case 5:
          v19 = 0xE800000000000000;
          v20 = 0x7974697669746361;
          break;
        case 6:
          v19 = 0xE600000000000000;
          v20 = 0x656C706F6570;
          break;
        case 7:
          v19 = 0xE400000000000000;
          v20 = 1701669236;
          break;
        case 8:
          v19 = 0xE500000000000000;
          v20 = 0x6563616C70;
          break;
        case 9:
          v20 = 0x74617262656C6563;
          v22 = 7237481;
          goto LABEL_70;
        case 10:
          v19 = 0xE700000000000000;
          OUTLINED_FUNCTION_75_6();
          goto LABEL_64;
        case 11:
          v19 = 0xE400000000000000;
          v20 = 1885958772;
          break;
        case 12:
          v19 = 0xE700000000000000;
          v21 = 0x72746E756F63;
LABEL_64:
          v20 = v21 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
          break;
        case 13:
          v19 = 0xE700000000000000;
          v20 = 0x41535579746963;
          break;
        case 14:
          v20 = 0xD000000000000011;
          v19 = v37;
          break;
        case 15:
          v19 = 0xE600000000000000;
          v20 = 0x6C6175736976;
          break;
        case 16:
          v19 = 0xE800000000000000;
          v20 = 0x656E6F54646F6F6DLL;
          break;
        case 17:
          v19 = 0xE800000000000000;
          OUTLINED_FUNCTION_105_6();
          break;
        case 18:
          v20 = 7628144;
          break;
        case 19:
          v19 = 0xE500000000000000;
          OUTLINED_FUNCTION_10_16();
          v20 = v26 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 20:
          v19 = 0xE600000000000000;
          OUTLINED_FUNCTION_10_16();
          v20 = v23 & 0xFFFF0000FFFFFFFFLL | 0x746100000000;
          break;
        case 21:
          v19 = 0xE600000000000000;
          OUTLINED_FUNCTION_10_16();
          v20 = v24 & 0xFFFF0000FFFFFFFFLL | 0x6E6500000000;
          break;
        case 22:
          v19 = 0xE700000000000000;
          OUTLINED_FUNCTION_10_16();
          v20 = v25 | 0x65726500000000;
          break;
        case 23:
          v20 = 0x697254726F467369;
          v19 = 0xE900000000000070;
          break;
        case 24:
          v20 = 0x726F5769746C756DLL;
          v19 = 0xEF65736172685064;
          break;
        case 25:
          v19 = 0xE700000000000000;
          v20 = 0x646574736F6F62;
          break;
        case 26:
          v20 = 0x54646574736F6F62;
          v22 = 7367026;
LABEL_70:
          v19 = v22 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 27:
          v20 = 0x6146656C706F6570;
          v19 = 0xEC000000796C696DLL;
          break;
        default:
          break;
      }

      v27 = v16 == v20 && v15 == v19;
      if (v27)
      {
        goto LABEL_80;
      }

      OUTLINED_FUNCTION_96_10();
      v28 = sub_1C7551DBC();

      if (v28)
      {
        goto LABEL_81;
      }

      OUTLINED_FUNCTION_134_8();
    }

    while ((v29 & 1) != 0);
  }

LABEL_77:
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_3_87();
  *(v30 + a2) = a1;
  OUTLINED_FUNCTION_56_23();
  if (!v33)
  {
    *(v31 + 16) = v32;
    return;
  }

  __break(1u);
LABEL_80:

LABEL_81:
  sub_1C7551E3C();
  __break(1u);
}

void sub_1C72F1298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_103_1();
  a37 = v38;
  a38 = v39;
  v41 = v40;
  v43 = v42;
  v82 = v44;
  v83 = v45;
  OUTLINED_FUNCTION_17_61();
  if (!(!v67 & v49) || (v46 & 1) == 0)
  {
    if (v46)
    {
      v50 = OUTLINED_FUNCTION_60_18(v47);
      sub_1C72EB2BC(v50);
    }

    else
    {
      if (v48 > v47)
      {
        sub_1C72F4BB0(&qword_1EC216758, &qword_1C75654D8);
        goto LABEL_43;
      }

      v51 = OUTLINED_FUNCTION_60_18(v47);
      sub_1C72F9530(v51);
    }

    OUTLINED_FUNCTION_211_3();
    sub_1C6FF91E0(&a18, v83);
    sub_1C7551F5C();
    if (v43)
    {
      sub_1C75505AC();
    }

    sub_1C7551FAC();
    OUTLINED_FUNCTION_46_25();
    if ((*(a16 + 56 + v52) >> v41))
    {
      OUTLINED_FUNCTION_109_6();
      OUTLINED_FUNCTION_3_1();
      v80 = v53;
      v81 = v54;
      OUTLINED_FUNCTION_3_1();
      v79 = v55;
      do
      {
        v56 = *(a16 + 48) + 24 * v41;
        v58 = *(v56 + 8);
        v57 = *(v56 + 16);
        v59 = 0xEE0064696C61766ELL;
        v60 = 0x4973497465737361;
        switch(*v56)
        {
          case 1:
            OUTLINED_FUNCTION_524();
            v60 = v61 + 5;
            v59 = v79;
            break;
          case 2:
            v60 = 0x726F6353706F7263;
            v59 = 0xEF776F4C6F6F5465;
            break;
          case 3:
            v60 = OUTLINED_FUNCTION_195_0();
            break;
          case 4:
            v60 = 0xD000000000000011;
            v59 = v80;
            break;
          case 5:
            OUTLINED_FUNCTION_524();
            v60 = v62 + 8;
            v59 = v81;
            break;
          default:
            break;
        }

        v63 = 0x4973497465737361;
        v64 = 0xEE0064696C61766ELL;
        switch(v83)
        {
          case 1:
            OUTLINED_FUNCTION_524();
            v63 = v65 + 5;
            v64 = v79;
            break;
          case 2:
            v63 = 0x726F6353706F7263;
            v64 = 0xEF776F4C6F6F5465;
            break;
          case 3:
            OUTLINED_FUNCTION_194_0();
            break;
          case 4:
            v63 = 0xD000000000000011;
            v64 = v80;
            break;
          case 5:
            OUTLINED_FUNCTION_524();
            v63 = v66 + 8;
            v64 = v81;
            break;
          default:
            break;
        }

        v67 = v60 == v63 && v59 == v64;
        if (v67)
        {
          sub_1C75504FC();

          if (!v57)
          {
LABEL_39:

            if (!v43)
            {
              goto LABEL_47;
            }

            goto LABEL_42;
          }
        }

        else
        {
          v68 = OUTLINED_FUNCTION_118_4(v60, v59, v63);
          sub_1C75504FC();

          if ((v68 & 1) == 0)
          {
            goto LABEL_41;
          }

          if (!v57)
          {
            goto LABEL_39;
          }
        }

        if (!v43)
        {
LABEL_41:

          goto LABEL_42;
        }

        if (v58 == v82 && v57 == v43)
        {
          goto LABEL_46;
        }

        v72 = OUTLINED_FUNCTION_209_3(v69, v70, v82);

        if (v72)
        {
          goto LABEL_47;
        }

LABEL_42:
        OUTLINED_FUNCTION_113_9();
      }

      while ((v73 & 1) != 0);
    }
  }

LABEL_43:
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_3_87();
  v75 = v74 + 24 * v41;
  *v75 = v83;
  *(v75 + 8) = v82;
  *(v75 + 16) = v43;
  OUTLINED_FUNCTION_56_23();
  if (v78)
  {
    __break(1u);
LABEL_46:

LABEL_47:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2192E0, &qword_1C7577760);
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v76 + 16) = v77;
    OUTLINED_FUNCTION_102_0();
  }
}

void sub_1C72F161C(uint64_t *a1, unint64_t a2)
{
  OUTLINED_FUNCTION_17_61();
  v46 = v8;
  if (!(!v29 & v9) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_1C72EB664(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1C72F4584();
        goto LABEL_47;
      }

      sub_1C72F98B4(v6 + 1);
    }

    v10 = *v2;
    sub_1C7551F3C();
    v11 = *a1;
    v12 = a1[1];
    v13 = a1[2];
    v14 = a1[3];
    v15 = a1[4];
    v16 = a1[5];
    v17 = a1[6];
    sub_1C75505AC();
    v51 = v14;
    v52 = v13;
    sub_1C75505AC();
    v48 = v15;
    sub_1C70418D0();
    sub_1C7551F5C();
    if (v17)
    {
      sub_1C75505AC();
    }

    v45 = a1[7];
    MEMORY[0x1CCA5E460]();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_79_1();
    a2 = v19 & ~v18;
    v50 = v20;
    if ((*(v20 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v47 = v17;
      v49 = ~v18;
      v21 = *(v10 + 48);
      v44 = v16;
      do
      {
        v22 = (v21 + (a2 << 6));
        v24 = v22[2];
        v23 = v22[3];
        v26 = v22[4];
        v25 = v22[5];
        v27 = v22[6];
        v28 = v22[7];
        v29 = *v22 == v11 && v22[1] == v12;
        if (v29 || (OUTLINED_FUNCTION_96_10(), (sub_1C7551DBC() & 1) != 0))
        {
          v30 = v24 == v52 && v23 == v51;
          if (v30 || (sub_1C7551DBC() & 1) != 0)
          {
            v31 = *(v26 + 16);
            if (v31 == *(v48 + 16))
            {
              if (v31)
              {
                v32 = v26 == v48;
              }

              else
              {
                v32 = 1;
              }

              if (!v32)
              {
                v33 = (v26 + 40);
                v34 = (v48 + 40);
                while (v31)
                {
                  v35 = *(v33 - 1) == *(v34 - 1) && *v33 == *v34;
                  if (!v35 && (sub_1C7551DBC() & 1) == 0)
                  {
                    goto LABEL_46;
                  }

                  v33 += 2;
                  v34 += 2;
                  if (!--v31)
                  {
                    goto LABEL_36;
                  }
                }

                __break(1u);
                goto LABEL_50;
              }

LABEL_36:
              if (v27)
              {
                if (v47)
                {
                  v36 = v25 == v44 && v27 == v47;
                  if (v36 || (sub_1C7551DBC() & 1) != 0)
                  {
LABEL_45:
                    if (v28 == v45)
                    {
                      goto LABEL_51;
                    }
                  }
                }
              }

              else if (!v47)
              {
                goto LABEL_45;
              }
            }
          }
        }

LABEL_46:
        a2 = (a2 + 1) & v49;
      }

      while (((*(v50 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_47:
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_3_87();
  v38 = (v37 + (a2 << 6));
  v39 = v46[1];
  *v38 = *v46;
  v38[1] = v39;
  v40 = v46[3];
  v38[2] = v46[2];
  v38[3] = v40;
  OUTLINED_FUNCTION_56_23();
  if (v43)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v41 + 16) = v42;
  }
}

void sub_1C72F18F0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v9 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v48 - v15;
  v17 = *(*v1 + 16);
  v18 = *(*v1 + 24);
  if (v18 > v17 && (v3 & 1) != 0)
  {
    goto LABEL_54;
  }

  if (v3)
  {
    sub_1C72EB9B8(v17 + 1);
  }

  else
  {
    if (v18 > v17)
    {
      sub_1C72F4704();
      goto LABEL_54;
    }

    sub_1C72F9BC4(v17 + 1);
  }

  v19 = *v1;
  sub_1C7551F3C();
  v20 = *(v7 + 24);
  v21 = *(v7 + 80);
  v61 = *(v7 + 16);
  v60 = v20;
  sub_1C75505AC();
  v58 = v21;
  sub_1C7041CDC(v63, v21);
  sub_1C7551FAC();
  v57 = v19;
  OUTLINED_FUNCTION_3_42();
  v56 = v23;
  if ((*(v23 + v24) >> v5))
  {
    v55 = ~v22;
    v25 = *(v7 + 48);
    v53 = *(v7 + 40);
    v52 = v25;
    v26 = *(v7 + 64);
    v51 = *(v7 + 56);
    v50 = v51 ^ 1;
    v59 = v26;
    v49 = (v26 + 40);
    v48[2] = v7;
    v48[1] = v1;
    do
    {
      memcpy(v63, (*(v57 + 48) + 120 * v5), 0x78uLL);
      v27 = v63[2] == v61 && v63[3] == v60;
      if (!v27 && (sub_1C7551DBC() & 1) == 0)
      {
        goto LABEL_53;
      }

      if (v63[8])
      {
        if (!v59)
        {
          goto LABEL_53;
        }

        v28 = *(v63[8] + 16);
        if (v28 != *(v59 + 16))
        {
          goto LABEL_53;
        }

        if (v28)
        {
          v29 = v63[8] == v59;
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          v30 = (v63[8] + 40);
          v31 = v49;
          while (v28)
          {
            v32 = *(v30 - 1) == *(v31 - 1) && *v30 == *v31;
            if (!v32 && (sub_1C7551DBC() & 1) == 0)
            {
              goto LABEL_53;
            }

            v30 += 2;
            v31 += 2;
            if (!--v28)
            {
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          sub_1C7551E3C();
          __break(1u);
          return;
        }
      }

      else if (v59)
      {
        goto LABEL_53;
      }

LABEL_32:
      v33 = v63[10];
      v34 = *(v63[10] + 16);
      if (v34 == *(v58 + 16))
      {
        if (v34 && v63[10] != v58)
        {
          v35 = (*(v54 + 80) + 32) & ~*(v54 + 80);
          v36 = v63[10] + v35;
          v7 = v58 + v35;
          sub_1C6FCA6E4(v63, &v62);
          v1 = 0;
          while (v1 < *(v33 + 16))
          {
            v37 = *(v54 + 72) * v1;
            sub_1C72FBF68(v36 + v37, v16);
            OUTLINED_FUNCTION_171_1();
            if (v38)
            {
              goto LABEL_58;
            }

            sub_1C72FBF68(v7 + v37, v13);
            v39 = OUTLINED_FUNCTION_282();
            v41 = static QueryTokenSuggestion.== infix(_:_:)(v39, v40);
            sub_1C70F76E0(v13, type metadata accessor for QueryTokenSuggestion);
            sub_1C70F76E0(v16, type metadata accessor for QueryTokenSuggestion);
            if ((v41 & 1) == 0)
            {
              sub_1C6FDD548(v63);
              OUTLINED_FUNCTION_170_4();
              goto LABEL_53;
            }

            if (v34 == ++v1)
            {
              sub_1C6FDD548(v63);
              OUTLINED_FUNCTION_170_4();
              goto LABEL_41;
            }
          }

          goto LABEL_57;
        }

LABEL_41:
        if (v63[7])
        {
          if (v51)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v42 = v50;
          if (v63[5] != v53)
          {
            v42 = 0;
          }

          if (v42 == 1 && v63[6] == v52)
          {
            goto LABEL_60;
          }
        }
      }

LABEL_53:
      v5 = (v5 + 1) & v55;
      OUTLINED_FUNCTION_62_0();
    }

    while (((*(v56 + v44) >> v5) & 1) != 0);
  }

LABEL_54:
  OUTLINED_FUNCTION_25_35(*v1 + 8 * (v5 >> 6));
  memcpy((v45 + 120 * v5), v7, 0x78uLL);
  OUTLINED_FUNCTION_54_3();
  if (v47)
  {
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_127_6(v46);
  OUTLINED_FUNCTION_25_0();
}

void sub_1C72F1DD4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_59_20(v3);
  sub_1C754F0FC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_65();
  if (!(!v8 & v7) || (v0 & 1) == 0)
  {
    if (v0)
    {
      sub_1C72EBDD4(v5 + 1);
      goto LABEL_9;
    }

    if (v6 <= v5)
    {
      sub_1C72F9F34(v5 + 1);
LABEL_9:
      OUTLINED_FUNCTION_97_9();
      OUTLINED_FUNCTION_78_12();
      v11 = sub_1C72FC014(v9, v10, MEMORY[0x1E69C1798]);
      OUTLINED_FUNCTION_82_14(v11);
      OUTLINED_FUNCTION_28_27();
      while (1)
      {
        v13 = v12 & v2;
        OUTLINED_FUNCTION_33_30();
        if ((v14 & 1) == 0)
        {
          goto LABEL_13;
        }

        v15 = OUTLINED_FUNCTION_34_30();
        v16(v15);
        OUTLINED_FUNCTION_78_12();
        v18 = sub_1C72FC014(&qword_1EC217798, v17, MEMORY[0x1E69C17A0]);
        OUTLINED_FUNCTION_61_16(v18);
        v19 = OUTLINED_FUNCTION_58_22();
        v20(v19);
        if (v1)
        {
          goto LABEL_16;
        }

        v12 = v13 + 1;
      }
    }

    sub_1C72F488C();
  }

LABEL_13:
  v21 = OUTLINED_FUNCTION_8_65();
  v22(v21);
  OUTLINED_FUNCTION_54_3();
  if (v24)
  {
    __break(1u);
LABEL_16:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_127_6(v23);
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C72F1F74()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_59_20(v3);
  sub_1C754D8BC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_65();
  if (!(!v8 & v7) || (v0 & 1) == 0)
  {
    if (v0)
    {
      sub_1C72EC12C(v5 + 1);
      goto LABEL_9;
    }

    if (v6 <= v5)
    {
      sub_1C72FA24C(v5 + 1);
LABEL_9:
      OUTLINED_FUNCTION_97_9();
      OUTLINED_FUNCTION_77_12();
      v11 = sub_1C72FC014(v9, v10, MEMORY[0x1E6968140]);
      OUTLINED_FUNCTION_82_14(v11);
      OUTLINED_FUNCTION_28_27();
      while (1)
      {
        v13 = v12 & v2;
        OUTLINED_FUNCTION_33_30();
        if ((v14 & 1) == 0)
        {
          goto LABEL_13;
        }

        v15 = OUTLINED_FUNCTION_34_30();
        v16(v15);
        OUTLINED_FUNCTION_77_12();
        v18 = sub_1C72FC014(&qword_1EDD0CBF0, v17, MEMORY[0x1E6968148]);
        OUTLINED_FUNCTION_61_16(v18);
        v19 = OUTLINED_FUNCTION_58_22();
        v20(v19);
        if (v1)
        {
          goto LABEL_16;
        }

        v12 = v13 + 1;
      }
    }

    sub_1C72F488C();
  }

LABEL_13:
  v21 = OUTLINED_FUNCTION_8_65();
  v22(v21);
  OUTLINED_FUNCTION_54_3();
  if (v24)
  {
    __break(1u);
LABEL_16:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_127_6(v23);
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C72F2114()
{
  OUTLINED_FUNCTION_154_3();
  v4 = v3;
  OUTLINED_FUNCTION_17_61();
  if (!(!v9 & v8) || (v5 & 1) == 0)
  {
    if (v5)
    {
      v10 = OUTLINED_FUNCTION_60_18(v6);
      sub_1C72EC484(v10);
      goto LABEL_11;
    }

    if (v7 <= v6)
    {
      v15 = OUTLINED_FUNCTION_60_18(v6);
      sub_1C72FA564(v15);
LABEL_11:
      OUTLINED_FUNCTION_161_5();
      sub_1C7551F6C();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_9_2();
      v18 = ~v17;
      while (1)
      {
        v1 = v16 & v18;
        OUTLINED_FUNCTION_70_16();
        if (((*(v2 + 56 + v19) >> v1) & 1) == 0)
        {
          goto LABEL_8;
        }

        type metadata accessor for PHPersonAgeType(0);
        if (*(*(v2 + 48) + 2 * v1) == v4)
        {
          goto LABEL_16;
        }

        v16 = v1 + 1;
      }
    }

    sub_1C72F4A70();
  }

LABEL_8:
  OUTLINED_FUNCTION_0_135(*v0);
  *(v11 + 2 * v1) = v4;
  OUTLINED_FUNCTION_56_23();
  if (v14)
  {
    __break(1u);
LABEL_16:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v13;
  }
}

void sub_1C72F2204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_103_1();
  a37 = v38;
  a38 = v39;
  v41 = v40;
  v43 = v42;
  v82 = v44;
  v83 = v45;
  OUTLINED_FUNCTION_17_61();
  if (!(!v67 & v49) || (v46 & 1) == 0)
  {
    if (v46)
    {
      v50 = OUTLINED_FUNCTION_60_18(v47);
      sub_1C72EC6D0(v50);
    }

    else
    {
      if (v48 > v47)
      {
        sub_1C72F4BB0(&qword_1EC216760, &qword_1C75654E0);
        goto LABEL_43;
      }

      v51 = OUTLINED_FUNCTION_60_18(v47);
      sub_1C72FA780(v51);
    }

    OUTLINED_FUNCTION_211_3();
    sub_1C6FF92B4(&a18, v83);
    sub_1C7551F5C();
    if (v43)
    {
      sub_1C75505AC();
    }

    sub_1C7551FAC();
    OUTLINED_FUNCTION_46_25();
    if ((*(a16 + 56 + v52) >> v41))
    {
      OUTLINED_FUNCTION_109_6();
      OUTLINED_FUNCTION_3_1();
      v80 = v53;
      v81 = v54;
      OUTLINED_FUNCTION_3_1();
      v79 = v55;
      do
      {
        v56 = *(a16 + 48) + 24 * v41;
        v58 = *(v56 + 8);
        v57 = *(v56 + 16);
        v59 = 0xEF776F4C6F6F5465;
        v60 = 0x726F6353706F7263;
        switch(*v56)
        {
          case 1:
            OUTLINED_FUNCTION_524();
            v60 = v62 + 5;
            v59 = v80;
            break;
          case 2:
            break;
          case 3:
            v60 = OUTLINED_FUNCTION_195_0();
            break;
          case 4:
            v60 = 0xD000000000000011;
            v59 = v81;
            break;
          case 5:
            v60 = 0x736E6961746E6F63;
            v59 = 0xEC00000074786554;
            break;
          default:
            OUTLINED_FUNCTION_524();
            v60 = v61 + 25;
            v59 = v79;
            break;
        }

        v63 = 0x726F6353706F7263;
        v64 = 0xEF776F4C6F6F5465;
        switch(v83)
        {
          case 1:
            OUTLINED_FUNCTION_524();
            v63 = v66 + 5;
            v64 = v80;
            break;
          case 2:
            break;
          case 3:
            OUTLINED_FUNCTION_194_0();
            break;
          case 4:
            v63 = 0xD000000000000011;
            v64 = v81;
            break;
          case 5:
            v63 = 0x736E6961746E6F63;
            v64 = 0xEC00000074786554;
            break;
          default:
            OUTLINED_FUNCTION_524();
            v63 = v65 + 25;
            v64 = v79;
            break;
        }

        v67 = v60 == v63 && v59 == v64;
        if (v67)
        {
          sub_1C75504FC();

          if (!v57)
          {
LABEL_39:

            if (!v43)
            {
              goto LABEL_47;
            }

            goto LABEL_42;
          }
        }

        else
        {
          v68 = OUTLINED_FUNCTION_118_4(v60, v59, v63);
          sub_1C75504FC();

          if ((v68 & 1) == 0)
          {
            goto LABEL_41;
          }

          if (!v57)
          {
            goto LABEL_39;
          }
        }

        if (!v43)
        {
LABEL_41:

          goto LABEL_42;
        }

        if (v58 == v82 && v57 == v43)
        {
          goto LABEL_46;
        }

        v72 = OUTLINED_FUNCTION_209_3(v69, v70, v82);

        if (v72)
        {
          goto LABEL_47;
        }

LABEL_42:
        OUTLINED_FUNCTION_113_9();
      }

      while ((v73 & 1) != 0);
    }
  }

LABEL_43:
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_3_87();
  v75 = v74 + 24 * v41;
  *v75 = v83;
  *(v75 + 8) = v82;
  *(v75 + 16) = v43;
  OUTLINED_FUNCTION_56_23();
  if (v78)
  {
    __break(1u);
LABEL_46:

LABEL_47:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A5F0, &qword_1C75811D0);
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v76 + 16) = v77;
    OUTLINED_FUNCTION_102_0();
  }
}

void sub_1C72F255C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_154_3();
  OUTLINED_FUNCTION_12_54();
  if (!(!v8 & v7) || (v4 & 1) == 0)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_60_18(v5);
      sub_1C72ECE20();
      goto LABEL_11;
    }

    if (v6 <= v5)
    {
      OUTLINED_FUNCTION_60_18(v5);
      sub_1C72FAE18();
LABEL_11:
      OUTLINED_FUNCTION_203_3();
      sub_1C75513DC();
      OUTLINED_FUNCTION_9_2();
      v15 = ~v14;
      while (1)
      {
        v2 = v13 & v15;
        OUTLINED_FUNCTION_70_16();
        if (((*(v3 + 56 + v16) >> v2) & 1) == 0)
        {
          goto LABEL_8;
        }

        type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate(0);
        v17 = *(*(v3 + 48) + 8 * v2);
        v18 = sub_1C75513EC();

        if (v18)
        {
          goto LABEL_16;
        }

        v13 = v2 + 1;
      }
    }

    sub_1C72F4E98(&qword_1EC217790, &qword_1C7581290);
  }

LABEL_8:
  OUTLINED_FUNCTION_0_135(*v1);
  *(v9 + 8 * v2) = v0;
  OUTLINED_FUNCTION_56_23();
  if (v12)
  {
    __break(1u);
LABEL_16:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v11;
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C72F26C0(unsigned __int16 a1, uint64_t a2)
{
  v4 = a1;
  OUTLINED_FUNCTION_17_61();
  if (!(!v9 & v8) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_1C72ECBD0(v6 + 1);
      goto LABEL_11;
    }

    if (v7 <= v6)
    {
      sub_1C72FAC28(v6 + 1);
LABEL_11:
      v14 = *v2;
      MEMORY[0x1CCA5E430](*(*v2 + 40), v4, 2);
      OUTLINED_FUNCTION_144_6();
      while (1)
      {
        OUTLINED_FUNCTION_158_3();
        if ((v15 & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v14 + 48) + 2 * a2) == v4)
        {
          goto LABEL_16;
        }
      }
    }

    sub_1C72F4D58();
  }

LABEL_8:
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_3_87();
  *(v10 + 2 * a2) = v4;
  OUTLINED_FUNCTION_56_23();
  if (v13)
  {
    __break(1u);
LABEL_16:
    sub_1C7551E3C();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v12;
  }
}

void sub_1C72F28DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2167E8, &unk_1C7581230);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_117_6();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_1_102();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_159_5(v6, v7);
    }

    v11 = 0;
    OUTLINED_FUNCTION_6_76();
    OUTLINED_FUNCTION_137_8();
    while (v4)
    {
      OUTLINED_FUNCTION_8_2();
LABEL_15:
      v16 = v12 | (v11 << 6);
      v17 = (*(v1 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = (v0[6] + 16 * v16);
      *v19 = *v17;
      v19[1] = v18;
      sub_1C75504FC();
    }

    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_17;
      }

      ++v13;
      if (*(v2 + 8 * v11))
      {
        OUTLINED_FUNCTION_78_0();
        v4 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_1C72F29BC()
{
  v1 = v0;
  v2 = type metadata accessor for Hastings.Asset(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2190F8, &qword_1C7576D90);
  v6 = *v0;
  v7 = sub_1C755177C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1C72FBF68(*(v6 + 48) + v21, v5);
        sub_1C72FBF10(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }
}

void sub_1C72F2BC4()
{
  OUTLINED_FUNCTION_33();
  v3 = v0;
  v4 = type metadata accessor for Hastings.Feature(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219100, &qword_1C7576D98);
  v9 = *v0;
  v10 = sub_1C755177C();
  if (*(v9 + 16))
  {
    OUTLINED_FUNCTION_18_44();
    OUTLINED_FUNCTION_157_2();
    if (v14)
    {
      v15 = v11 >= v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      memmove(v11, v1, 8 * v12);
    }

    v16 = 0;
    *(v10 + 16) = *(v9 + 16);
    OUTLINED_FUNCTION_23_37();
    v19 = v18 & v17;
    v21 = (v20 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_86();
LABEL_15:
        OUTLINED_FUNCTION_174_2();
        OUTLINED_FUNCTION_79_13();
        sub_1C72FBF68(v26 + v2, v8);
        OUTLINED_FUNCTION_76_15();
        sub_1C72FBF10(v8, v27 + v2);
      }

      while (v19);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_194_3();
      if (v23)
      {
        OUTLINED_FUNCTION_78_0();
        v19 = v25 & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v10;
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C72F2D54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216890, &qword_1C75812B0);
  v2 = *v0;
  v3 = sub_1C755177C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1C72F2E94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216888, &qword_1C7565668);
  v2 = *v0;
  v3 = sub_1C755177C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1C72F2FE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219120, &unk_1C7581260);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_117_6();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_102();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_159_5(v4, v5);
    }

    v9 = 0;
    OUTLINED_FUNCTION_6_76();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_15:
        v19 = v15 | (v9 << 6);
        v20 = 3 * v19;
        v21 = (*(v1 + 48) + 192 * v19);
        memcpy(__dst, v21, sizeof(__dst));
        memmove((v0[6] + (v20 << 6)), v21, 0xC0uLL);
        sub_1C7080654(__dst, &v22);
      }

      while (v12);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v2 + 8 * v9))
      {
        OUTLINED_FUNCTION_78_0();
        v12 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_1C72F310C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A610, &qword_1C7581220);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
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

void sub_1C72F3284()
{
  OUTLINED_FUNCTION_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A608, &qword_1C7581218);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_117_6();
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_1_102();
    if (v6)
    {
      v7 = v3 >= v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      OUTLINED_FUNCTION_159_5(v3, v4);
    }

    v8 = 0;
    OUTLINED_FUNCTION_6_76();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_88();
LABEL_15:
        OUTLINED_FUNCTION_179_3();
        v17 *= 5;
        v19 = (v18 + 8 * v17);
        v20 = v19[1];
        v21 = v19[2];
        v22 = v19[3];
        v23 = v19[4];
        v24 = (v0[6] + 8 * v17);
        *v24 = *v19;
        v24[1] = v20;
        v24[2] = v21;
        v24[3] = v22;
        v24[4] = v23;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
      }

      while (v11);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + 8 * v8))
      {
        OUTLINED_FUNCTION_78_0();
        v11 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C72F338C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A618, &qword_1C7581228);
  v24 = v0;
  v1 = *v0;
  v2 = sub_1C755177C();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = (v2 + 56);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || v4 >= v1 + 56 + 8 * v5)
    {
      memmove(v4, (v1 + 56), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 56);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = 3 * (v13 | (v7 << 6));
        v17 = (*(v1 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = v17[2];
        v20 = v17[3];
        v21 = v17[4];
        v22 = v17[5];
        v23 = (*(v3 + 48) + 16 * v16);
        *v23 = *v17;
        v23[1] = v18;
        v23[2] = v19;
        v23[3] = v20;
        v23[4] = v21;
        v23[5] = v22;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
      }

      while (v11);
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
        goto LABEL_19;
      }

      v15 = *(v1 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v24 = v3;
  }
}

void sub_1C72F3530()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A600, &qword_1C7581208);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
        sub_1C75504FC();
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

void sub_1C72F3684()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A668, &qword_1C75812D0);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 25);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + 8 * v17;
        *v24 = *v18;
        *(v24 + 8) = v19;
        *(v24 + 16) = v20;
        *(v24 + 24) = v21;
        *(v24 + 25) = v22;
        *(v24 + 32) = v23;
        sub_1C75504FC();
        sub_1C75504FC();
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

void sub_1C72F3808()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A670, &qword_1C75812D8);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + (v17 << 6));
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        sub_1C7026698(v27, &v26);
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

void sub_1C72F3988()
{
  OUTLINED_FUNCTION_33();
  v3 = v0;
  v4 = type metadata accessor for PartOfWeekExtendedToken(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A678, &qword_1C75812E0);
  v9 = *v0;
  v10 = sub_1C755177C();
  if (*(v9 + 16))
  {
    OUTLINED_FUNCTION_18_44();
    OUTLINED_FUNCTION_157_2();
    if (v14)
    {
      v15 = v11 >= v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      memmove(v11, v1, 8 * v12);
    }

    v16 = 0;
    *(v10 + 16) = *(v9 + 16);
    OUTLINED_FUNCTION_23_37();
    v19 = v18 & v17;
    v21 = (v20 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_86();
LABEL_15:
        OUTLINED_FUNCTION_174_2();
        OUTLINED_FUNCTION_75_12();
        sub_1C72FBF68(v26 + v2, v8);
        OUTLINED_FUNCTION_14_52();
        sub_1C72FBF10(v8, v27 + v2);
      }

      while (v19);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_194_3();
      if (v23)
      {
        OUTLINED_FUNCTION_78_0();
        v19 = v25 & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v10;
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C72F3B04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A680, &qword_1C75812E8);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v24 = *(v18 + 32);
        v23 = *(v18 + 40);
        LOBYTE(v18) = *(v18 + 48);
        v25 = *(v4 + 48) + v17;
        *v25 = v19;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v24;
        *(v25 + 40) = v23;
        *(v25 + 48) = v18;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
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

void sub_1C72F3C9C()
{
  v1 = v0;
  v2 = type metadata accessor for TimeExtendedToken(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A688, &qword_1C75812F0);
  v6 = *v0;
  v7 = sub_1C755177C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1C72FBF68(*(v6 + 48) + v21, v5);
        sub_1C72FBF10(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }
}

void sub_1C72F3EA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A690, &qword_1C75812F8);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 25);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + 8 * v17;
        *v24 = *v18;
        *(v24 + 8) = v19;
        *(v24 + 16) = v20;
        *(v24 + 24) = v21;
        *(v24 + 25) = v22;
        *(v24 + 32) = v23;
        sub_1C75504FC();
        sub_1C75504FC();
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

void sub_1C72F4028()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A698, &qword_1C7581300);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 32);
        v21 = *v18;
        v28 = *(v18 + 48);
        v27[1] = v20;
        v27[2] = v19;
        v27[0] = v21;
        v22 = *(v4 + 48) + v17;
        v23 = *v18;
        v24 = *(v18 + 16);
        v25 = *(v18 + 32);
        *(v22 + 48) = *(v18 + 48);
        *(v22 + 16) = v24;
        *(v22 + 32) = v25;
        *v22 = v23;
        sub_1C70260B4(v27, v26);
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

void sub_1C72F41C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6A0, &qword_1C7581308);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v18 = 9 * v17;
        v19 = (*(v2 + 48) + 72 * v17);
        memcpy(__dst, v19, 0x42uLL);
        memmove((*(v4 + 48) + 8 * v18), v19, 0x42uLL);
        sub_1C7025FF8(__dst, &v20);
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

void sub_1C72F4348()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6A8, &qword_1C7581310);
  v2 = *v0;
  v3 = sub_1C755177C();
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
        v18 = 9 * v17;
        v19 = (*(v2 + 48) + 72 * v17);
        memcpy(__dst, v19, 0x41uLL);
        memmove((*(v4 + 48) + 8 * v18), v19, 0x41uLL);
        sub_1C7025F3C(__dst, &v20);
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