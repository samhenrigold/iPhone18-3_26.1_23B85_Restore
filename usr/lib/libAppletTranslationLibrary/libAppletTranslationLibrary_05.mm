void *sub_22EF9E82C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6C0, &qword_22EFBD1D8);
  v2 = *v0;
  v3 = sub_22EFB669C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_22EF70B68(v18, *(&v18 + 1));
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

void *sub_22EF9E988()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E758, &qword_22EFBD270);
  v2 = *v0;
  v3 = sub_22EFB669C();
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
        sub_22EF70B68(v19, v20);
        result = sub_22EF70B68(v21, v22);
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

void *sub_22EF9EB0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6D8, &qword_22EFBD1E8);
  v25 = v0;
  v1 = *v0;
  v2 = sub_22EFB669C();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 56);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 56 + 8 * v5)
    {
      result = memmove(result, (v1 + 56), 8 * v5);
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
        v16 = 56 * (v13 | (v7 << 6));
        v17 = *(v1 + 48) + v16;
        v18 = *v17;
        v19 = *(v17 + 24);
        v20 = *(v17 + 32);
        v21 = *(v17 + 40);
        v22 = *(v17 + 48);
        v23 = *(v3 + 48) + v16;
        v24 = *(v17 + 8);
        *v23 = *v17;
        *(v23 + 8) = v24;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        *(v23 + 48) = v22;
        sub_22EF70B68(v18, v24);
        sub_22EF70B68(v19, v20);
        result = sub_22EF70B68(v21, v22);
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

    *v25 = v3;
  }

  return result;
}

uint64_t sub_22EF9ECB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E750, &qword_22EFBD268);
  result = sub_22EFB66AC();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_22EFB68DC();
      if (v18)
      {
        MEMORY[0x2318FB660](0);

        sub_22EFB64CC();
      }

      else
      {
        MEMORY[0x2318FB660](1);
      }

      result = sub_22EFB691C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22EF9EF0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E740, &qword_22EFBD258);
  result = sub_22EFB66AC();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      result = MEMORY[0x2318FB640](*(v5 + 40), v16, 1);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_22EF9F100(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6C0, &qword_22EFBD1D8);
  result = sub_22EFB66AC();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22EFB68DC();
      sub_22EF70B68(v18, v19);
      sub_22EFB61EC();
      result = sub_22EFB691C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22EF9F33C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E758, &qword_22EFBD270);
  result = sub_22EFB66AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_22EFB68DC();
      sub_22EF70B68(v19, v20);
      sub_22EF70B68(v21, v22);
      sub_22EFB61EC();
      sub_22EFB61EC();
      MEMORY[0x2318FB660](v23);
      result = sub_22EFB691C();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v32;
      v10 = v33;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v33 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22EF9F5DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6D8, &qword_22EFBD1E8);
  result = sub_22EFB66AC();
  v5 = result;
  if (*(v3 + 16))
  {
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
    v32 = v1;
    v33 = (v8 + 63) >> 6;
    v11 = result + 56;
    v34 = v3 + 56;
    v35 = v3;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v36 = (v10 - 1) & v10;
LABEL_15:
      v17 = (*(v3 + 48) + 56 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v21 = v17[2];
      v20 = v17[3];
      v23 = v17[4];
      v22 = v17[5];
      v24 = v17[6];
      sub_22EFB68DC();
      sub_22EF70B68(v18, v19);
      sub_22EF70B68(v20, v23);
      sub_22EF70B68(v22, v24);
      sub_22EFB61EC();
      MEMORY[0x2318FB660](v21);
      result = sub_22EFB691C();
      v25 = -1 << *(v5 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 56 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v21;
      v13[3] = v20;
      v10 = v36;
      v13[4] = v23;
      v13[5] = v22;
      v13[6] = v24;
      ++*(v5 + 16);
      v7 = v34;
      v3 = v35;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v33)
      {

        v2 = v32;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v36 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22EF9F87C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_22EFB617C();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22EF9F9B4(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_22EF9F9B4(v4, v5);
  }

  return sub_22EFB617C();
}

uint64_t sub_22EF9F9B4(uint64_t a1, uint64_t a2)
{
  result = sub_22EFB603C();
  if (!result || (result = sub_22EFB605C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22EFB604C();
      return sub_22EFB617C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22EF9FA48@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, char *a8@<X8>)
{
  if (result)
  {
    v14 = result;
    v15 = a2 - result - a3;
    if (__OFSUB__(a2 - result, a3))
    {
      __break(1u);
    }

    else
    {
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E770, &unk_22EFBD290) + 48);
      swift_unknownObjectRetain();
      result = sub_22EFAA814(a8, v14 + a3, v15, a4, a5, a6, a7);
      *&a8[v16] = result;
    }
  }

  else
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E770, &unk_22EFBD290) + 48);
    *a8 = a4;
    *(a8 + 1) = a5;
    *(a8 + 2) = a6;
    *(a8 + 3) = a7;
    *(a8 + 4) = a6;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E778, &unk_22EFBD450) + 44);
    v19 = sub_22EFB622C();
    (*(*(v19 - 8) + 56))(&a8[v18], 1, 1, v19);
    *&a8[v17] = 0;
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_22EF9FB94(unint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = sub_22EFA06D8(*a1, a2);
  v8 = v6;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_22EFB67CC();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_22EFB67CC())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2318FB480](v9, v5);
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v11 = *(v5 + 8 * v9 + 32);

LABEL_16:
    v12 = *a2;
    v13 = *(v11 + 32);
    v14 = *(v11 + 40);

    LOBYTE(v14) = sub_22EF87D54(v13, v14, v12);

    if ((v14 & 1) == 0)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x2318FB480](v8, v5);
          v16 = MEMORY[0x2318FB480](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v17)
          {
            goto LABEL_46;
          }

          if (v9 >= v17)
          {
            goto LABEL_47;
          }

          v15 = *(v5 + 32 + 8 * v8);
          v16 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_22EFA0D3C(v5);
          v18 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v5 & 0xFFFFFFFFFFFFFF8;
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v16;

        if ((v5 & 0x8000000000000000) != 0 || v18)
        {
          v5 = sub_22EFA0D3C(v5);
          v19 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_38:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v9 >= *(v19 + 16))
        {
          goto LABEL_44;
        }

        *(v19 + 8 * v9 + 32) = v15;

        *a1 = v5;
      }

LABEL_8:
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_43;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_22EFB67CC();
}

uint64_t sub_22EF9FE04(unint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  result = sub_22EFA07F0(*a1, a2);
  v9 = v3;
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_22EFB67CC();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = result;
  v23 = a1;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
LABEL_55:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_22EFB67CC())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2318FB480](v10, v6);
      v12 = result;
      v13 = *a2;
      if (!*a2)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v12 = *(v6 + 8 * v10 + 32);

      v13 = *a2;
      if (!*a2)
      {
        goto LABEL_55;
      }
    }

    v14 = *(v12 + 24);
    v24[0] = *(v12 + 16);
    v24[1] = v14;
    MEMORY[0x28223BE20](result);
    v22[2] = v24;

    v15 = v9;
    v16 = sub_22EF837E0(sub_22EFA8440, v22, v13);
    v25 = v15;

    if (v16)
    {
      break;
    }

    v9 = v25;
LABEL_9:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_47;
    }
  }

  if (v2 == v10)
  {
    v9 = v25;
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_48;
    }

    goto LABEL_9;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x2318FB480](v2, v6);
    v18 = MEMORY[0x2318FB480](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v19)
    {
      goto LABEL_51;
    }

    if (v10 >= v19)
    {
      goto LABEL_52;
    }

    v17 = *(v6 + 32 + 8 * v2);
    v18 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_22EFA0D3C(v6);
    v20 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v20)
  {
    v9 = v25;
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_35;
  }

  v6 = sub_22EFA0D3C(v6);
  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  v9 = v25;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_35:
    if (v10 >= *(v21 + 16))
    {
      goto LABEL_49;
    }

    *(v21 + 8 * v10 + 32) = v17;

    *v23 = v6;
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_48;
    }

    goto LABEL_9;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return sub_22EFB67CC();
}

uint64_t sub_22EFA011C(unint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  v6 = *a1 >> 62;
  if (v6)
  {
    goto LABEL_69;
  }

  v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      goto LABEL_58;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2318FB480](v8, v4);
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
        goto LABEL_65;
      }
    }

    if (*(v10 + 162) != 1 || (*(v10 + 104) & 1) != 0)
    {
      break;
    }

    if (a2)
    {
    }

    else
    {
      v11 = *(v10 + 80);

      if (v11 == 1)
      {
        goto LABEL_17;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_66;
    }
  }

LABEL_17:
  v12 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v12 == sub_22EFB67CC())
      {
        return v8;
      }
    }

    else if (v12 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    v5 = v4 & 0xC000000000000001;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2318FB480](v12, v4);
    }

    else
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        v7 = sub_22EFB67CC();
        goto LABEL_3;
      }

      if (v12 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }
    }

    if (*(v13 + 162) != 1 || (*(v13 + 104) & 1) != 0)
    {
LABEL_20:

      goto LABEL_21;
    }

    if (a2)
    {
      break;
    }

    v15 = *(v13 + 80);

    if (v15 != 1)
    {
      goto LABEL_33;
    }

LABEL_21:
    v9 = __OFADD__(v12++, 1);
    if (v9)
    {
      goto LABEL_64;
    }
  }

LABEL_33:
  if (v8 == v12)
  {
    goto LABEL_50;
  }

  if (v5)
  {
    v5 = MEMORY[0x2318FB480](v8, v4);
    v6 = MEMORY[0x2318FB480](v12, v4);
  }

  else
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      return result;
    }

    v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= v16)
    {
      goto LABEL_71;
    }

    if (v12 >= v16)
    {
      goto LABEL_72;
    }

    v5 = *(v4 + 32 + 8 * v8);
    v6 = *(v4 + 32 + 8 * v12);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_22EFA0D3C(v4);
    v17 = (v4 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v4 & 0xFFFFFFFFFFFFFF8;
  *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v6;

  if ((v4 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_57;
    }

LABEL_48:
    if (v12 >= *(v18 + 16))
    {
      goto LABEL_68;
    }

    *(v18 + 8 * v12 + 32) = v5;

    *a1 = v4;
LABEL_50:
    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_67;
    }

    goto LABEL_21;
  }

  v4 = sub_22EFA0D3C(v4);
  v18 = v4 & 0xFFFFFFFFFFFFFF8;
  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  if (!v6)
  {
    return *(v5 + 16);
  }

  return sub_22EFB67CC();
}

unint64_t sub_22EFA0404(unint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  v6 = *a1 >> 62;
  if (v6)
  {
    goto LABEL_70;
  }

  v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  while (v7 != v8)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2318FB480](v8, v4);
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
        goto LABEL_63;
      }
    }

    if (*(v10 + 104) == 1)
    {

LABEL_19:
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      while (2)
      {
        if (v4 >> 62)
        {
          if (v13 == sub_22EFB67CC())
          {
            return v8;
          }
        }

        else if (v13 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v8;
        }

        v5 = v4 & 0xC000000000000001;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x2318FB480](v13, v4);
        }

        else
        {
          if ((v13 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            v7 = sub_22EFB67CC();
            goto LABEL_3;
          }

          if (v13 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }
        }

        if (*(v14 + 104) == 1)
        {
LABEL_22:
        }

        else
        {
          if (a2)
          {

            goto LABEL_34;
          }

          v15 = *(v14 + 80);

          if (v15 != 1)
          {
LABEL_34:
            if (v8 != v13)
            {
              if (v5)
              {
                v5 = MEMORY[0x2318FB480](v8, v4);
                v6 = MEMORY[0x2318FB480](v13, v4);
              }

              else
              {
                if ((v8 & 0x8000000000000000) != 0)
                {
                  goto LABEL_67;
                }

                v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v8 >= v16)
                {
                  goto LABEL_68;
                }

                if (v13 >= v16)
                {
                  goto LABEL_69;
                }

                v5 = *(v4 + 32 + 8 * v8);
                v6 = *(v4 + 32 + 8 * v13);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
              {
                v4 = sub_22EFA0D3C(v4);
                v17 = (v4 >> 62) & 1;
              }

              else
              {
                LODWORD(v17) = 0;
              }

              v18 = v4 & 0xFFFFFFFFFFFFFF8;
              *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v6;

              if ((v4 & 0x8000000000000000) != 0 || v17)
              {
                v4 = sub_22EFA0D3C(v4);
                v18 = v4 & 0xFFFFFFFFFFFFFF8;
                if ((v13 & 0x8000000000000000) != 0)
                {
LABEL_58:
                  __break(1u);
                  return sub_22EFB67CC();
                }
              }

              else if ((v13 & 0x8000000000000000) != 0)
              {
                goto LABEL_58;
              }

              if (v13 >= *(v18 + 16))
              {
                goto LABEL_66;
              }

              *(v18 + 8 * v13 + 32) = v5;

              *a1 = v4;
            }

            v9 = __OFADD__(v8++, 1);
            if (v9)
            {
              goto LABEL_65;
            }
          }
        }

        v9 = __OFADD__(v13++, 1);
        if (v9)
        {
          goto LABEL_62;
        }

        continue;
      }
    }

    if (a2)
    {
    }

    else
    {
      v11 = *(v10 + 80);

      if (v11 == 1)
      {
        goto LABEL_19;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_64;
    }
  }

  if (v6)
  {
    return sub_22EFB67CC();
  }

  return *(v5 + 16);
}

unint64_t sub_22EFA06D8(unint64_t a1, uint64_t *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_22EFB67CC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2318FB480](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = *a2;
    v9 = *(v7 + 32);
    v10 = *(v7 + 40);

    LOBYTE(v10) = sub_22EF87D54(v9, v10, v8);

    if (v10)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_22EFA07F0(unint64_t a1, uint64_t *a2)
{
  v14 = a2;
  if (a1 >> 62)
  {
LABEL_18:
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_22EFB67CC();
  }

  else
  {
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2318FB480](v4, a1);
      v5 = result;
    }

    else
    {
      if (v4 >= *(v12 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v7 = *v14;
    if (!*v14)
    {
      break;
    }

    v8 = *(v5 + 24);
    v13[0] = *(v5 + 16);
    v13[1] = v8;
    MEMORY[0x28223BE20](result);
    v11[2] = v13;

    v9 = sub_22EF837E0(sub_22EFA8440, v11, v7);

    if ((v9 & 1) == 0)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EFA098C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

void *sub_22EFA0A40(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_22EFB67CC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_22EF943F4(v3, 0);
  sub_22EFA0AD4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22EFA0AD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22EFB67CC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22EFB67CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22EF70E20(&qword_27DA9E6D0, &qword_27DA9E6C8, &qword_22EFBD1E0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6C8, &qword_22EFBD1E0);
            v9 = sub_22EFA0C78(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ExpressMode.PassConfig(0, a2);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22EFA0C78(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2318FB480](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_22EFA0CF8;
  }

  __break(1u);
  return result;
}

uint64_t sub_22EFA0D3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22EFB67CC();
  }

  return sub_22EFB671C();
}

double sub_22EFA0DA0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 3)
  {
  }

  return result;
}

unint64_t sub_22EFA0DF0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_22EFA0E5C()
{
  result = qword_281477D98;
  if (!qword_281477D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281477D98);
  }

  return result;
}

char *sub_22EFA0FD8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_22EFB603C();
  v8 = result;
  if (result)
  {
    result = sub_22EFB605C();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_22EFB604C();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

void sub_22EFA1090(void *a1)
{
  v97 = *MEMORY[0x277D85DE8];
  *&v91 = sub_22EFB648C();
  *(&v91 + 1) = v2;
  v3 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = 0u;
    v94 = 0u;
  }

  v95 = v91;
  v96 = v94;
  if (*(&v94 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E620, &qword_22EFBCD50);
    if (!swift_dynamicCast())
    {
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      sub_22EFB66DC();

      *&v95 = 0xD00000000000001ALL;
      *(&v95 + 1) = 0x800000022EFC6D20;
      goto LABEL_40;
    }

    v4 = v89;
  }

  else
  {
    sub_22EF7CFF8(&v95, &qword_27DA9E4B0, &qword_22EFBBE60);
    v4 = 0;
  }

  *&v92 = sub_22EFB648C();
  *(&v92 + 1) = v5;
  v6 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
  }

  else
  {
    v92 = 0u;
    v94 = 0u;
  }

  v95 = v92;
  v96 = v94;
  if (*(&v94 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E620, &qword_22EFBCD50);
    if (!swift_dynamicCast())
    {

      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      *&v95 = 0;
      *(&v95 + 1) = 0xE000000000000000;
      sub_22EFB66DC();

      *&v95 = 0xD00000000000001ALL;
      *(&v95 + 1) = 0x800000022EFC6D20;
      goto LABEL_40;
    }

    v7 = v89;
  }

  else
  {
    sub_22EF7CFF8(&v95, &qword_27DA9E4B0, &qword_22EFBBE60);
    v7 = 0;
  }

  *&v93 = sub_22EFB648C();
  *(&v93 + 1) = v8;
  v9 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
  }

  else
  {
    v93 = 0u;
    v94 = 0u;
  }

  v95 = v93;
  v96 = v94;
  if (*(&v94 + 1))
  {
    v10 = swift_dynamicCast();
    if (!v10)
    {
      goto LABEL_39;
    }

    v11 = v90;
    v85 = v89;
    if (!v4)
    {
LABEL_23:
      if (!v7)
      {
        goto LABEL_57;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v10 = sub_22EF7CFF8(&v95, &qword_27DA9E4B0, &qword_22EFBBE60);
    v85 = 0;
    v11 = 0xF000000000000000;
    if (!v4)
    {
      goto LABEL_23;
    }
  }

  v12 = *(v4 + 16);

  v13 = (v4 + 40);
  v14 = -1;
  while (v14 - v12 != -1)
  {
    if (++v14 >= *(v4 + 16))
    {
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
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

    v10 = *(v13 - 1);
    v9 = *v13;
    v16 = *v13 >> 62;
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_70;
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = __OFSUB__(v17, v18);
      v15 = v17 - v18;
      if (v19)
      {
        __break(1u);
LABEL_39:

        sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
        *&v95 = 0;
        *(&v95 + 1) = 0xE000000000000000;
        sub_22EFB66DC();

        *&v95 = 0xD00000000000001ALL;
        *(&v95 + 1) = 0x800000022EFC6D20;
LABEL_40:
        v20 = sub_22EFB683C();
        MEMORY[0x2318FB260](v20);

        sub_22EF74470(v95, *(&v95 + 1), 8, 0);
        swift_willThrow();

        return;
      }
    }

    else if (v16)
    {
      LODWORD(v15) = HIDWORD(v10) - v10;
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_145;
      }

      v15 = v15;
    }

    else
    {
      sub_22EF708C8(v10, *v13);
      v15 = BYTE6(v9);
    }

    v13 += 2;
    if (v15 != 3)
    {
      goto LABEL_55;
    }
  }

  if (v7)
  {
LABEL_42:
    v21 = *(v7 + 16);

    v22 = (v7 + 40);
    v23 = -1;
    while (v23 - v21 != -1)
    {
      if (++v23 >= *(v7 + 16))
      {
        goto LABEL_143;
      }

      v25 = *(v22 - 1);
      v9 = *v22;
      v26 = *v22 >> 62;
      if (v26 > 1)
      {
        if (v26 != 2)
        {
          v36 = *(v22 - 1);
          swift_bridgeObjectRelease_n();

          sub_22EF708C8(v36, v9);
          goto LABEL_72;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        v19 = __OFSUB__(v27, v28);
        v24 = v27 - v28;
        if (v19)
        {
          __break(1u);
LABEL_55:
          swift_bridgeObjectRelease_n();

LABEL_72:
          sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
          *&v95 = 0;
          *(&v95 + 1) = 0xE000000000000000;
          sub_22EFB66DC();

          *&v95 = 0xD00000000000001ALL;
          *(&v95 + 1) = 0x800000022EFC6D20;
          v37 = sub_22EFB683C();
          MEMORY[0x2318FB260](v37);

          sub_22EF74470(v95, *(&v95 + 1), 8, 0);
          swift_willThrow();

          v38 = v85;
LABEL_73:
          sub_22EF708B4(v38, v11);
          return;
        }
      }

      else if (v26)
      {
        LODWORD(v24) = HIDWORD(v25) - v25;
        if (__OFSUB__(HIDWORD(v25), v25))
        {
          goto LABEL_148;
        }

        v24 = v24;
      }

      else
      {
        sub_22EF708C8(v25, *v22);
        v24 = BYTE6(v9);
      }

      v22 += 2;
      if (v24 != 3)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_57:
  if (v11 >> 60 != 15)
  {
    v31 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v31 != 2)
      {

        v56 = v85;
        sub_22EF708B4(v85, v11);
        goto LABEL_123;
      }

      v34 = *(v85 + 16);
      v33 = *(v85 + 24);
      v19 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (v19)
      {
        __break(1u);
LABEL_70:
        v35 = v10;
        swift_bridgeObjectRelease_n();

        sub_22EF708C8(v35, v9);
        goto LABEL_72;
      }
    }

    else if (v31)
    {
      LODWORD(v32) = HIDWORD(v85) - v85;
      if (__OFSUB__(HIDWORD(v85), v85))
      {
        goto LABEL_157;
      }

      v32 = v32;
    }

    else
    {
      sub_22EF708B4(v85, v11);
      v32 = BYTE6(v11);
    }

    if (v32 == 5)
    {
      v83 = a1;
      v39 = MEMORY[0x277D84F90];
      if (v4)
      {
        v40 = v4;
      }

      else
      {
        v40 = MEMORY[0x277D84F90];
      }

      if (v7)
      {
        v41 = v7;
      }

      else
      {
        v41 = MEMORY[0x277D84F90];
      }

      v86 = v41;
      v87 = v40;

      sub_22EF70CB0(v85, v11);
      v42 = 0;
      v43 = v39;
LABEL_84:
      if (v42 <= 0x28)
      {
        v44 = 40;
      }

      else
      {
        v44 = v42;
      }

      v84 = v43;
      while (1)
      {
        if (v42 == 40)
        {
          v57 = *(v43 + 16);
          v82 = v11;
          if (v57)
          {
            *&v95 = MEMORY[0x277D84F90];
            sub_22EF9ABA8(0, v57, 0);
            v58 = v84;
            v59 = 32;
            v60 = v95;
            do
            {
              v61 = *(v58 + v59);
              if ((v61 & 0x8000000000000000) != 0)
              {
                goto LABEL_149;
              }

              if (v61 > 0xFF)
              {
                goto LABEL_150;
              }

              *&v95 = v60;
              v63 = *(v60 + 16);
              v62 = *(v60 + 24);
              if (v63 >= v62 >> 1)
              {
                sub_22EF9ABA8((v62 > 1), v63 + 1, 1);
                v58 = v84;
                v60 = v95;
              }

              *(v60 + 16) = v63 + 1;
              *(v60 + v63 + 32) = v61;
              v59 += 8;
              --v57;
            }

            while (v57);
            sub_22EF708B4(v85, v11);
          }

          else
          {

            sub_22EF708B4(v85, v11);
          }

          v30 = v87;
          goto LABEL_126;
        }

        if (v44 == v42)
        {
          goto LABEL_146;
        }

        v47 = v42 >> 3;
        if (v31 == 2)
        {
          if (v47 < *(v85 + 16))
          {
            goto LABEL_151;
          }

          if (v47 >= *(v85 + 24))
          {
            goto LABEL_154;
          }

          v52 = sub_22EFB603C();
          if (!v52)
          {
            goto LABEL_159;
          }

          v49 = v52;
          v53 = sub_22EFB605C();
          v51 = v47 - v53;
          if (__OFSUB__(v47, v53))
          {
            goto LABEL_156;
          }
        }

        else
        {
          if (v31 != 1)
          {
            if (v47 >= BYTE6(v11))
            {
              goto LABEL_152;
            }

            *&v95 = v85;
            WORD4(v95) = v11;
            BYTE10(v95) = BYTE2(v11);
            BYTE11(v95) = BYTE3(v11);
            BYTE12(v95) = BYTE4(v11);
            BYTE13(v95) = BYTE5(v11);
            v45 = *(&v95 + v47);
            goto LABEL_89;
          }

          if (v47 < v85 || v47 >= v85 >> 32)
          {
            goto LABEL_153;
          }

          v48 = sub_22EFB603C();
          if (!v48)
          {
            __break(1u);
LABEL_159:
            __break(1u);
            return;
          }

          v49 = v48;
          v50 = sub_22EFB605C();
          v51 = v47 - v50;
          if (__OFSUB__(v47, v50))
          {
            goto LABEL_155;
          }
        }

        v45 = *(v49 + v51);
        v43 = v84;
LABEL_89:
        v46 = v42++ & 7;
        if ((v45 >> v46))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22EF9AB48(0, *(v43 + 16) + 1, 1);
          }

          v55 = *(v43 + 16);
          v54 = *(v43 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_22EF9AB48((v54 > 1), v55 + 1, 1);
          }

          *(v43 + 16) = v55 + 1;
          *(v43 + 8 * v55 + 32) = v42 - 1;
          goto LABEL_84;
        }
      }
    }

    v56 = v85;
LABEL_123:
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    sub_22EFB66DC();

    *&v95 = 0xD00000000000001ALL;
    *(&v95 + 1) = 0x800000022EFC6D20;
    v64 = sub_22EFB683C();
    MEMORY[0x2318FB260](v64);

    sub_22EF74470(v95, *(&v95 + 1), 8, 0);
    swift_willThrow();

    v38 = v56;
    goto LABEL_73;
  }

  v82 = v11;
  v83 = a1;
  if (v7)
  {
    v29 = v7;
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v86 = v29;

LABEL_126:
  v65 = (v30 + 40);
  v66 = -*(v30 + 16);
  v67 = -1;
  v88 = v30;
  while (v66 + v67 != -1)
  {
    if (++v67 >= *(v30 + 16))
    {
      goto LABEL_144;
    }

    v68 = *(v65 - 1);
    v69 = *v65;
    sub_22EF70B68(v68, *v65);
    if (qword_281477D68 != -1)
    {
      swift_once();
    }

    v65 += 2;
    v70 = *(qword_281477D70 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_reservedTCIs);

    v71 = sub_22EF87D54(v68, v69, v70);

    sub_22EF708C8(v68, v69);
    v30 = v88;
    if (v71)
    {

      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      *&v95 = 0;
      *(&v95 + 1) = 0xE000000000000000;
      sub_22EFB66DC();

      strcpy(&v95, "PrimaryTCIs ");
      BYTE13(v95) = 0;
      HIWORD(v95) = -5120;
      v80 = MEMORY[0x2318FB2C0](v88, MEMORY[0x277CC9318]);
      MEMORY[0x2318FB260](v80);

      MEMORY[0x2318FB260](0xD000000000000016, 0x800000022EFC6D00);
      sub_22EF74470(v95, *(&v95 + 1), 8, 0);
LABEL_141:
      swift_willThrow();

      sub_22EF708B4(v85, v82);

      return;
    }
  }

  v72 = v86;
  v73 = (v86 + 40);
  v74 = -*(v86 + 16);
  v75 = -1;
  while (v74 + v75 != -1)
  {
    if (++v75 >= *(v72 + 16))
    {
      goto LABEL_147;
    }

    v76 = *(v73 - 1);
    v77 = *v73;
    sub_22EF70B68(v76, *v73);
    if (qword_281477D68 != -1)
    {
      swift_once();
    }

    v73 += 2;
    v78 = *(qword_281477D70 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_reservedTCIs);

    v79 = sub_22EF87D54(v76, v77, v78);

    sub_22EF708C8(v76, v77);
    v72 = v86;
    if (v79)
    {
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      *&v95 = 0;
      *(&v95 + 1) = 0xE000000000000000;
      sub_22EFB66DC();

      *&v95 = 0x2073494354787541;
      *(&v95 + 1) = 0xE800000000000000;
      v81 = MEMORY[0x2318FB2C0](v86, MEMORY[0x277CC9318]);
      MEMORY[0x2318FB260](v81);

      MEMORY[0x2318FB260](0xD000000000000016, 0x800000022EFC6D00);
      sub_22EF74470(v95, *(&v95 + 1), 8, 0);
      goto LABEL_141;
    }
  }

  sub_22EF708B4(v85, v82);
}

void sub_22EFA1FE4(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_22EFB648C() == a1 && v6 == a2)
  {
    goto LABEL_7;
  }

  v8 = sub_22EFB684C();

  if (v8)
  {
    goto LABEL_8;
  }

  if (sub_22EFB648C() == a1 && v9 == a2)
  {
    goto LABEL_7;
  }

  v10 = sub_22EFB684C();

  if (v10)
  {
    goto LABEL_8;
  }

  if (sub_22EFB648C() == a1 && v11 == a2)
  {
    goto LABEL_7;
  }

  v12 = sub_22EFB684C();

  if (v12)
  {
    goto LABEL_8;
  }

  if (sub_22EFB648C() == a1 && v13 == a2)
  {
LABEL_7:

LABEL_8:

    return;
  }

  v14 = sub_22EFB684C();

  if (v14)
  {
    goto LABEL_8;
  }

  if (sub_22EFB648C() == a1 && v15 == a2)
  {

LABEL_24:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E610, &qword_22EFBCD40);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22EFBBCB0;
    *(v17 + 32) = sub_22EFAB164(&unk_2843B69F0);
    *(v17 + 40) = v18;
    *(v17 + 48) = sub_22EFAB164(&unk_2843B6A18);
    *(v17 + 56) = v19;

    return;
  }

  v16 = sub_22EFB684C();

  if (v16)
  {
    goto LABEL_24;
  }

  if (sub_22EFB648C() == a1 && v20 == a2)
  {
  }

  else
  {
    v21 = sub_22EFB684C();

    if ((v21 & 1) == 0)
    {
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      sub_22EFB66DC();

      v23 = sub_22EFB683C();
      MEMORY[0x2318FB260](v23);

      sub_22EF74470(0xD000000000000023, 0x800000022EFC6CC0, 8, 0);
      swift_willThrow();

      return;
    }
  }

  if (a3)
  {
    sub_22EFA1090(a3);
  }

  else
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    sub_22EFB66DC();

    v22 = sub_22EFB683C();
    MEMORY[0x2318FB260](v22);

    sub_22EF74470(0xD000000000000023, 0x800000022EFC6CC0, 8, 0);
    swift_willThrow();
  }
}

uint64_t sub_22EFA2454(unint64_t a1, int a2)
{
  v107 = a2;
  v120[9] = *MEMORY[0x277D85DE8];
  v120[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_22EFB67CC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      isUniquelyReferenced_nonNull_native = a1 & 0xC000000000000001;
      while (1)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v6 = MEMORY[0x2318FB480](v5, a1);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v8 = v120[0];
            goto LABEL_19;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v6 = *(a1 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_14;
          }
        }

        if (*(v6 + 162) != 1 || (*(v6 + 104) & 1) != 0)
        {
        }

        else
        {
          sub_22EFB673C();
          sub_22EFB676C();
          sub_22EFB677C();
          sub_22EFB674C();
        }

        ++v5;
        if (v7 == v4)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_19:
  v9 = sub_22EFAB33C(MEMORY[0x277D84F90]);
  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    goto LABEL_140;
  }

  v10 = *(v8 + 16);
  if (!v10)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v117 = v9;
    v11 = 0;
    v106 = 0;
    v12 = v8 & 0xC000000000000001;
    v116 = v8 + 32;
    v112 = v10;
    v113 = v8;
    v114 = v8 & 0xC000000000000001;
LABEL_24:
    if (!v12)
    {
      if (v11 < *(v8 + 16))
      {
        isUniquelyReferenced_nonNull_native = *(v116 + 8 * v11);

        goto LABEL_28;
      }

LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      v100 = sub_22EFB67CC();
      if (v100 < 0)
      {
        __break(1u);
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    isUniquelyReferenced_nonNull_native = MEMORY[0x2318FB480](v11, v8);
LABEL_28:
    v115 = isUniquelyReferenced_nonNull_native;
    if ((v107 & 1) == 0 && *(isUniquelyReferenced_nonNull_native + 80) == 1)
    {
      v14 = *(isUniquelyReferenced_nonNull_native + 16);
      v13 = *(isUniquelyReferenced_nonNull_native + 24);

      v9 = v117;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v120[0] = v9;
      v16 = sub_22EFA9408(v14, v13);
      v17 = *(v9 + 16);
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_137;
      }

      v20 = v15;
      if (*(v9 + 24) >= v19)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22EF75EC8();
        }
      }

      else
      {
        sub_22EF75094(v19, isUniquelyReferenced_nonNull_native);
        v9 = v120[0];
        v21 = sub_22EFA9408(v14, v13);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_143;
        }

        v16 = v21;
      }

      isUniquelyReferenced_nonNull_native = v115;
      v9 = v120[0];
      if ((v20 & 1) == 0)
      {
        *(v120[0] + 8 * (v16 >> 6) + 64) |= 1 << v16;
        v23 = (*(v9 + 48) + 16 * v16);
        *v23 = v14;
        v23[1] = v13;
        *(*(v9 + 56) + 8 * v16) = MEMORY[0x277D84FA0];
        v24 = *(v9 + 16);
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_139;
        }

        *(v9 + 16) = v26;
      }

      v117 = v9;
      v27 = *(v9 + 56);
      v28 = *(v27 + 8 * v16);
      sub_22EFB68DC();
      v9 = v120;
      MEMORY[0x2318FB660](1);
      v29 = sub_22EFB691C();
      v30 = v28 + 56;
      v31 = -1 << *(v28 + 32);
      v32 = v29 & ~v31;
      if ((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        v34 = *(v28 + 48);
        v12 = v114;
        while (*(v34 + 16 * v32 + 8))
        {
          v32 = (v32 + 1) & v33;
          if (((*(v30 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        v12 = v114;
LABEL_45:
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v119 = *(v27 + 8 * v16);
        isUniquelyReferenced_nonNull_native = v119;
        *(v27 + 8 * v16) = 0x8000000000000000;
        v36 = *(isUniquelyReferenced_nonNull_native + 16);
        if (*(isUniquelyReferenced_nonNull_native + 24) <= v36)
        {
          if (v35)
          {
            sub_22EF94930(v36 + 1);
          }

          else
          {
            sub_22EF9ECB8(v36 + 1);
          }

          isUniquelyReferenced_nonNull_native = v119;
          sub_22EFB68DC();
          v9 = v120;
          MEMORY[0x2318FB660](1);
          v37 = sub_22EFB691C();
          v38 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
          v32 = v37 & ~v38;
          if ((*(isUniquelyReferenced_nonNull_native + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
          {
            v39 = ~v38;
            do
            {
              if (!*(*(isUniquelyReferenced_nonNull_native + 48) + 16 * v32 + 8))
              {
                goto LABEL_142;
              }

              v32 = (v32 + 1) & v39;
            }

            while (((*(isUniquelyReferenced_nonNull_native + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
          }
        }

        else if ((v35 & 1) == 0)
        {
          v9 = &v119;
          sub_22EF9E594();
          isUniquelyReferenced_nonNull_native = v119;
        }

        *(isUniquelyReferenced_nonNull_native + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v32;
        v40 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v32);
        *v40 = 0;
        v40[1] = 0;
        v41 = *(isUniquelyReferenced_nonNull_native + 16);
        v25 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v25)
        {
          goto LABEL_138;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v42;
        *(v27 + 8 * v16) = isUniquelyReferenced_nonNull_native;
        isUniquelyReferenced_nonNull_native = v115;
      }
    }

    v43 = v11 + 1;
    if (v43 == v10)
    {
      break;
    }

    v111 = v43;
    while (1)
    {
      if (v43 >= v10)
      {
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      if (v12)
      {
        v44 = MEMORY[0x2318FB480](v43, v8);
      }

      else
      {
        if (v43 >= *(v8 + 16))
        {
          goto LABEL_132;
        }
      }

      v45 = *(isUniquelyReferenced_nonNull_native + 80);
      v9 = v44[10];
      switch(v45)
      {
        case 0uLL:
          if (!v9)
          {
            goto LABEL_84;
          }

          goto LABEL_61;
        case 1uLL:
          if (v9 == 1)
          {
            goto LABEL_84;
          }

          goto LABEL_61;
        case 2uLL:
          if (v9 == 2)
          {
            goto LABEL_84;
          }

          goto LABEL_61;
      }

      if (v9 > 2)
      {
        break;
      }

LABEL_61:

LABEL_62:
      if (++v43 == v10)
      {

        v11 = v111;
        goto LABEL_24;
      }
    }

    v47 = *(isUniquelyReferenced_nonNull_native + 88);
    v46 = *(isUniquelyReferenced_nonNull_native + 96);
    v48 = v44[11];
    v49 = v44[12];
    v50 = v44;
    sub_22EFA0DA0(v44[10], v48, v49);
    sub_22EFA0DA0(v45, v47, v46);
    v118 = v50;
    if (!sub_22EF88178(isUniquelyReferenced_nonNull_native, v45, v47, v46, v50, v9, v48, v49))
    {
      v110 = v46;
      v51 = *(isUniquelyReferenced_nonNull_native + 168);
      if (!v51)
      {
        sub_22EFA0DF0(v9, v48, v49);
        sub_22EFA0DF0(v45, v47, v110);

        v8 = v113;
        v12 = v114;
        goto LABEL_62;
      }

      v108 = v48;
      v109 = v49;
      v52 = v118[21];
      v8 = v113;
      v12 = v114;
      if (v52)
      {
        v105 = v47;
        v53 = *(v51 + 32);
        v54 = v53 & 0x3F;
        v55 = ((1 << v53) + 63) >> 6;
        isUniquelyReferenced_nonNull_native = 8 * v55;
        v56 = v51;
        swift_bridgeObjectRetain_n();

        if (v54 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
        {
          MEMORY[0x28223BE20](isStackAllocationSafe);
          v8 = &v104 - ((isUniquelyReferenced_nonNull_native + 15) & 0x3FFFFFFFFFFFFFF0);
          bzero(v8, isUniquelyReferenced_nonNull_native);
          v58 = v106;
          sub_22EF9560C(v8, v55, v56, v52);
          v106 = v58;
          if (v58)
          {
            goto LABEL_144;
          }

          v60 = v59;

          sub_22EFA0DF0(v9, v108, v109);
          sub_22EFA0DF0(v45, v105, v110);

          v10 = v112;
          v8 = v113;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_slowAlloc();

          v98 = v106;
          v60 = sub_22EF9557C(isUniquelyReferenced_nonNull_native, v55, v56, v52);

          v99 = &v121;
          v106 = v98;
          if (v98)
          {
            goto LABEL_145;
          }

          MEMORY[0x2318FC200](isUniquelyReferenced_nonNull_native, -1, -1);
          sub_22EFA0DF0(v9, v108, v109);
          sub_22EFA0DF0(v45, v105, v110);
        }

        isUniquelyReferenced_nonNull_native = v115;
        v61 = v60[2];

        v12 = v114;
        v44 = v118;
        if (v61)
        {
          goto LABEL_84;
        }
      }

      else
      {
        sub_22EFA0DF0(v9, v108, v109);
        sub_22EFA0DF0(v45, v47, v110);
      }

      goto LABEL_61;
    }

    sub_22EFA0DF0(v9, v48, v49);
    sub_22EFA0DF0(v45, v47, v46);
    v44 = v118;
LABEL_84:
    v63 = v44[2];
    v62 = v44[3];
    v118 = v44;
    v64 = *(isUniquelyReferenced_nonNull_native + 16);
    v8 = *(isUniquelyReferenced_nonNull_native + 24);

    v9 = v117;
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v120[0] = v9;
    v67 = sub_22EFA9408(v64, v8);
    v68 = *(v9 + 16);
    v69 = (v66 & 1) == 0;
    v70 = v68 + v69;
    if (__OFADD__(v68, v69))
    {
      goto LABEL_133;
    }

    isUniquelyReferenced_nonNull_native = v66;
    if (*(v9 + 24) >= v70)
    {
      if (v65)
      {
        v9 = v120[0];
        if ((v66 & 1) == 0)
        {
          goto LABEL_95;
        }
      }

      else
      {
        sub_22EF75EC8();
        v9 = v120[0];
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_95;
        }
      }

LABEL_91:

      goto LABEL_97;
    }

    sub_22EF75094(v70, v65);
    v9 = v120[0];
    v71 = sub_22EFA9408(v64, v8);
    if ((isUniquelyReferenced_nonNull_native & 1) != (v72 & 1))
    {
      goto LABEL_143;
    }

    v67 = v71;
    v9 = v120[0];
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_91;
    }

LABEL_95:
    *(v9 + 8 * (v67 >> 6) + 64) |= 1 << v67;
    v73 = (*(v9 + 48) + 16 * v67);
    *v73 = v64;
    v73[1] = v8;
    *(*(v9 + 56) + 8 * v67) = MEMORY[0x277D84FA0];
    v74 = *(v9 + 16);
    v25 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v25)
    {
      goto LABEL_135;
    }

    *(v9 + 16) = v75;
LABEL_97:
    v117 = v9;
    v76 = *(v9 + 56);
    v77 = *(v76 + 8 * v67);
    sub_22EFB68DC();
    MEMORY[0x2318FB660](0);
    sub_22EFB64CC();
    v78 = sub_22EFB691C();
    v9 = v77 + 56;
    v79 = -1 << *(v77 + 32);
    isUniquelyReferenced_nonNull_native = v78 & ~v79;
    if ((*(v77 + 56 + ((isUniquelyReferenced_nonNull_native >> 3) & 0xFFFFFFFFFFFFFF8)) >> isUniquelyReferenced_nonNull_native))
    {
      v80 = ~v79;
      v81 = *(v77 + 48);
      while (1)
      {
        v82 = (v81 + 16 * isUniquelyReferenced_nonNull_native);
        v83 = v82[1];
        if (v83)
        {
          v84 = *v82 == v63 && v83 == v62;
          if (v84 || (sub_22EFB684C() & 1) != 0)
          {
            break;
          }
        }

        isUniquelyReferenced_nonNull_native = (isUniquelyReferenced_nonNull_native + 1) & v80;
        if (((*(v9 + ((isUniquelyReferenced_nonNull_native >> 3) & 0xFFFFFFFFFFFFFF8)) >> isUniquelyReferenced_nonNull_native) & 1) == 0)
        {
          goto LABEL_107;
        }
      }

      v10 = v112;
      v8 = v113;
LABEL_126:
      v12 = v114;
      isUniquelyReferenced_nonNull_native = v115;
      goto LABEL_62;
    }

LABEL_107:
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v119 = *(v76 + 8 * v67);
    v8 = v119;
    *(v76 + 8 * v67) = 0x8000000000000000;
    v85 = *(v8 + 16);
    v86 = *(v8 + 24);

    if (v86 > v85)
    {
      v10 = v112;
      if ((v9 & 1) == 0)
      {
        v9 = &v119;
        sub_22EF9E594();
        v8 = v119;
      }

      goto LABEL_124;
    }

    v87 = v85 + 1;
    if (v9)
    {
      sub_22EF94930(v87);
    }

    else
    {
      sub_22EF9ECB8(v87);
    }

    v8 = v119;
    sub_22EFB68DC();
    MEMORY[0x2318FB660](0);
    sub_22EFB64CC();
    v88 = sub_22EFB691C();
    v9 = v8 + 56;
    v89 = -1 << *(v8 + 32);
    isUniquelyReferenced_nonNull_native = v88 & ~v89;
    if (((*(v8 + 56 + ((isUniquelyReferenced_nonNull_native >> 3) & 0xFFFFFFFFFFFFFF8)) >> isUniquelyReferenced_nonNull_native) & 1) == 0)
    {
LABEL_123:
      v10 = v112;
LABEL_124:
      *(v8 + ((isUniquelyReferenced_nonNull_native >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << isUniquelyReferenced_nonNull_native;
      v95 = (*(v8 + 48) + 16 * isUniquelyReferenced_nonNull_native);
      *v95 = v63;
      v95[1] = v62;
      v96 = *(v8 + 16);
      v25 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v25)
      {
        goto LABEL_134;
      }

      *(v8 + 16) = v97;
      *(v76 + 8 * v67) = v8;

      v8 = v113;
      goto LABEL_126;
    }

    v90 = ~v89;
    v91 = *(v8 + 48);
    while (1)
    {
      v92 = (v91 + 16 * isUniquelyReferenced_nonNull_native);
      v93 = v92[1];
      if (v93)
      {
        v94 = *v92 == v63 && v93 == v62;
        if (v94 || (sub_22EFB684C() & 1) != 0)
        {
          break;
        }
      }

      isUniquelyReferenced_nonNull_native = (isUniquelyReferenced_nonNull_native + 1) & v90;
      if (((*(v9 + ((isUniquelyReferenced_nonNull_native >> 3) & 0xFFFFFFFFFFFFFF8)) >> isUniquelyReferenced_nonNull_native) & 1) == 0)
      {
        goto LABEL_123;
      }
    }

LABEL_142:
    sub_22EFB686C();
    __break(1u);
LABEL_143:
    sub_22EFB687C();
    __break(1u);
LABEL_144:

    v101 = v106;
    swift_willThrow();

    __break(1u);
LABEL_145:

    v100 = MEMORY[0x2318FC200](isUniquelyReferenced_nonNull_native, -1, -1);
    __break(1u);
LABEL_146:
    v10 = v100;
    if (!v100)
    {
LABEL_147:

      v106 = 0;
      goto LABEL_148;
    }
  }

  v9 = v117;
LABEL_148:
  v102 = sub_22EF834D0(v9);

  return v102;
}

uint64_t sub_22EFA30DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22EFA0E5C();
  result = MEMORY[0x2318FB300](v2, MEMORY[0x277CC9318], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_22EF70B68(v7, *v5);
      sub_22EF9BDD0(v8, v7, v6);
      sub_22EF708C8(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_22EFA3178(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318FB300](v2, MEMORY[0x277D84B78], MEMORY[0x277D84B88]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_22EF9BCE8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_22EFA31EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ExpressMode.PassConfig(0, a2);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_22EFB67CC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_22EFB67CC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22EFA32EC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_22EFB67CC();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_22EFB67CC();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_22EF9BC48(result, 1);

  return sub_22EFA31EC(v5, v3, 0);
}

uint64_t sub_22EFA33C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_22EF708B4(result, a2);
  }

  return result;
}

void sub_22EFA3414(uint64_t a1, char a2)
{
  if (qword_281477D68 != -1)
  {
    v10 = a1;
    v11 = a2;
    swift_once();
    a2 = v11;
    a1 = v10;
  }

  sub_22EF85014(a1, a2 & 1, 0);
  if (!v2)
  {
    v4 = v3;
    v5 = *(v3 + 16);
    if (v5)
    {
      sub_22EFB675C();
      v6 = (v4 + 48);
      do
      {
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *v6;
        v6 += 3;

        sub_22EF71160(v8, v7, v9);

        sub_22EFB673C();
        sub_22EFB676C();
        sub_22EFB677C();
        sub_22EFB674C();
        --v5;
      }

      while (v5);
    }
  }
}

void sub_22EFA35A4(_BYTE *a1, _BYTE *a2, char a3)
{
  LOBYTE(v4) = a3;
  if (qword_281477D68 != -1)
  {
LABEL_25:
    v21 = a1;
    swift_once();
    a1 = v21;
  }

  sub_22EF85014(a1, v4 & 1, 0);
  if (v3)
  {
    return;
  }

  v8 = v7;
  v25 = v6;
  v24 = v4;
  v3 = *(v7 + 16);

  v9 = v8 + 48;
  v4 = -v3;
  v10 = -1;
  while (v10 - v3 != -1)
  {
    if (++v10 >= *(v8 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v11 = v9 + 24;

    v13 = sub_22EF71944(v12);

    v9 = v11;
    if (v13)
    {

      swift_bridgeObjectRelease_n();
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      sub_22EF74470(0xD000000000000023, 0x800000022EFC6D40, 8, 0);
      swift_willThrow();
      return;
    }
  }

  v23 = a2;

  v26 = MEMORY[0x277D84F90];
  v14 = v25;
  if (v25 >> 62)
  {
    a1 = sub_22EFB67CC();
    v14 = v25;
    v15 = a1;
    v16 = v24;
    if (a1)
    {
      goto LABEL_10;
    }

LABEL_27:
    v20 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v15 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v16 = v24;
  if (!v15)
  {
    goto LABEL_27;
  }

LABEL_10:
  v17 = 0;
  v4 = v14 & 0xC000000000000001;
  v18 = v14 & 0xFFFFFFFFFFFFFF8;
  while (v4)
  {
    v19 = MEMORY[0x2318FB480](v17);
    a2 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      goto LABEL_21;
    }

LABEL_16:
    if ((v16 & 1) != 0 || *(v19 + 80) != 1)
    {
      sub_22EFB673C();
      sub_22EFB676C();
      v16 = v24;
      sub_22EFB677C();
      a1 = sub_22EFB674C();
    }

    else
    {
    }

    ++v17;
    v14 = v25;
    if (a2 == v15)
    {
      goto LABEL_22;
    }
  }

  if (v17 >= *(v18 + 16))
  {
    goto LABEL_24;
  }

  v19 = *(v14 + 8 * v17 + 32);

  a2 = (v17 + 1);
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_16;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  v20 = v26;
LABEL_28:

  v22 = sub_22EF8841C(v20);

  *v23 = v22 & 1;
}

uint64_t sub_22EFA3898(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return v3;
  }

  v5 = (result + 16 * a2 + 8);
  while (v3 < v4)
  {
    result = *(v5 - 1);
    v6 = *v5;
    v7 = *v5 >> 62;
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (*(result + 16) != *(result + 24))
        {
          return v3;
        }
      }

      else
      {
        result = sub_22EF708C8(result, *v5);
      }
    }

    else if (v7)
    {
      if (result != result >> 32)
      {
        return v3;
      }
    }

    else
    {
      result = sub_22EF708C8(result, *v5);
      if ((v6 & 0xFF000000000000) != 0)
      {
        return v3;
      }
    }

    ++v3;
    v5 += 2;
    if (v4 == v3)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EFA3994(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if (a4 == result)
  {
    if (a6)
    {
      if (a3)
      {
        return 0;
      }

      goto LABEL_65;
    }

    if (a3)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (a4 < a8 || (a9 >> 1) <= a4)
    {
      goto LABEL_68;
    }

    v18 = (a7 + 16 * a4);
    v19 = *v18;
    v20 = v18[1];

    return sub_22EFA098C(a2, a5, v19, v20);
  }

  else
  {
    v12 = result;
    v13 = a9 >> 1;
    if (a4 >= result)
    {
      if (result < a8 || v13 <= result)
      {
        goto LABEL_67;
      }

      if (a3)
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        return result;
      }

      v21 = (a7 + 16 * result);
      v22 = *v21;
      v23 = v21[1];
      v24 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v24 == 2)
        {
          v27 = *(v22 + 24);
        }

        else
        {
          v27 = 0;
        }
      }

      else if (v24)
      {
        v27 = v22 >> 32;
      }

      else
      {
        v27 = BYTE6(v23);
      }

      result = sub_22EFA098C(a2, v27, v22, v23);
      v30 = 1;
      v33 = a4;
      v31 = a5;
      v32 = a6;
    }

    else
    {
      if (a4 < a8 || v13 <= a4)
      {
        goto LABEL_66;
      }

      v14 = (a7 + 16 * a4);
      v16 = *v14;
      v15 = v14[1];
      v17 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v17 == 2)
        {
          result = *(v16 + 24);
        }

        else
        {
          result = 0;
        }
      }

      else if (v17)
      {
        result = v16 >> 32;
      }

      else
      {
        result = BYTE6(v15);
      }

      if (a6)
      {
        goto LABEL_73;
      }

      result = sub_22EFA098C(result, a5, v16, v15);
      v30 = -1;
      v31 = a2;
      v32 = a3;
      v33 = v12;
      v12 = a4;
    }

    if (v12 + 1 < v33)
    {
      v34 = (a7 + 16 * v12 + 24);
      v35 = v12 + 1;
      while (v12 + 1 >= a8 && v35 < v13)
      {
        v36 = *(v34 - 1);
        v37 = *v34 >> 62;
        if (v37 > 1)
        {
          if (v37 == 2)
          {
            v40 = v36 + 16;
            v38 = *(v36 + 16);
            v39 = *(v40 + 8);
            v41 = __OFSUB__(v39, v38);
            v36 = v39 - v38;
            if (v41)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v36 = 0;
          }
        }

        else if (v37)
        {
          v41 = __OFSUB__(HIDWORD(v36), v36);
          LODWORD(v36) = HIDWORD(v36) - v36;
          if (v41)
          {
            goto LABEL_64;
          }

          v36 = v36;
        }

        else
        {
          v36 = BYTE6(*v34);
        }

        v42 = v36 * v30;
        v41 = __OFADD__(result, v42);
        result += v42;
        if (v41)
        {
          goto LABEL_62;
        }

        ++v35;
        v34 += 2;
        if (v33 == v35)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_50:
    if ((v32 & 1) == 0)
    {
      if (v33 < a8 || v33 >= v13)
      {
        goto LABEL_69;
      }

      v43 = (a7 + 16 * v33);
      v44 = *v43;
      v45 = v43[1];
      v46 = v45 >> 62;
      v47 = result;
      if ((v45 >> 62) > 1)
      {
        v48 = 0;
        if (v46 == 2)
        {
          v48 = *(v44 + 16);
        }
      }

      else if (v46)
      {
        v48 = v44;
      }

      else
      {
        v48 = 0;
      }

      v49 = sub_22EFA098C(v48, v31, v44, v45);
      v41 = __OFADD__(v47, v49 * v30);
      result = v47 + v49 * v30;
      if (v41)
      {
        goto LABEL_70;
      }
    }
  }

  return result;
}

void sub_22EFA3C5C(uint64_t a1, void *a2, char *a3, int a4)
{
  LODWORD(v332) = a4;
  v328 = a3;
  v333 = a2;
  v343 = *MEMORY[0x277D85DE8];
  v7 = sub_22EFB63EC();
  v331 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v292 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22EFB62DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v292 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22EF8841C(a1);
  v15 = sub_22EF8A0E4(a1, v14 & 1);
  if (v5)
  {
    return;
  }

  v17 = v15;
  *&v326 = v4;
  LODWORD(v327) = v14;
  v324 = a1;
  v318 = v13;
  v317 = v9;
  v323 = v7;
  v18 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    LOBYTE(v19) = v327;
    v20 = v10;
    v21 = v11;
    if (v18 != 2)
    {
      goto LABEL_9;
    }

    v24 = *(v15 + 16);
    v23 = *(v15 + 24);
    v25 = __OFSUB__(v23, v24);
    v22 = v23 - v24;
    if (v25)
    {
      goto LABEL_86;
    }

LABEL_8:
    if (v22 < 0x2000)
    {
LABEL_9:
      v316 = v16 >> 62;
      v26 = v16;
      v321 = 0;
      if (qword_27DA9E058 != -1)
      {
        goto LABEL_79;
      }

      goto LABEL_10;
    }

    v95 = v16;
    v338 = 0;
    v339 = 0xE000000000000000;
    v96 = v16 >> 62;
    sub_22EFB66DC();

    v338 = 0xD00000000000002ALL;
    v339 = 0x800000022EFC6EC0;
    if (v96 == 2)
    {
      v98 = *(v17 + 16);
      v97 = *(v17 + 24);
      v99 = v97 - v98;
      if (!__OFSUB__(v97, v98))
      {
LABEL_74:
        sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
        *&__dst = v99;
        v100 = sub_22EFB683C();
        MEMORY[0x2318FB260](v100);

        sub_22EF74470(v338, v339, 8, 0);
        swift_willThrow();
        sub_22EF708C8(v17, v95);
        return;
      }

      __break(1u);
    }

    if (__OFSUB__(HIDWORD(v17), v17))
    {
      goto LABEL_295;
    }

    v99 = HIDWORD(v17) - v17;
    goto LABEL_74;
  }

  LOBYTE(v19) = v327;
  v20 = v10;
  v21 = v11;
  if (!v18)
  {
    goto LABEL_9;
  }

  LODWORD(v22) = HIDWORD(v15) - v15;
  if (!__OFSUB__(HIDWORD(v15), v15))
  {
    v22 = v22;
    goto LABEL_8;
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  while (2)
  {
    if (sub_22EFB67CC() == 0 || (v327 & 1) == 0)
    {
      goto LABEL_296;
    }

    v67 = sub_22EFB67CC();
    v58 = v324;
    if (!v67)
    {
      v17 = MEMORY[0x277D84F90];
LABEL_90:
      v105 = sub_22EFA30DC(v17);

      v106 = sub_22EF8388C(v105);
      v107 = v106[2];
      v38 = v331;
      if (v107)
      {
        v108 = 0;
        v109 = 0;
        do
        {
          v110 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            goto LABEL_273;
          }

          v25 = __OFADD__(v109, 15);
          v109 += 15;
          if (v25)
          {
            v109 = 0x7FFFFFFFFFFFFFFFLL;
          }

          ++v108;
        }

        while (v109 < v107);
      }

      else
      {
        v110 = 0;
      }

      v338 = MEMORY[0x277D84F90];
      sub_22EF9AB88(0, v110 & ~(v110 >> 63), 0);
      if ((v110 & 0x8000000000000000) == 0)
      {
        v111 = v338;
        if (v110)
        {
          v112 = 0;
          *&v332 = v106 + 4;
          while (1)
          {
            if (v112 >= v107)
            {
              goto LABEL_276;
            }

            if (v112 == 0x7FFFFFFFFFFFFFF8)
            {
              break;
            }

            v113 = v112 + 15;
            if (v107 >= (v112 + 15))
            {
              v114 = v112 + 15;
            }

            else
            {
              v114 = v107;
            }

            if (v114 < v112)
            {
              goto LABEL_278;
            }

            v115 = v106[2];
            if (v115 < v112 || v115 < v114)
            {
              goto LABEL_279;
            }

            v338 = v111;
            v118 = v111[2];
            v117 = v111[3];

            if (v118 >= v117 >> 1)
            {
              sub_22EF9AB88((v117 > 1), v118 + 1, 1);
              v111 = v338;
            }

            v111[2] = v118 + 1;
            v119 = &v111[4 * v118];
            v120 = v332;
            v119[4] = v106;
            v119[5] = v120;
            v119[6] = v112;
            v119[7] = (2 * v114) | 1;
            v112 += 15;
            if (!--v110)
            {
              if (v113 >= v107)
              {
LABEL_115:

                v38 = v331;
                goto LABEL_116;
              }

LABEL_200:
              *&v332 = v106 + 4;
              v230 = v113;
              while (1)
              {
                v231 = v230 + 15;
                if (__OFADD__(v230, 15))
                {
                  break;
                }

                if (v107 >= v231)
                {
                  v232 = v230 + 15;
                }

                else
                {
                  v232 = v107;
                }

                if (v232 < v230)
                {
                  goto LABEL_281;
                }

                if (v113 < 0)
                {
                  goto LABEL_282;
                }

                v233 = v106[2];
                if (v233 < v230 || v233 < v232)
                {
                  goto LABEL_283;
                }

                v338 = v111;
                v236 = v111[2];
                v235 = v111[3];

                if (v236 >= v235 >> 1)
                {
                  sub_22EF9AB88((v235 > 1), v236 + 1, 1);
                  v111 = v338;
                }

                v111[2] = v236 + 1;
                v237 = &v111[4 * v236];
                v238 = v332;
                v237[4] = v106;
                v237[5] = v238;
                v237[6] = v230;
                v237[7] = (2 * v232) | 1;
                v230 += 15;
                if (v231 >= v107)
                {
                  goto LABEL_115;
                }
              }

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
LABEL_286:
              __break(1u);
LABEL_287:
              __break(1u);
LABEL_288:
              __break(1u);
LABEL_289:
              __break(1u);
LABEL_290:
              __break(1u);
LABEL_291:
              __break(1u);
LABEL_292:
              __break(1u);
              goto LABEL_293;
            }
          }

LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
          goto LABEL_280;
        }

        if (v107)
        {
          v113 = 0;
          goto LABEL_200;
        }

LABEL_116:
        v19 = v323;
        v299 = v111[2];
        if (v299)
        {
          v121 = 0;
          v304 = v111 + 4;
          *(&v122 + 1) = 10;
          v303 = xmmword_22EFBCE20;
          *&v122 = 16904320;
          v302 = v122;
          v301 = xmmword_22EFBCE30;
          *(&v122 + 1) = 5;
          v297 = xmmword_22EFBB8B0;
          *&v122 = 136315138;
          v292 = v122;
          v325 = xmmword_22EFBB8C0;
          v300 = v111;
          while (1)
          {
            if (v121 >= v111[2])
            {
              goto LABEL_290;
            }

            v315 = v121;
            v123 = &v304[4 * v121];
            v125 = *v123;
            v124 = v123[1];
            v126 = v123[2];
            v127 = v123[3];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E430, &unk_22EFBD190);
            v128 = swift_allocObject();
            *(v128 + 16) = v303;
            *(v128 + 32) = v302;
            swift_unknownObjectRetain();
            v129 = sub_22EFA3898(v124, v126, v127);
            v132 = sub_22EFA3994(v129, v131, v130 & 1, v127 >> 1, 0, 1, v124, v126, v127);
            if ((v132 & 0x8000000000000000) != 0)
            {
              goto LABEL_291;
            }

            v319 = v125;
            if (v132 > 0xFF)
            {
              goto LABEL_292;
            }

            *(v128 + 36) = v132;
            v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E438, &qword_22EFBBC60);
            v340 = v133;
            v341 = sub_22EF70E20(&qword_281477D60, &qword_27DA9E438, &qword_22EFBBC60, MEMORY[0x277CC9C28]);
            v338 = v128;
            v134 = __swift_project_boxed_opaque_existential_1(&v338, v133);
            v135 = *v134;
            v136 = *(*v134 + 16);
            if (v136)
            {
              if (v136 <= 0xE)
              {
                *(&v342 + 6) = 0;
                *&v342 = 0;
                BYTE14(v342) = v136;
                memcpy(&v342, (v135 + 32), v136);
                v139 = v342;
                v140 = v298 & 0xF00000000000000 | DWORD2(v342) | ((WORD6(v342) | (BYTE14(v342) << 16)) << 32);
                v298 = v140;
              }

              else
              {
                sub_22EFB607C();
                swift_allocObject();
                v137 = sub_22EFB602C();
                v138 = v137;
                if (v136 >= 0x7FFFFFFF)
                {
                  sub_22EFB614C();
                  v139 = swift_allocObject();
                  v139[2] = 0;
                  v139[3] = v136;
                  v140 = v138 | 0x8000000000000000;
                }

                else
                {
                  v139 = (v136 << 32);
                  v140 = v137 | 0x4000000000000000;
                }
              }
            }

            else
            {
              v139 = 0;
              v140 = 0xC000000000000000;
            }

            v141 = v319;
            __swift_destroy_boxed_opaque_existential_0Tm(&v338);
            v338 = v139;
            v339 = v140;
            sub_22EF70B68(v139, v140);
            sub_22EF84234(v141, v124, v126, v127);
            sub_22EF708C8(v139, v140);
            v320 = v338;
            v322 = v339;
            v142 = sub_22EFB61BC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E3F0, &unk_22EFBBC40);
            v143 = swift_allocObject();
            *(v143 + 16) = v301;
            sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
            *(v143 + 32) = sub_22EFB660C();
            *(v143 + 40) = sub_22EFB660C();
            *(v143 + 48) = sub_22EFB660C();
            v144 = sub_22EFB653C();

            *&v342 = 0;
            v145 = [v333 transceiveAndCheckSW:v142 inArray:v144 keepingSW:1 error:&v342];

            v146 = v342;
            if (!v145)
            {
              v290 = v146;

              sub_22EFB60EC();

              swift_willThrow();
              sub_22EF708C8(v329, v330);
              sub_22EF708B4(v313, v314);
              sub_22EF708C8(v320, v322);
              swift_unknownObjectRelease();
              return;
            }

            v147 = sub_22EFB61DC();
            v149 = v148;

            v338 = v147;
            v339 = v149;
            swift_beginAccess();
            v150 = v338;
            v151 = v339;
            sub_22EF70B68(v338, v339);
            v152 = sub_22EFB61BC();
            sub_22EF708C8(v150, v151);
            LODWORD(v150) = GetSW(v152);

            if (v150 == 25618)
            {
              v153 = sub_22EFAB164(&unk_2843B6DB0);
              v155 = v154;
              v156 = sub_22EFB61BC();
              sub_22EF708C8(v153, v155);
              *&v342 = 0;
              v157 = v333;
              v158 = [v333 transceive:v156 error:&v342];

              v159 = v342;
              if (!v158 || (v160 = sub_22EFB61DC(), sub_22EF708C8(v160, v161), v158, v162 = sub_22EFB61BC(), v163 = swift_allocObject(), *(v163 + 16) = v297, *(v163 + 32) = sub_22EFB660C(), *(v163 + 40) = sub_22EFB660C(), v164 = sub_22EFB653C(), , *&v342 = 0, v165 = [v157 transceiveAndCheckSW:v162 inArray:v164 keepingSW:1 error:&v342], v162, v164, v159 = v342, !v165))
              {
                v291 = v159;

                sub_22EFB60EC();

                swift_willThrow();
                sub_22EF708C8(v329, v330);
                sub_22EF708B4(v313, v314);
                sub_22EF708C8(v320, v322);
                swift_unknownObjectRelease();
                v103 = v338;
                v104 = v339;
LABEL_261:
                sub_22EF708C8(v103, v104);
                return;
              }

              v166 = sub_22EFB61DC();
              v168 = v167;

              v169 = v338;
              v170 = v339;
              v338 = v166;
              v339 = v168;
              sub_22EF708C8(v169, v170);
            }

            v171 = v338;
            v172 = v339;
            sub_22EF70B68(v338, v339);
            v173 = sub_22EFB61BC();
            sub_22EF708C8(v171, v172);
            LODWORD(v171) = GetSW(v173);

            if (v171 == 36864)
            {
              sub_22EF708C8(v320, v322);
LABEL_179:
              swift_unknownObjectRelease();
              sub_22EF708C8(v338, v339);
              v19 = v323;
              goto LABEL_119;
            }

            v174 = sub_22EFB624C();
            v175 = sub_22EFB65DC();
            v176 = os_log_type_enabled(v174, v175);
            v19 = v323;
            if (v176)
            {
              break;
            }

            sub_22EF708C8(v320, v322);

            swift_unknownObjectRelease();
            sub_22EF708C8(v338, v339);
LABEL_119:
            v111 = v300;
            v121 = v315 + 1;
            if (v315 + 1 == v299)
            {
              goto LABEL_180;
            }
          }

          v294 = v175;
          v177 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          v336 = v178;
          *v177 = v292;
          v179 = v339;
          v180 = v339 >> 62;
          v324 = v338;
          v309 = HIDWORD(v338);
          v296 = v174;
          v295 = v177;
          v293 = v178;
          if ((v339 >> 62) > 1)
          {
            if (v180 == 2)
            {
              v182 = v324;
              v184 = *(v324 + 16);
              v183 = *(v324 + 24);
              v181 = v183 - v184;
              if (__OFSUB__(v183, v184))
              {
                goto LABEL_303;
              }

              goto LABEL_147;
            }
          }

          else
          {
            if (!v180)
            {
              v181 = BYTE6(v339);
              goto LABEL_148;
            }

            v182 = v324;
            if (__OFSUB__(v309, v324))
            {
              goto LABEL_304;
            }

            v181 = v309 - v324;
LABEL_147:
            sub_22EF70B68(v182, v339);
LABEL_148:
            if (v181)
            {
              v334 = MEMORY[0x277D84F90];
              sub_22EF9AAC8(0, v181 & ~(v181 >> 63), 0);
              v185 = v324;
              v308 = v324;
              if (v180)
              {
                if (v180 == 2)
                {
                  v186 = *(v324 + 16);
                }

                else
                {
                  v186 = v308;
                }
              }

              else
              {
                v186 = 0;
              }

              *&v332 = v186;
              if ((v181 & 0x8000000000000000) == 0)
              {
                v188 = 0;
                v187 = v334;
                v306 = v324 >> 32;
                v307 = BYTE6(v179);
                v305 = &v342 + v332;
                v327 = v180;
                *&v326 = v181;
                while (1)
                {
                  if (v188 >= v181)
                  {
                    goto LABEL_274;
                  }

                  v189 = v188 + 1;
                  if (__OFADD__(v188, 1))
                  {
LABEL_275:
                    __break(1u);
LABEL_276:
                    __break(1u);
                    goto LABEL_277;
                  }

                  v190 = v332 + v188;
                  if (v180 == 2)
                  {
                    if (v190 < *(v185 + 16))
                    {
                      goto LABEL_285;
                    }

                    if (v190 >= *(v185 + 24))
                    {
                      goto LABEL_287;
                    }

                    v195 = sub_22EFB603C();
                    if (!v195)
                    {
                      goto LABEL_307;
                    }

                    v192 = v195;
                    v196 = sub_22EFB605C();
                    v194 = v190 - v196;
                    if (__OFSUB__(v190, v196))
                    {
                      goto LABEL_289;
                    }
                  }

                  else
                  {
                    if (v180 != 1)
                    {
                      if (v190 >= v307)
                      {
                        goto LABEL_284;
                      }

                      LOWORD(v342) = v185;
                      BYTE2(v342) = BYTE2(v185);
                      BYTE3(v342) = BYTE3(v185);
                      BYTE4(v342) = v309;
                      BYTE5(v342) = BYTE5(v185);
                      BYTE6(v342) = BYTE6(v185);
                      BYTE7(v342) = HIBYTE(v185);
                      WORD4(v342) = v179;
                      BYTE10(v342) = BYTE2(v179);
                      BYTE11(v342) = BYTE3(v179);
                      BYTE12(v342) = BYTE4(v179);
                      BYTE13(v342) = BYTE5(v179);
                      v197 = v305[v188];
                      goto LABEL_174;
                    }

                    if (v190 < v308 || v190 >= v306)
                    {
                      goto LABEL_286;
                    }

                    v191 = sub_22EFB603C();
                    if (!v191)
                    {
                      goto LABEL_306;
                    }

                    v192 = v191;
                    v193 = sub_22EFB605C();
                    v194 = v190 - v193;
                    if (__OFSUB__(v190, v193))
                    {
                      goto LABEL_288;
                    }
                  }

                  v197 = *(v192 + v194);
                  v185 = v324;
LABEL_174:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
                  v198 = swift_allocObject();
                  *(v198 + 16) = v325;
                  *(v198 + 56) = MEMORY[0x277D84B78];
                  *(v198 + 64) = MEMORY[0x277D84BC0];
                  *(v198 + 32) = v197;
                  v199 = sub_22EFB649C();
                  v201 = v200;
                  v334 = v187;
                  v180 = *(v187 + 16);
                  v202 = *(v187 + 24);
                  if (v180 >= v202 >> 1)
                  {
                    sub_22EF9AAC8((v202 > 1), v180 + 1, 1);
                    v185 = v324;
                    v187 = v334;
                  }

                  *(v187 + 16) = v180 + 1;
                  v203 = v187 + 16 * v180;
                  *(v203 + 32) = v199;
                  *(v203 + 40) = v201;
                  ++v188;
                  v181 = v326;
                  v204 = v189 == v326;
                  v38 = v331;
                  LODWORD(v180) = v327;
                  if (v204)
                  {
                    goto LABEL_178;
                  }
                }
              }

LABEL_302:
              __break(1u);
LABEL_303:
              __break(1u);
LABEL_304:
              __break(1u);
            }
          }

          v187 = MEMORY[0x277D84F90];
LABEL_178:
          *&v342 = v187;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
          sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
          v205 = sub_22EFB646C();
          v207 = v206;
          sub_22EF708C8(v324, v179);

          v208 = sub_22EF9447C(v205, v207, &v336);

          v209 = v295;
          *(v295 + 1) = v208;
          v210 = v296;
          _os_log_impl(&dword_22EEF5000, v296, v294, "Activation parially succeeded, warning : %s", v209, 0xCu);
          v211 = v293;
          __swift_destroy_boxed_opaque_existential_0Tm(v293);
          MEMORY[0x2318FC200](v211, -1, -1);
          MEMORY[0x2318FC200](v209, -1, -1);
          sub_22EF708C8(v320, v322);

          goto LABEL_179;
        }

LABEL_180:

        for (i = 1; ; i = 0)
        {
          v57 = v328;
LABEL_182:
          *v57 = i;
          v52 = v333;
LABEL_183:
          v212 = sub_22EFAB164(&unk_2843B6DD8);
          v214 = v213;
          v331 = v212;
          v215 = sub_22EFB61BC();
          v338 = 0;
          v216 = [v52 transceiveAndCheckSW:v215 error:&v338];

          v217 = v338;
          if (!v216)
          {
            v223 = v217;
            v224 = sub_22EFB60EC();

            swift_willThrow();
            v225 = 0;
            goto LABEL_224;
          }

          v218 = sub_22EFB61DC();
          v220 = v219;

          v221 = v220 >> 62;
          v222 = v330;
          if ((v220 >> 62) > 1)
          {
            if (v221 != 2)
            {
              goto LABEL_197;
            }

            v227 = *(v218 + 16);
            v226 = *(v218 + 24);
            v25 = __OFSUB__(v226, v227);
            v228 = v226 - v227;
            if (v25)
            {
              goto LABEL_300;
            }

            if (v228 != 34)
            {
              goto LABEL_197;
            }
          }

          else if (v221)
          {
            if (__OFSUB__(HIDWORD(v218), v218))
            {
              goto LABEL_301;
            }

            if (HIDWORD(v218) - v218 != 34)
            {
LABEL_197:
              sub_22EF708C8(v218, v220);
              v225 = v321;
              goto LABEL_224;
            }
          }

          else if (BYTE6(v220) != 34)
          {
            goto LABEL_197;
          }

          if (v221 == 2)
          {
            v229 = *(v218 + 24);
          }

          else
          {
            if (v221 != 1)
            {
              v229 = BYTE6(v220);
              goto LABEL_218;
            }

            v229 = v218 >> 32;
          }

          sub_22EF70B68(v218, v220);
LABEL_218:
          v328 = v214;
          if (v229 < 2)
          {
            goto LABEL_308;
          }

          *&v332 = sub_22EFB618C();
          v327 = v239;
          sub_22EF708C8(v218, v220);
          sub_22EFA80DC(&qword_27DA9E418, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          v240 = v317;
          sub_22EFB62BC();
          v241 = v329;
          sub_22EF70B68(v329, v222);
          v242 = v321;
          sub_22EFA9AB8(v241, v222, v240);
          v243 = v222;
          v225 = v242;
          sub_22EF708C8(v241, v243);
          v244 = v318;
          sub_22EFB62AC();
          (*(v38 + 8))(v240, v19);
          v245 = v312;
          v340 = v312;
          v341 = sub_22EFA80DC(&qword_27DA9E420, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
          v246 = __swift_allocate_boxed_opaque_existential_1(&v338);
          v247 = v311;
          (*(v311 + 16))(v246, v244, v245);
          __swift_project_boxed_opaque_existential_1(&v338, v340);
          sub_22EFB608C();
          (*(v247 + 8))(v244, v245);
          v248 = v342;
          __swift_destroy_boxed_opaque_existential_0Tm(&v338);
          v249 = v332;
          v250 = v327;
          LOBYTE(v245) = sub_22EF6E8C0(v332, v327, v248, *(&v248 + 1));
          sub_22EF708C8(v248, *(&v248 + 1));
          sub_22EF708C8(v249, v250);
          if (v245)
          {
            v251 = sub_22EFB624C();
            v252 = sub_22EFB65EC();
            v253 = os_log_type_enabled(v251, v252);
            v254 = v328;
            if (v253)
            {
              v255 = swift_slowAlloc();
              *v255 = 0;
              _os_log_impl(&dword_22EEF5000, v251, v252, "SE is already up to date with latest config", v255, 2u);
              MEMORY[0x2318FC200](v255, -1, -1);
            }

            sub_22EF708C8(v329, v330);
            sub_22EF708B4(v313, v314);
            sub_22EF708C8(v331, v254);
            sub_22EF708C8(v218, v220);

            return;
          }

          sub_22EF708C8(v218, v220);
          v214 = v328;
LABEL_224:
          v321 = v225;
          if (v316 <= 1)
          {
            if (!v316)
            {
              v256 = v330;
              v257 = BYTE6(v330);
              goto LABEL_235;
            }

            goto LABEL_231;
          }

          if (v316 == 2)
          {
            v259 = *(v329 + 16);
            v258 = *(v329 + 24);
            v257 = v258 - v259;
            if (__OFSUB__(v258, v259))
            {
              __break(1u);
LABEL_231:
              if (__OFSUB__(HIDWORD(v329), v329))
              {
                goto LABEL_299;
              }

              v257 = HIDWORD(v329) - v329;
            }
          }

          else
          {
            v257 = 0;
          }

          v256 = v330;
LABEL_235:
          *&v342 = sub_22EFAB164(&unk_2843B6E00);
          *(&v342 + 1) = v260;
          if (v257 < 0)
          {
LABEL_293:
            __break(1u);
          }

          else if (!(v257 >> 16))
          {
            LOWORD(v336) = bswap32(v257) >> 16;
            v340 = MEMORY[0x277D838B0];
            v341 = MEMORY[0x277CC9C18];
            v338 = &v336;
            v339 = &v336 + 2;
            __swift_project_boxed_opaque_existential_1(&v338, MEMORY[0x277D838B0]);
            sub_22EFB617C();
            __swift_destroy_boxed_opaque_existential_0Tm(&v338);
            v262 = *(&v342 + 1);
            v261 = v342;
            v263 = sub_22EFB61BC();
            v338 = 0;
            v264 = [v333 transceiveAndCheckSW:v263 error:&v338];

            v265 = v338;
            if (!v264)
            {
              v288 = v265;
              sub_22EFB60EC();

              swift_willThrow();
              sub_22EF708C8(v329, v256);
              sub_22EF708B4(v313, v314);
              sub_22EF708C8(v331, v214);
              v103 = v261;
              v104 = v262;
              goto LABEL_261;
            }

            v266 = sub_22EFB61DC();
            sub_22EF708C8(v266, v267);

            sub_22EFB607C();
            swift_allocObject();
            v268 = sub_22EFB606C() | 0x4000000000000000;
            v336 = 0;
            v337 = v268;
            if (!v257)
            {
              sub_22EF708B4(v313, v314);
              sub_22EF708C8(v331, v214);
              v287 = 0;
LABEL_263:
              sub_22EF708C8(v329, v256);
              sub_22EF708C8(v287, v268);
              sub_22EF708C8(v261, v262);
              return;
            }

            v328 = v214;
            sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
            v269 = 0;
            v332 = xmmword_22EFBB8B0;
            while (2)
            {
              if (__OFADD__(v269, 255))
              {
                v270 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v270 = v269 + 255;
              }

              v271 = v257 - v269;
              if (__OFSUB__(v257, v269))
              {
                __break(1u);
LABEL_269:
                __break(1u);
LABEL_270:
                __break(1u);
LABEL_271:
                __break(1u);
LABEL_272:
                __break(1u);
LABEL_273:
                __break(1u);
LABEL_274:
                __break(1u);
                goto LABEL_275;
              }

              if (v271 >= 255)
              {
                v272 = 255;
              }

              else
              {
                v272 = v257 - v269;
              }

              v273 = v337 >> 62;
              if ((v337 >> 62) > 1)
              {
                if (v273 != 2)
                {
                  goto LABEL_254;
                }

                v274 = *(v336 + 16);
                v275 = *(v336 + 24);
              }

              else
              {
                if (!v273)
                {
                  goto LABEL_254;
                }

                v274 = v336;
                v275 = v336 >> 32;
              }

              if (v275 < v274)
              {
                goto LABEL_269;
              }

LABEL_254:
              sub_22EFB616C();
              sub_22EFB617C();
              if (v271 < 0)
              {
                goto LABEL_270;
              }

              v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
              v340 = v276;
              v341 = sub_22EF70E20(&qword_281477D58, &qword_27DA9E5F8, &unk_22EFBD1A0, MEMORY[0x277CC9EF0]);
              LOBYTE(v338) = v272;
              LOBYTE(v334) = *__swift_project_boxed_opaque_existential_1(&v338, v276);
              sub_22EFB616C();
              __swift_destroy_boxed_opaque_existential_0Tm(&v338);
              if (__OFADD__(v269, v272))
              {
                goto LABEL_271;
              }

              if (v269 + v272 < v269)
              {
                goto LABEL_272;
              }

              v277 = sub_22EFB618C();
              v279 = v278;
              sub_22EFB61FC();
              sub_22EF708C8(v277, v279);
              v280 = sub_22EFB61BC();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E3F0, &unk_22EFBBC40);
              v281 = swift_allocObject();
              *(v281 + 16) = v332;
              *(v281 + 32) = sub_22EFB660C();
              *(v281 + 40) = sub_22EFB660C();
              v282 = sub_22EFB653C();

              v338 = 0;
              v283 = [v333 transceiveAndCheckSW:v280 inArray:v282 error:&v338];

              v284 = v338;
              if (!v283)
              {
                v289 = v284;
                sub_22EFB60EC();

                swift_willThrow();
                sub_22EF708C8(v329, v330);
                sub_22EF708B4(v313, v314);
                sub_22EF708C8(v331, v328);
                sub_22EF708C8(v336, v337);
                v104 = *(&v342 + 1);
                v103 = v342;
                goto LABEL_261;
              }

              v285 = sub_22EFB61DC();
              sub_22EF708C8(v285, v286);

              v269 = v270;
              if (v270 >= v257)
              {
                sub_22EF708B4(v313, v314);
                sub_22EF708C8(v331, v328);
                v287 = v336;
                v268 = v337;
                v262 = *(&v342 + 1);
                v261 = v342;
                v256 = v330;
                goto LABEL_263;
              }

              continue;
            }
          }

          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          v19 = v323;
          v38 = v331;
        }
      }

LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
      goto LABEL_302;
    }

LABEL_22:
    v336 = MEMORY[0x277D84F90];
    sub_22EF9AB68(0, v67 & ~(v67 >> 63), 0);
    if (v67 < 0)
    {
      __break(1u);
      goto LABEL_298;
    }

    v68 = 0;
    v17 = v336;
    v327 = v58 & 0xC000000000000001;
    v326 = xmmword_22EFBBCB0;
    *&v325 = v67;
    while (1)
    {
      if (v327)
      {
        v26 = MEMORY[0x2318FB480](v68, v58);
      }

      else
      {
        v26 = *(v58 + 8 * v68 + 32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E430, &unk_22EFBD190);
      v69 = swift_allocObject();
      v70 = v69;
      *(v69 + 16) = v326;
      *(v69 + 32) = 79;
      v71 = *(v26 + 32);
      v72 = *(v26 + 40);
      v73 = v72 >> 62;
      if ((v72 >> 62) > 1)
      {
        if (v73 != 2)
        {
          LOBYTE(v71) = 0;
          goto LABEL_40;
        }

        v76 = v71 + 16;
        v74 = *(v71 + 16);
        v75 = *(v76 + 8);
        v25 = __OFSUB__(v75, v74);
        v71 = v75 - v74;
        if (v25)
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }
      }

      else
      {
        if (!v73)
        {
          v71 = HIWORD(v72);
          goto LABEL_40;
        }

        v25 = __OFSUB__(HIDWORD(v71), v71);
        LODWORD(v71) = HIDWORD(v71) - v71;
        if (v25)
        {
          goto LABEL_80;
        }

        v71 = v71;
      }

      if ((v71 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v71 > 0xFF)
      {
        goto LABEL_78;
      }

LABEL_40:
      *(v69 + 33) = v71;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E438, &qword_22EFBBC60);
      v340 = v77;
      v341 = sub_22EF70E20(&qword_281477D60, &qword_27DA9E438, &qword_22EFBBC60, MEMORY[0x277CC9C28]);
      v338 = v70;
      v78 = __swift_project_boxed_opaque_existential_1(&v338, v77);
      v79 = *v78;
      v80 = *(*v78 + 16);
      *&v332 = v17;
      if (v80)
      {
        if (v80 <= 0xE)
        {
          *(&__dst + 6) = 0;
          *&__dst = 0;
          BYTE14(__dst) = v80;
          memcpy(&__dst, (v79 + 32), v80);
          v83 = __dst;
          v84 = v322 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          v322 = v84;
        }

        else
        {
          sub_22EFB607C();
          swift_allocObject();
          v81 = sub_22EFB602C();
          v82 = v81;
          if (v80 >= 0x7FFFFFFF)
          {
            sub_22EFB614C();
            v83 = swift_allocObject();
            *(v83 + 16) = 0;
            *(v83 + 24) = v80;
            v84 = v82 | 0x8000000000000000;
          }

          else
          {
            v83 = v80 << 32;
            v84 = v81 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v83 = 0;
        v84 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v338);
      v19 = *(v26 + 32);
      v85 = *(v26 + 40);
      *&__dst = v83;
      *(&__dst + 1) = v84;
      v340 = MEMORY[0x277CC9318];
      v341 = MEMORY[0x277CC9300];
      v338 = v19;
      v339 = v85;
      v86 = __swift_project_boxed_opaque_existential_1(&v338, MEMORY[0x277CC9318]);
      v87 = *v86;
      v20 = v86[1];
      v88 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        if (v88 != 2)
        {
          *(&v342 + 6) = 0;
          *&v342 = 0;
          sub_22EF70B68(v83, v84);
          sub_22EF70B68(v19, v85);
          goto LABEL_62;
        }

        v89 = *(v87 + 16);
        v21 = *(v87 + 24);
        sub_22EF70B68(v83, v84);
        sub_22EF70B68(v19, v85);
        v19 = sub_22EFB603C();
        if (v19)
        {
          v90 = sub_22EFB605C();
          if (__OFSUB__(v89, v90))
          {
            goto LABEL_83;
          }

          LOBYTE(v19) = v89 - v90 + v19;
        }

        if (__OFSUB__(v21, v89))
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (!v88)
        {
          *&v342 = *v86;
          WORD4(v342) = v20;
          BYTE10(v342) = BYTE2(v20);
          BYTE11(v342) = BYTE3(v20);
          BYTE12(v342) = BYTE4(v20);
          BYTE13(v342) = BYTE5(v20);
          v20 = &v342 + BYTE6(v20);
          sub_22EF70B68(v83, v84);
          sub_22EF70B68(v19, v85);
LABEL_62:
          sub_22EFB617C();

          sub_22EF708C8(v83, v84);
          goto LABEL_63;
        }

        v21 = v87;
        if (v87 >> 32 < v87)
        {
          goto LABEL_81;
        }

        sub_22EF70B68(v83, v84);
        sub_22EF70B68(v19, v85);
        v19 = sub_22EFB603C();
        if (v19 && __OFSUB__(v21, sub_22EFB605C()))
        {
          goto LABEL_84;
        }
      }

      sub_22EFB604C();
      sub_22EFB617C();

      sub_22EF708C8(v83, v84);
      v58 = v324;
LABEL_63:
      __swift_destroy_boxed_opaque_existential_0Tm(&v338);
      v91 = __dst;
      v17 = v332;
      v336 = v332;
      v93 = *(v332 + 16);
      v92 = *(v332 + 24);
      v19 = v325;
      if (v93 >= v92 >> 1)
      {
        v332 = __dst;
        sub_22EF9AB68((v92 > 1), v93 + 1, 1);
        v91 = v332;
        v17 = v336;
      }

      ++v68;
      *(v17 + 16) = v93 + 1;
      *(v17 + 16 * v93 + 32) = v91;
      if (v19 == v68)
      {
        goto LABEL_90;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    swift_once();
LABEL_10:
    v27 = sub_22EFB626C();
    v28 = __swift_project_value_buffer(v27, qword_27DAA03B8);
    sub_22EF70B68(v17, v26);
    v29 = sub_22EFB624C();
    v30 = v17;
    v31 = sub_22EFB65BC();
    sub_22EF708C8(v30, v26);
    v32 = os_log_type_enabled(v29, v31);
    v329 = v30;
    v330 = v26;
    v312 = v20;
    v311 = v21;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v338 = v34;
      *v33 = 136315138;
      v35 = sub_22EFB61CC();
      v37 = sub_22EF9447C(v35, v36, &v338);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_22EEF5000, v29, v31, "Serialized configuration %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x2318FC200](v34, -1, -1);
      MEMORY[0x2318FC200](v33, -1, -1);
    }

    v38 = v331;
    v39 = sub_22EFB624C();
    v40 = sub_22EFB65EC();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v332;
    if (v41)
    {
      v43 = swift_slowAlloc();
      *v43 = 67109632;
      *(v43 + 4) = v19 & 1;
      *(v43 + 8) = 1024;
      *(v43 + 10) = *v328;
      *(v43 + 14) = 1024;
      *(v43 + 16) = v42 & 1;
      _os_log_impl(&dword_22EEF5000, v39, v40, "Configuring SE on fastPath %{BOOL}d have %{BOOL}d activate %{BOOL}d", v43, 0x14u);
      MEMORY[0x2318FC200](v43, -1, -1);
    }

    v44 = sub_22EF7E630(0xD000000000000012, 0x800000022EFC6DB0);
    if (v45 >> 60 != 15)
    {
      v21 = v44;
      v20 = v45;
      v46 = sub_22EFB61BC();
      v47 = SelectByNameCmd(v46);

      v48 = sub_22EFB61DC();
      v50 = v49;

      v51 = sub_22EFB61BC();
      sub_22EF708C8(v48, v50);
      v338 = 0;
      v52 = v333;
      v53 = [v333 transceiveAndCheckSW:v51 error:&v338];

      v54 = v338;
      if (!v53)
      {
        v94 = v54;
        sub_22EFB60EC();

        swift_willThrow();
        sub_22EF708C8(v329, v330);
        sub_22EF708B4(v21, v20);
        return;
      }

      v310 = v28;
      v313 = v21;
      v314 = v20;
      v55 = sub_22EFB61DC();
      sub_22EF708C8(v55, v56);

      sub_22EF8FDE8(v52);
      v19 = v323;
      if ((v332 & 1) == 0)
      {
        goto LABEL_183;
      }

      v57 = v328;
      v58 = v324;
      if (*v328 == 1)
      {
        v59 = sub_22EFAB164(&unk_2843B6D88);
        v61 = v60;
        v62 = sub_22EFB61BC();
        v338 = 0;
        v63 = [v333 transceiveAndCheckSW:v62 error:&v338];

        v64 = v338;
        if (!v63)
        {
          v102 = v64;
          sub_22EFB60EC();

          swift_willThrow();
          sub_22EF708C8(v329, v330);
          sub_22EF708B4(v313, v314);
          v103 = v59;
          v104 = v61;
          goto LABEL_261;
        }

        v65 = sub_22EFB61DC();
        v20 = v66;
        sub_22EF708C8(v59, v61);
        sub_22EF708C8(v65, v20);

        v19 = v323;
        v57 = v328;
      }

      if (v58 >> 62)
      {
        continue;
      }

      v67 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((v327 & (v67 != 0)) == 0)
      {
        i = 0;
        goto LABEL_182;
      }

      goto LABEL_22;
    }

    break;
  }

  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __break(1u);
}

void sub_22EFA60A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, char a7)
{
  LOBYTE(v8) = a7;
  LOBYTE(v9) = a6;
  v136[1] = *MEMORY[0x277D85DE8];
  if (qword_281477D68 == -1)
  {
    goto LABEL_2;
  }

LABEL_206:
  v95 = a1;
  swift_once();
  a1 = v95;
LABEL_2:
  sub_22EF85014(a1, v8 & 1, 0);
  v129 = v7;
  if (v7)
  {
    return;
  }

  v15 = v13;
  v16 = v14;
  v119 = v9;
  v120 = a5;
  v121 = a2;
  v123 = v12;
  v7 = *(v14 + 16);

  v17 = v16 + 48;
  a2 = -v7;
  a5 = -1;
  while (a5 - v7 != -1)
  {
    if (++a5 >= *(v16 + 16))
    {
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
      goto LABEL_206;
    }

    v9 = v17 + 24;

    v19 = sub_22EF71944(v18);

    v17 = v9;
    if (v19)
    {

      swift_bridgeObjectRelease_n();
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      v20 = 0x800000022EFC6D40;
      v21 = 0xD000000000000023;
LABEL_200:
      sub_22EF74470(v21, v20, 8, 0);
      swift_willThrow();
      return;
    }
  }

  v126 = v15 >> 62;
  if (v15 >> 62)
  {
    goto LABEL_210;
  }

  v22 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {

    v130 = v16;
    v131 = v15;
    if (!v22)
    {
      goto LABEL_27;
    }

    v23 = 0;
    a2 = v15 & 0xC000000000000001;
    a5 = v15 & 0xFFFFFFFFFFFFFF8;
    while (a2)
    {
      v24 = MEMORY[0x2318FB480](v23, v15);
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_26;
      }

LABEL_17:
      v25 = *(v24 + 112);
      v26 = *(v24 + 120);
      v27 = v26 >> 62;
      if ((v26 >> 62) <= 1)
      {
        if (v27)
        {

          if (v25 == v25 >> 32)
          {
            goto LABEL_194;
          }
        }

        else
        {

          if ((v26 & 0xFF000000000000) == 0)
          {
            goto LABEL_194;
          }
        }

        goto LABEL_13;
      }

      if (v27 != 2)
      {

        swift_bridgeObjectRelease_n();

        goto LABEL_199;
      }

      v29 = *(v25 + 16);
      v28 = *(v25 + 24);

      if (v29 == v28)
      {
LABEL_194:

        swift_bridgeObjectRelease_n();

LABEL_199:
        sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
        v21 = 0xD00000000000003ELL;
        v20 = 0x800000022EFC6D70;
        goto LABEL_200;
      }

LABEL_13:
      ++v23;
      v16 = v130;
      v15 = v131;
      if (v9 == v22)
      {
        goto LABEL_27;
      }
    }

    if (v23 >= *(a5 + 16))
    {
      goto LABEL_203;
    }

    v24 = *(v15 + 8 * v23 + 32);

    v9 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      goto LABEL_17;
    }

LABEL_26:
    __break(1u);
LABEL_27:

    v135[0] = MEMORY[0x277D84F90];
    if (v126)
    {
      a1 = sub_22EFB67CC();
      v30 = a1;
    }

    else
    {
      v30 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = MEMORY[0x277D84F90];
    if (!v30)
    {
      goto LABEL_43;
    }

    v32 = 0;
    a2 = v15 & 0xC000000000000001;
    v33 = v15 & 0xFFFFFFFFFFFFFF8;
    while (2)
    {
      if (a2)
      {
        v15 = MEMORY[0x2318FB480](v32, v15);
        v9 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        goto LABEL_37;
      }

      if (v32 >= *(v33 + 16))
      {
        goto LABEL_202;
      }

      v15 = *(v15 + 8 * v32 + 32);

      v9 = v32 + 1;
      if (!__OFADD__(v32, 1))
      {
LABEL_37:
        if (*(v15 + 162))
        {
          sub_22EFB673C();
          a5 = *(v135[0] + 16);
          sub_22EFB676C();
          sub_22EFB677C();
          a1 = sub_22EFB674C();
        }

        else
        {
        }

        ++v32;
        v15 = v131;
        if (v9 == v30)
        {
          goto LABEL_42;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_42:
    v31 = v135[0];
    v16 = v130;
LABEL_43:
    v124 = v31;
    v133 = v31;
    v136[0] = 0;
    a2 = a4;
    v9 = a4 >> 60;
    if (a4 >> 60 != 15)
    {
      goto LABEL_62;
    }

    v7 = v129;
    a1 = sub_22EFA0404(&v133, v8 & 1);
    v34 = v129;
    if (!(v133 >> 62))
    {
      v35 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35 >= a1)
      {
        goto LABEL_46;
      }

LABEL_214:
      __break(1u);
LABEL_215:
      swift_once();
      goto LABEL_63;
    }

LABEL_213:
    v96 = v34;
    v97 = a1;
    v35 = sub_22EFB67CC();
    a1 = v97;
    v34 = v96;
    if (v35 < a1)
    {
      goto LABEL_214;
    }

LABEL_46:
    a1 = sub_22EFA32EC(a1, v35);
    v135[0] = MEMORY[0x277D84F90];
    if (v126)
    {
      a1 = sub_22EFB67CC();
      a5 = a1;
      if (!a1)
      {
LABEL_197:
        v51 = MEMORY[0x277D84F90];
        goto LABEL_223;
      }
    }

    else
    {
      a5 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a5)
      {
        goto LABEL_197;
      }
    }

    v129 = v34;
    v36 = 0;
    v37 = v15 & 0xC000000000000001;
    a2 = v15 & 0xFFFFFFFFFFFFFF8;
    while (2)
    {
      if (v37)
      {
        v16 = MEMORY[0x2318FB480](v36, v15);
        v9 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        goto LABEL_54;
      }

      if (v36 >= *(a2 + 16))
      {
        goto LABEL_204;
      }

      v16 = *(v15 + 8 * v36 + 32);

      v9 = v36 + 1;
      if (!__OFADD__(v36, 1))
      {
LABEL_54:
        if (*(v16 + 161) != 1 || (*(v16 + 104) & 1) != 0 || (v8 & 1) == 0 && *(v16 + 80) == 1)
        {
        }

        else
        {
          sub_22EFB673C();
          sub_22EFB676C();
          v15 = v131;
          sub_22EFB677C();
          a1 = sub_22EFB674C();
        }

        ++v36;
        if (v9 == a5)
        {
          v51 = v135[0];
          v34 = v129;
          goto LABEL_223;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_62:
    a5 = a3;
    sub_22EF70B68(a3, a2);
    if (qword_27DA9E058 != -1)
    {
      goto LABEL_215;
    }

LABEL_63:
    v38 = sub_22EFB626C();
    __swift_project_value_buffer(v38, qword_27DAA03B8);
    sub_22EF70B68(a5, a2);
    v34 = sub_22EFB624C();
    v39 = sub_22EFB65EC();
    sub_22EF708B4(a5, a2);
    if (os_log_type_enabled(v34, v39))
    {
      v8 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v135[0] = v40;
      *v8 = 136315138;
      v7 = v129;
      a5 = sub_22EF83154(a5, a2);
      *v134 = a5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      v41 = v39;
      sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
      v42 = sub_22EFB646C();
      v44 = v43;

      v45 = sub_22EF9447C(v42, v44, v135);

      *(v8 + 4) = v45;
      _os_log_impl(&dword_22EEF5000, v34, v41, "inSession with AID: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x2318FC200](v40, -1, -1);
      MEMORY[0x2318FC200](v8, -1, -1);
    }

    v136[0] = MEMORY[0x277D84F90];
    v9 = v124;
    if ((v124 & 0x8000000000000000) != 0 || (v124 & 0x4000000000000000) != 0)
    {
      v46 = sub_22EFB67CC();
      a2 = a3;
      if (!v46)
      {
LABEL_217:
        v98 = sub_22EFB624C();
        v51 = sub_22EFB65EC();
        if (!os_log_type_enabled(v98, v51))
        {
          goto LABEL_220;
        }

        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v135[0] = v100;
        *v99 = 136315138;
        swift_beginAccess();
        if (v136[0])
        {

          v102 = MEMORY[0x2318FB2C0](v101, MEMORY[0x277D837D0]);
          v104 = v103;

          a5 = sub_22EF9447C(v102, v104, v135);

          *(v99 + 4) = a5;
          _os_log_impl(&dword_22EEF5000, v98, v51, "inSession with pass unique IDs: %s", v99, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v100);
          MEMORY[0x2318FC200](v100, -1, -1);
          MEMORY[0x2318FC200](v99, -1, -1);
LABEL_220:

          v105 = sub_22EF9FE04(&v133, v136);
          v34 = v129;
          if (v133 >> 62)
          {
            goto LABEL_244;
          }

          v106 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v106 >= v105)
          {
            goto LABEL_222;
          }

LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          swift_once();
          goto LABEL_228;
        }

LABEL_262:
        __break(1u);
        return;
      }
    }

    else
    {
      v46 = *(v124 + 16);
      a2 = a3;
      if (!v46)
      {
        goto LABEL_217;
      }
    }

    v15 = 0;
    v125 = v46;
    v126 = v124 & 0xC000000000000001;
    v47 = __OFSUB__(HIDWORD(a2), a2);
    v118 = v47;
    v48 = a2 != 0;
    if (a4 != 0xC000000000000000)
    {
      v48 = 1;
    }

    v122 = v48;
    a5 = a4 >> 62;
    v117 = HIDWORD(a2) - a2;
    v49 = a4 == 0xC000000000000000 && a2 == 0;
    v116 = v49;
LABEL_79:
    if (v126)
    {
      a1 = MEMORY[0x2318FB480](v15, v9);
      v8 = a1;
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_205;
      }

      goto LABEL_85;
    }

    if (v15 >= *(v9 + 16))
    {
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      v22 = sub_22EFB67CC();
      continue;
    }

    break;
  }

  v8 = *(v9 + 8 * v15 + 32);

  v16 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    goto LABEL_205;
  }

LABEL_85:
  v50 = *(v8 + 32);
  v51 = *(v8 + 40);
  v52 = v51 >> 62;
  if (v51 >> 62 != 3)
  {
    if (v52 <= 1)
    {
      if (v52)
      {
        LODWORD(v56) = HIDWORD(v50) - v50;
        if (__OFSUB__(HIDWORD(v50), v50))
        {
          goto LABEL_212;
        }

        v56 = v56;
        if (a5 <= 1)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v56 = BYTE6(v51);
        if (a5 <= 1)
        {
          goto LABEL_104;
        }
      }

LABEL_108:
      if (a5 == 2)
      {
        v62 = *(a2 + 16);
        v61 = *(a2 + 24);
        v59 = __OFSUB__(v61, v62);
        v60 = v61 - v62;
        if (v59)
        {
          goto LABEL_209;
        }

        goto LABEL_110;
      }

      if (!v56)
      {
        goto LABEL_169;
      }

      goto LABEL_135;
    }

    if (v52 != 2)
    {
      goto LABEL_107;
    }

    v58 = *(v50 + 16);
    v57 = *(v50 + 24);
    v59 = __OFSUB__(v57, v58);
    v56 = v57 - v58;
    if (!v59)
    {
      if (a5 > 1)
      {
        goto LABEL_108;
      }

      goto LABEL_104;
    }

    __break(1u);
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  if (v50)
  {
    v53 = 0;
  }

  else
  {
    v53 = v51 == 0xC000000000000000;
  }

  v55 = !v53 || a4 >> 62 != 3;
  if (((v55 | v122) & 1) == 0)
  {
    goto LABEL_169;
  }

LABEL_107:
  v56 = 0;
  if (a5 > 1)
  {
    goto LABEL_108;
  }

LABEL_104:
  v60 = BYTE6(a4);
  if (a5)
  {
    v60 = v117;
    if (v118)
    {
      goto LABEL_208;
    }
  }

LABEL_110:
  if (v56 == v60)
  {
    if (v56 < 1)
    {
      goto LABEL_169;
    }

    if (v52 > 1)
    {
      if (v52 == 2)
      {
        v63 = *(v50 + 16);
        v64 = *(v50 + 24);
        v34 = sub_22EFB603C();
        if (v34)
        {
          v65 = sub_22EFB605C();
          if (__OFSUB__(v63, v65))
          {
            goto LABEL_252;
          }

          v34 += v63 - v65;
        }

        if (__OFSUB__(v64, v63))
        {
          goto LABEL_249;
        }

        sub_22EFB604C();
        a2 = a3;
        v7 = v129;
        sub_22EF92D44(v34, a3, a4, v135);
        v9 = v124;
        if (v135[0])
        {
          goto LABEL_169;
        }
      }

      else
      {
        memset(v135, 0, 14);
LABEL_134:
        v7 = v129;
        sub_22EF92D44(v135, a2, a4, v134);
        if (v134[0])
        {
          goto LABEL_169;
        }
      }
    }

    else
    {
      if (!v52)
      {
        v135[0] = *(v8 + 32);
        LOWORD(v135[1]) = v51;
        BYTE2(v135[1]) = BYTE2(v51);
        BYTE3(v135[1]) = BYTE3(v51);
        BYTE4(v135[1]) = BYTE4(v51);
        BYTE5(v135[1]) = BYTE5(v51);
        goto LABEL_134;
      }

      v66 = v50;
      if (v50 >> 32 < v50)
      {
        goto LABEL_248;
      }

      v34 = sub_22EFB603C();
      if (v34)
      {
        v67 = sub_22EFB605C();
        if (__OFSUB__(v66, v67))
        {
          goto LABEL_253;
        }

        v34 += v66 - v67;
      }

      v9 = v124;
      sub_22EFB604C();
      a2 = a3;
      v7 = v129;
      sub_22EF92D44(v34, a3, a4, v135);
      if (v135[0])
      {
LABEL_169:
        v79 = v136[0];
        if (!v136[0])
        {
          __break(1u);
          goto LABEL_262;
        }

        v80 = *(v8 + 16);
        v34 = *(v8 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_22EF7DED0(0, *(v79 + 2) + 1, 1, v79);
        }

        v82 = *(v79 + 2);
        v81 = *(v79 + 3);
        if (v82 >= v81 >> 1)
        {
          v79 = sub_22EF7DED0((v81 > 1), v82 + 1, 1, v79);
        }

        *(v79 + 2) = v82 + 1;
        v83 = &v79[16 * v82];
        *(v83 + 4) = v80;
        *(v83 + 5) = v34;
        v136[0] = v79;
        a2 = a3;
        v9 = v124;
        goto LABEL_78;
      }
    }
  }

LABEL_135:
  v34 = *(v8 + 128);
  v51 = *(v8 + 136);
  if (v51 >> 60 == 15)
  {
    sub_22EF70CB0(a2, a4);
    sub_22EF70CB0(v34, v51);

    sub_22EF708B4(v34, v51);
    sub_22EF708B4(a2, a4);
    goto LABEL_78;
  }

  v68 = v51 >> 62;
  if (v51 >> 62 == 3)
  {
    v69 = 0;
    if (a5 == 3 && !v34 && v51 == 0xC000000000000000)
    {
      if (v116)
      {
        sub_22EF70CB0(0, 0xC000000000000000);
        sub_22EF70CB0(0, 0xC000000000000000);
        v70 = 0;
        v71 = 0xC000000000000000;
LABEL_168:
        sub_22EF708B4(v70, v71);
        sub_22EF708B4(v34, v51);
        goto LABEL_169;
      }

LABEL_167:
      sub_22EF70CB0(a2, a4);
      sub_22EF70CB0(v34, v51);
      v70 = a2;
      v71 = a4;
      goto LABEL_168;
    }

LABEL_157:
    if (a5 <= 1)
    {
      goto LABEL_158;
    }

LABEL_145:
    if (a5 == 2)
    {
      v73 = *(a2 + 16);
      v72 = *(a2 + 24);
      v59 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v59)
      {
        goto LABEL_247;
      }

      goto LABEL_160;
    }

    if (!v69)
    {
      goto LABEL_167;
    }

LABEL_165:
    sub_22EF70CB0(a2, a4);
    sub_22EF70CB0(v34, v51);
    sub_22EF708B4(a2, a4);
    sub_22EF708B4(v34, v51);
LABEL_166:

LABEL_78:
    ++v15;
    v53 = v16 == v125;
    v16 = v130;
    if (v53)
    {
      goto LABEL_217;
    }

    goto LABEL_79;
  }

  if (v68 > 1)
  {
    if (v68 == 2)
    {
      v76 = *(v34 + 16);
      v75 = *(v34 + 24);
      v59 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      if (v59)
      {
        goto LABEL_251;
      }

      goto LABEL_157;
    }

    v69 = 0;
    if (a5 <= 1)
    {
      goto LABEL_158;
    }

    goto LABEL_145;
  }

  if (v68)
  {
    LODWORD(v69) = HIDWORD(v34) - v34;
    if (__OFSUB__(HIDWORD(v34), v34))
    {
      goto LABEL_250;
    }

    v69 = v69;
    goto LABEL_157;
  }

  v69 = BYTE6(v51);
  if (a5 > 1)
  {
    goto LABEL_145;
  }

LABEL_158:
  v74 = BYTE6(a4);
  if (a5)
  {
    v74 = v117;
    if (v118)
    {
      goto LABEL_246;
    }
  }

LABEL_160:
  if (v69 != v74)
  {
    goto LABEL_165;
  }

  if (v69 < 1)
  {
    goto LABEL_167;
  }

  if (v68 <= 1)
  {
    if (!v68)
    {
      v135[0] = *(v8 + 128);
      LOWORD(v135[1]) = v51;
      BYTE2(v135[1]) = BYTE2(v51);
      BYTE3(v135[1]) = BYTE3(v51);
      BYTE4(v135[1]) = BYTE4(v51);
      BYTE5(v135[1]) = BYTE5(v51);
      sub_22EF70CB0(a2, a4);
      sub_22EF70CB0(v34, v51);
      sub_22EF70CB0(a3, a4);
      sub_22EF70CB0(v34, v51);
      v7 = v129;
      sub_22EF92D44(v135, a3, a4, v134);
      sub_22EF708B4(a3, a4);
      sub_22EF708B4(v34, v51);
      v77 = a3;
      v78 = a4;
      a2 = a3;
      goto LABEL_187;
    }

    if (v34 >> 32 < v34)
    {
      goto LABEL_254;
    }

    sub_22EF70CB0(a3, a4);
    sub_22EF70CB0(v34, v51);
    sub_22EF70CB0(a3, a4);
    sub_22EF70CB0(v34, v51);
    v90 = sub_22EFB603C();
    if (v90)
    {
      v91 = sub_22EFB605C();
      if (__OFSUB__(v34, v91))
      {
        goto LABEL_258;
      }

      v90 += v34 - v91;
    }

    v9 = v124;
    sub_22EFB604C();
    v92 = v90;
    a2 = a3;
    v7 = v129;
    sub_22EF92D44(v92, a3, a4, v135);
    sub_22EF708B4(a3, a4);
    sub_22EF708B4(v34, v51);
    sub_22EF708B4(a3, a4);
    v93 = v135[0];
LABEL_188:
    sub_22EF708B4(v34, v51);
    if (v93)
    {
      goto LABEL_169;
    }

    goto LABEL_166;
  }

  if (v68 != 2)
  {
    memset(v135, 0, 14);
    sub_22EF70CB0(a2, a4);
    sub_22EF70CB0(v34, v51);
    sub_22EF70CB0(a2, a4);
    sub_22EF70CB0(v34, v51);
    v7 = v129;
    sub_22EF92D44(v135, a2, a4, v134);
    sub_22EF708B4(a2, a4);
    sub_22EF708B4(v34, v51);
    v77 = a2;
    v78 = a4;
LABEL_187:
    sub_22EF708B4(v77, v78);
    v93 = v134[0];
    goto LABEL_188;
  }

  v84 = *(v34 + 16);
  v115 = *(v34 + 24);
  sub_22EF70CB0(a2, a4);
  sub_22EF70CB0(v34, v51);
  sub_22EF70CB0(a2, a4);
  sub_22EF70CB0(v34, v51);
  v85 = sub_22EFB603C();
  if (!v85)
  {
    v88 = v84;
    v89 = 0;
LABEL_191:
    if (__OFSUB__(v115, v88))
    {
      goto LABEL_255;
    }

    sub_22EFB604C();
    a2 = a3;
    v7 = v129;
    sub_22EF92D44(v89, a3, a4, v135);
    sub_22EF708B4(a3, a4);
    sub_22EF708B4(v34, v51);
    sub_22EF708B4(a3, a4);
    v94 = v135[0];
    sub_22EF708B4(v34, v51);
    v9 = v124;
    if (v94)
    {
      goto LABEL_169;
    }

    goto LABEL_166;
  }

  v86 = v85;
  v87 = sub_22EFB605C();
  if (!__OFSUB__(v84, v87))
  {
    v88 = v84;
    v89 = v84 - v87 + v86;
    goto LABEL_191;
  }

  __break(1u);
LABEL_258:
  __break(1u);
  while (2)
  {
    v105 = sub_22EFB67CC();
    v34 = v105;
    v107 = v123;
    if (!v105)
    {
      goto LABEL_260;
    }

LABEL_232:
    v51 = 0;
    a2 = v107 & 0xC000000000000001;
    v108 = v107 & 0xFFFFFFFFFFFFFF8;
    v109 = MEMORY[0x277D84FA0];
    while (2)
    {
      if (a2)
      {
        v105 = MEMORY[0x2318FB480](v51);
        v110 = v105;
        v111 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        goto LABEL_238;
      }

      if (v51 >= *(v108 + 16))
      {
        goto LABEL_243;
      }

      v110 = *(v107 + 8 * v51 + 32);

      v111 = v51 + 1;
      if (!__OFADD__(v51, 1))
      {
LABEL_238:
        v112 = *(v110 + 168);
        if (v112)
        {
        }

        else
        {
          v112 = v109;
        }

        v105 = sub_22EF9B7D0(v112);
        ++v51;
        v107 = v123;
        if (v111 == v34)
        {
          goto LABEL_260;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    v113 = v34;
    v114 = v105;
    v106 = sub_22EFB67CC();
    v105 = v114;
    v34 = v113;
    if (v106 < v105)
    {
      goto LABEL_245;
    }

LABEL_222:
    sub_22EFA32EC(v105, v106);
    sub_22EF708B4(a2, a4);
    v51 = 0;
LABEL_223:
    a5 = v133;
    sub_22EFA3C5C(v133, v121, v120, v119 & 1);
    if (v34 || a4 >> 60 != 15 || (swift_beginAccess(), v136[0]))
    {

      return;
    }

    if (qword_27DA9E390 != -1)
    {
      goto LABEL_256;
    }

LABEL_228:
    sub_22EF84BEC(a5, v51, v121);
    if (v34)
    {

      return;
    }

    v132 = MEMORY[0x277D84F90];
    v107 = v123;
    if (v123 >> 62)
    {
      continue;
    }

    break;
  }

  v34 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v34)
  {
    goto LABEL_232;
  }

LABEL_260:

  sub_22EF70644(v121, v132);
}

void sub_22EFA75CC(void *a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22EF7E630(0xD000000000000012, 0x800000022EFC6DB0);
  if (v3 >> 60 == 15)
  {
    __break(1u);
  }

  v4 = v2;
  v5 = v3;
  v6 = sub_22EFB61BC();
  sub_22EF708B4(v4, v5);
  v7 = SelectByNameCmd(v6);

  v8 = sub_22EFB61DC();
  v10 = v9;

  v11 = sub_22EFB61BC();
  sub_22EF708C8(v8, v10);
  v23[0] = 0;
  v12 = [a1 transceive:v11 error:v23];

  v13 = v23[0];
  if (v12)
  {
    v14 = sub_22EFB61DC();
    sub_22EF708C8(v14, v15);
  }

  else
  {
    v16 = v13;
    v17 = sub_22EFB60EC();

    swift_willThrow();
    if (qword_27DA9E058 != -1)
    {
      swift_once();
    }

    v18 = sub_22EFB626C();
    __swift_project_value_buffer(v18, qword_27DAA03B8);
    v19 = sub_22EFB624C();
    v20 = sub_22EFB65CC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_22EF9447C(0xD000000000000083, 0x800000022EFC6DD0, v23);
      _os_log_impl(&dword_22EEF5000, v19, v20, "Function: %s -- Failed to transceive select CRS", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x2318FC200](v22, -1, -1);
      MEMORY[0x2318FC200](v21, -1, -1);
    }
  }
}

void sub_22EFA783C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6)
{
  LOBYTE(v7) = a6;
  LOBYTE(v8) = a5;
  if (qword_281477D68 != -1)
  {
    goto LABEL_83;
  }

LABEL_2:
  sub_22EF85014(a1, v7 & 1, a3);
  if (v6)
  {
    return;
  }

  v15 = v14;
  v45 = v7;
  v46 = a4;
  v48 = v8;
  v47 = a3;
  v49 = v12;
  v50 = v13;
  v6 = *(v14 + 16);

  v16 = v15 + 48;
  a3 = -v6;
  a4 = -1;
  while (a4 - v6 != -1)
  {
    if (++a4 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_79;
    }

    v17 = v16 + 24;

    LOBYTE(v7) = sub_22EF71944(v18);

    v16 = v17;
    if (v7)
    {

      swift_bridgeObjectRelease_n();
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      v19 = 0x800000022EFC6D40;
      v20 = 0xD000000000000023;
      goto LABEL_57;
    }
  }

  v8 = v50;
  v44 = a2;
  if (v50 >> 62)
  {
    v21 = sub_22EFB67CC();
  }

  else
  {
    v21 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v21)
  {
LABEL_28:

    v53 = v8;
    v51 = MEMORY[0x277D84F90];
    a2 = v49;
    if (v49 >> 62)
    {
      goto LABEL_86;
    }

    v27 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_30:

    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v7 = 0;
      a4 = a2 & 0xC000000000000001;
      a3 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (a4)
        {
          v29 = MEMORY[0x2318FB480](v7, a2);
          v8 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_41:
            __break(1u);
LABEL_42:
            v8 = v50;
            v28 = v51;
            break;
          }
        }

        else
        {
          if (v7 >= *(a3 + 16))
          {
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            v41 = a1;
            swift_once();
            a1 = v41;
            goto LABEL_2;
          }

          v29 = *(a2 + 8 * v7 + 32);

          v8 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_41;
          }
        }

        if (*(v29 + 161))
        {
          sub_22EFB673C();
          sub_22EFB676C();
          a2 = v49;
          sub_22EFB677C();
          a1 = sub_22EFB674C();
        }

        else
        {
        }

        ++v7;
        if (v8 == v27)
        {
          goto LABEL_42;
        }
      }
    }

    v52 = v28;
    a3 = v44;
    v6 = 0;
    v30 = v46;
    v31 = v48;
    if (v47)
    {
      if (v48)
      {
        *v46 = 1;
      }

      a2 = v8;
LABEL_53:
      sub_22EFA3C5C(a2, v44, v30, v31 & 1);
      if (qword_27DA9E390 == -1)
      {
LABEL_54:
        v36 = v52;
        sub_22EF84BEC(a2, v52, v44);
        if (v47)
        {
        }

        else
        {
          v51 = MEMORY[0x277D84F90];
          if (v49 >> 62)
          {
            v37 = sub_22EFB67CC();
          }

          else
          {
            v37 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v37)
          {
            v48 = v36;
            v38 = 0;
            while (1)
            {
              if ((v49 & 0xC000000000000001) != 0)
              {
                v6 = MEMORY[0x2318FB480](v38, v49);
                v8 = v38 + 1;
                if (__OFADD__(v38, 1))
                {
LABEL_76:
                  __break(1u);
LABEL_77:
                  v40 = v51;
                  a3 = v44;
                  goto LABEL_80;
                }
              }

              else
              {
                if (v38 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_86:
                  v27 = sub_22EFB67CC();
                  goto LABEL_30;
                }

                v6 = *(v49 + 8 * v38 + 32);

                v8 = v38 + 1;
                if (__OFADD__(v38, 1))
                {
                  goto LABEL_76;
                }
              }

              v39 = *(v6 + 168);
              if (v39)
              {
              }

              else
              {
                v39 = MEMORY[0x277D84FA0];
              }

              sub_22EF9B7D0(v39);
              ++v38;
              if (v8 == v37)
              {
                goto LABEL_77;
              }
            }
          }

LABEL_79:
          v40 = MEMORY[0x277D84F90];
LABEL_80:

          sub_22EF70644(a3, v40);
        }

        sub_22EFA75CC(a3);
        return;
      }

LABEL_89:
      swift_once();
      goto LABEL_54;
    }

    v32 = sub_22EFA011C(&v53, v45 & 1);
    if (v53 >> 62)
    {
      v42 = v32;
      v33 = sub_22EFB67CC();
      v32 = v42;
      if (v33 >= v42)
      {
LABEL_50:
        sub_22EFA32EC(v32, v33);
        v34 = sub_22EFA0404(&v52, v45 & 1);
        if (v52 >> 62)
        {
          v43 = v34;
          v35 = sub_22EFB67CC();
          v34 = v43;
          if (v35 >= v43)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v35 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v35 >= v34)
          {
LABEL_52:
            sub_22EFA32EC(v34, v35);
            a2 = v53;
            v30 = v46;
            v31 = v48;
            goto LABEL_53;
          }
        }

        __break(1u);
        return;
      }
    }

    else
    {
      v33 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33 >= v32)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
    goto LABEL_89;
  }

  v22 = 0;
  a2 = v50 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v50 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2318FB480](v22, v8);
      a3 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v22 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v7 = *(v8 + 8 * v22 + 32);

      a3 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    a4 = *(v7 + 112);
    v23 = *(v7 + 120);
    v24 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      break;
    }

    if (!v24)
    {

      v25 = (v23 & 0xFF000000000000) == 0;
      goto LABEL_22;
    }

    v26 = a4;
    a4 >>= 32;
LABEL_21:
    v25 = v26 == a4;
LABEL_22:
    v8 = v50;
    if (v25)
    {

      swift_bridgeObjectRelease_n();

      goto LABEL_56;
    }

    ++v22;
    if (a3 == v21)
    {
      goto LABEL_28;
    }
  }

  if (v24 == 2)
  {
    v26 = *(a4 + 16);
    a4 = *(a4 + 24);

    goto LABEL_21;
  }

  swift_bridgeObjectRelease_n();

LABEL_56:
  sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
  v20 = 0xD00000000000003ELL;
  v19 = 0x800000022EFC6D70;
LABEL_57:
  sub_22EF74470(v20, v19, 8, 0);
  swift_willThrow();
}

uint64_t sub_22EFA7FAC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2 >> 60 != 15)
  {
    sub_22EF708C8(result, a2);
    sub_22EF708C8(a4, a5);

    return sub_22EF708C8(a6, a7);
  }

  return result;
}

uint64_t sub_22EFA80DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22EFA814C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E778, &unk_22EFBD450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EFA81BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E768, &qword_22EFBD288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EFA822C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E768, &qword_22EFBD288);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EFA82C8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22EFB684C() & 1;
  }
}

uint64_t sub_22EFA8330(uint64_t *a1, int a2)
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

uint64_t sub_22EFA8378(uint64_t result, int a2, int a3)
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

unint64_t sub_22EFA83CC()
{
  result = qword_27DA9E7B8;
  if (!qword_27DA9E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E7B8);
  }

  return result;
}

uint64_t sub_22EFA845C(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_22EFAAFAC(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_22EFAB064(v3, v4);
    }

    else
    {
      v6 = sub_22EFAB0E0(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

uint64_t sub_22EFA8518(uint64_t a1)
{
  v44[5] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E768, &qword_22EFBD288);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E800, &qword_22EFBD430);
  MEMORY[0x28223BE20](v7);
  v9 = v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E808, &qword_22EFBD438);
  MEMORY[0x28223BE20](v10);
  v12 = v37 - v11;
  v40 = a1;
  *&v41 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E810, &unk_22EFBD440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E788, &qword_22EFBD2A8);
  if (swift_dynamicCast())
  {
    sub_22EEF729C(v42, v44);
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    sub_22EFB608C();
    v42[0] = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    goto LABEL_42;
  }

  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v13 = sub_22EF7CFF8(v42, &qword_27DA9E790, &qword_22EFBD2B0);
  v42[0] = xmmword_22EFBB8D0;
  MEMORY[0x28223BE20](v13);
  v37[-2] = &v40;
  sub_22EFA9028(sub_22EFACAD4, &v37[-4]);
  v14 = *&v9[*(v7 + 48)];
  sub_22EFACB94(v9, v12, &qword_27DA9E808, &qword_22EFBD438);
  v15 = *(&v42[0] + 1) >> 62;
  if ((*(&v42[0] + 1) >> 62) <= 1)
  {
    if (!v15)
    {
      if (v14 == BYTE14(v42[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (__OFSUB__(DWORD1(v42[0]), v42[0]))
    {
      goto LABEL_46;
    }

    if (v14 != DWORD1(v42[0]) - LODWORD(v42[0]))
    {
LABEL_13:
      if (v15 == 2)
      {
        v20 = *(*&v42[0] + 24);
      }

      else if (v15 == 1)
      {
        v20 = *&v42[0] >> 32;
      }

      else
      {
        v20 = BYTE14(v42[0]);
      }

      goto LABEL_40;
    }

LABEL_18:
    v37[0] = 0;
    v37[1] = a1;
    v21 = 0;
    memset(v44, 0, 15);
    v22 = *(v10 + 44);
LABEL_19:
    v38 = v21;
    while (1)
    {
      sub_22EFACBFC(&v12[v22], v6, &qword_27DA9E768, &qword_22EFBD288);
      v24 = sub_22EFB622C();
      v25 = *(v24 - 8);
      v26 = *(v25 + 48);
      v27 = v26(v6, 1, v24);
      sub_22EF7CFF8(v6, &qword_27DA9E768, &qword_22EFBD288);
      if (v27 != 1)
      {
        if (v26(&v12[v22], 1, v24) == 1)
        {
          goto LABEL_48;
        }

        sub_22EFACB2C(&qword_27DA9E480, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
        sub_22EFB661C();
        if (BYTE1(v41) != 1)
        {
          v34 = v38;
          *(v44 + v38) = v41;
          v21 = (v34 + 1);
          if ((v21 >> 8))
          {
            goto LABEL_47;
          }

          if ((v34 + 1) == 14)
          {
            *&v41 = v44[0];
            *(&v41 + 6) = *(v44 + 6);
            sub_22EFB617C();
            v21 = 0;
          }

          goto LABEL_19;
        }
      }

      v28 = *(v12 + 1);
      v29 = *(*v12 + 16);
      if (v28 == v29)
      {
        if (v38)
        {
          *&v41 = v44[0];
          *(&v41 + 6) = *(v44 + 6);
          sub_22EFB617C();
        }

        sub_22EF7CFF8(v12, &qword_27DA9E808, &qword_22EFBD438);
        goto LABEL_42;
      }

      if (v28 >= v29)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      v30 = *v12 + 16 * v28;
      v31 = *(v30 + 32);
      v32 = *(v30 + 40);
      *(v12 + 1) = v28 + 1;
      v33 = v32 >> 62;
      if ((v32 >> 62) > 1)
      {
        if (v33 == 2)
        {
LABEL_20:
          sub_22EF70B68(v31, v32);
        }
      }

      else if (v33)
      {
        goto LABEL_20;
      }

      v23 = v39;
      sub_22EFB623C();
      (*(v25 + 56))(v23, 0, 1, v24);
      sub_22EFA822C(v23, &v12[v22]);
    }
  }

  if (v15 == 2)
  {
    v17 = *(*&v42[0] + 16);
    v16 = *(*&v42[0] + 24);
    v18 = __OFSUB__(v16, v17);
    v19 = v16 - v17;
    if (v18)
    {
      goto LABEL_45;
    }

    if (v14 != v19)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v14)
  {
    goto LABEL_18;
  }

  v20 = 0;
LABEL_40:
  if (v20 < v14)
  {
    goto LABEL_44;
  }

  sub_22EFB616C();
  sub_22EF7CFF8(v12, &qword_27DA9E808, &qword_22EFBD438);
LABEL_42:
  v35 = v42[0];
  sub_22EF70B68(*&v42[0], *(&v42[0] + 1));

  sub_22EF708C8(v35, *(&v35 + 1));
  return v35;
}

uint64_t sub_22EFA8B7C()
{
  v14 = sub_22EFB637C();
  v0 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22EFB635C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22EFB636C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22EFB634C();
  __swift_allocate_value_buffer(v11, qword_27DA9E7C0);
  __swift_project_value_buffer(v11, qword_27DA9E7C0);
  (*(v8 + 104))(v10, *MEMORY[0x277CC5450], v7);
  (*(v4 + 104))(v6, *MEMORY[0x277CC5438], v3);
  (*(v0 + 104))(v2, *MEMORY[0x277CC5460], v14);
  return sub_22EFB633C();
}

id sub_22EFA8F84(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for OpaqueDataService(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22EFA9028(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v23 = *MEMORY[0x277D85DE8];
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_22EF708C8(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_22EFBB8D0;
      sub_22EF708C8(0, 0xC000000000000000);
      result = sub_22EFA932C(a1);
      v9 = v22;
      v10 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_22EF708C8(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      result = (a1)(&v22, &v22 + BYTE6(v5));
      v9 = v22;
      v10 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v9;
    v3[1] = v10;
    return result;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    return (a1)(&v22, &v22);
  }

  sub_22EF708C8(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_22EFBB8D0;
  sub_22EF708C8(0, 0xC000000000000000);
  sub_22EFB611C();
  v11 = *(&v22 + 1);
  v12 = *(v22 + 16);
  v13 = *(v22 + 24);
  result = sub_22EFB603C();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = sub_22EFB605C();
  v16 = v12 - v15;
  if (__OFSUB__(v12, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v13, v12);
  v18 = v13 - v12;
  if (v17)
  {
    goto LABEL_17;
  }

  v19 = sub_22EFB604C();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  result = (a1)(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v11 | 0x8000000000000000;
  return result;
}

uint64_t sub_22EFA92D8(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = (a1)(0, 0, 0, a4);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_22EFA932C(void (*a1)(uint64_t, uint64_t))
{
  result = sub_22EFB612C();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;

  result = sub_22EFB603C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  result = sub_22EFB605C();
  v7 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v5 - v4;
  v9 = sub_22EFB604C();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11(v6 + v7, v6 + v7 + v10);
}

uint64_t sub_22EFA9460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_22EFB68DC();
  a3(v10, a1, a2);
  v7 = sub_22EFB691C();

  return a4(a1, a2, v7);
}

unint64_t sub_22EFA94F4(uint64_t a1)
{
  v2 = sub_22EFB666C();

  return sub_22EFA99F0(a1, v2);
}

unint64_t sub_22EFA9538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22EFB684C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22EFA95F0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45[3] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_22EF70B68(v17, v16);
          sub_22EF92D44(v45, v9, v8, &v44);
          sub_22EF708C8(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_22EF70B68(v17, v16);
        v31 = sub_22EFB603C();
        if (v31)
        {
          v33 = sub_22EFB605C();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_22EF70B68(v17, v16);
        v31 = sub_22EFB603C();
        if (v31)
        {
          v32 = sub_22EFB605C();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        sub_22EFB604C();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_22EF92D44(v34, a1, a2, v45);
        sub_22EF708C8(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_22EF70B68(v17, v16);
      sub_22EF92D44(v45, v9, v8, &v44);
      sub_22EF708C8(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_22EFA99F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22EFACA78(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2318FB3F0](v9, a1);
      sub_22EFA0ECC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_22EFA9AB8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_22EFB63EC();
      sub_22EFACB2C(&qword_27DA9E418, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22EFB629C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22EFAA124(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5540], &qword_27DA9E418, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_22EFAA124(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5540], &qword_27DA9E418, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  }

  sub_22EFB63EC();
  sub_22EFACB2C(&qword_27DA9E418, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_22EFB629C();
}

uint64_t sub_22EFA9CDC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_22EFB63FC();
      sub_22EFACB2C(&qword_27DA9E7F8, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
      return sub_22EFB629C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22EFAA124(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5550], &qword_27DA9E7F8, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_22EFAA124(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5550], &qword_27DA9E7F8, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  }

  sub_22EFB63FC();
  sub_22EFACB2C(&qword_27DA9E7F8, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  return sub_22EFB629C();
}

uint64_t sub_22EFA9F00(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_22EFB640C();
      sub_22EFACB2C(&qword_27DA9E7F0, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
      return sub_22EFB629C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22EFAA124(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_27DA9E7F0, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_22EFAA124(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_27DA9E7F0, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  }

  sub_22EFB640C();
  sub_22EFACB2C(&qword_27DA9E7F0, MEMORY[0x277CC5560], MEMORY[0x277CC5558]);
  return sub_22EFB629C();
}

uint64_t sub_22EFAA124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  result = sub_22EFB603C();
  if (!result || (result = sub_22EFB605C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22EFB604C();
      a5(0);
      sub_22EFACB2C(a6, a7, a8);
      return sub_22EFB629C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22EFAA204(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_22EFAA300(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_22EF70B68(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_22EF70B68(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22EFAA464(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E768, &qword_22EFBD288);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E808, &qword_22EFBD438);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v45 = a4;
  *v14 = a4;
  *(v14 + 1) = 0;
  v16 = *(v15 + 52);
  v17 = sub_22EFB622C();
  v18 = *(v17 - 8);
  v41 = *(v18 + 56);
  v42 = v18 + 56;
  result = v41(&v14[v16], 1, 1, v17);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
    goto LABEL_24;
  }

  if (a3 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v38 = a2;
  v39 = a1;
  v20 = 0;
  v21 = 0;
  v46 = (v18 + 48);
  v22 = v45 + 40;
  v23 = 1;
  v35 = v45 + 40;
  v36 = a3;
  while (2)
  {
    v40 = v20;
    v37 = v23;
    for (i = (v22 + 16 * v21); ; i += 2)
    {
      v26 = v44;
      sub_22EFACBFC(&v14[v16], v44, &qword_27DA9E768, &qword_22EFBD288);
      v27 = *v46;
      v28 = (*v46)(v26, 1, v17);
      result = sub_22EF7CFF8(v26, &qword_27DA9E768, &qword_22EFBD288);
      if (v28 != 1)
      {
        result = v27(&v14[v16], 1, v17);
        if (result == 1)
        {
          goto LABEL_28;
        }

        sub_22EFACB2C(&qword_27DA9E480, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
        result = sub_22EFB661C();
        if (v48 != 1)
        {
          break;
        }
      }

      v29 = *(v45 + 16);
      if (v21 == v29)
      {
        goto LABEL_22;
      }

      if (v21 >= v29)
      {
        __break(1u);
        goto LABEL_27;
      }

      v30 = *(i - 1);
      v31 = *i;
      *(v14 + 1) = v21 + 1;
      v32 = v31 >> 62;
      if ((v31 >> 62) > 1)
      {
        if (v32 == 2)
        {
LABEL_6:
          sub_22EF70B68(v30, v31);
        }
      }

      else if (v32)
      {
        goto LABEL_6;
      }

      v25 = v43;
      sub_22EFB623C();
      v41(v25, 0, 1, v17);
      sub_22EFA822C(v25, &v14[v16]);
      ++v21;
    }

    v20 = v37;
    v33 = v38;
    *v38 = v47;
    a3 = v36;
    if (v20 != v36)
    {
      v38 = v33 + 1;
      v23 = v20 + 1;
      v22 = v35;
      if (!__OFADD__(v20, 1))
      {
        continue;
      }

      __break(1u);
LABEL_22:
      a1 = v39;
      a3 = v40;
      goto LABEL_24;
    }

    break;
  }

  a1 = v39;
LABEL_24:
  sub_22EFACB94(v14, a1, &qword_27DA9E808, &qword_22EFBD438);
  return a3;
}

void *sub_22EFAA814(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E768, &qword_22EFBD288);
  MEMORY[0x28223BE20](v14 - 8);
  v52 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = &v42 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E778, &unk_22EFBD450);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v42 - v19);
  *v20 = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v53 = a6;
  v20[4] = a6;
  v22 = *(v21 + 52);
  v23 = sub_22EFB622C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v56 = v23;
  v50 = v25;
  v51 = v24 + 56;
  result = (v25)(v20 + v22, 1, 1);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_25;
  }

  if (!a3)
  {
    goto LABEL_25;
  }

  if (a3 < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  v45 = a2;
  v46 = a1;
  v27 = 0;
  v55 = (v24 + 48);
  v28 = a7 >> 1;
  v29 = a5 + 8;
  v30 = 1;
  v31 = v53;
  v48 = a7 >> 1;
  v32 = v56;
  v42 = a5 + 8;
  v43 = a3;
  while (2)
  {
    v47 = v27;
    v44 = v30;
    v49 = v31;
    for (i = (v29 + 16 * v31); ; i += 2)
    {
      v35 = v54;
      sub_22EFACBFC(v20 + v22, v54, &qword_27DA9E768, &qword_22EFBD288);
      v36 = *v55;
      v37 = (*v55)(v35, 1, v32);
      result = sub_22EF7CFF8(v35, &qword_27DA9E768, &qword_22EFBD288);
      if (v37 != 1)
      {
        v32 = v56;
        result = v36(v20 + v22, 1, v56);
        if (result == 1)
        {
          goto LABEL_29;
        }

        sub_22EFACB2C(&qword_27DA9E480, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
        result = sub_22EFB661C();
        if (v58 != 1)
        {
          break;
        }
      }

      if (v28 == v31)
      {
        goto LABEL_23;
      }

      if (v49 < v53 || v31 >= v28)
      {
        __break(1u);
        goto LABEL_28;
      }

      v38 = *(i - 1);
      v39 = *i;
      v20[4] = v31 + 1;
      v40 = v39 >> 62;
      if ((v39 >> 62) > 1)
      {
        if (v40 == 2)
        {
LABEL_6:
          sub_22EF70B68(v38, v39);
        }
      }

      else if (v40)
      {
        goto LABEL_6;
      }

      v34 = v52;
      sub_22EFB623C();
      v32 = v56;
      v50(v34, 0, 1, v56);
      sub_22EFA822C(v34, v20 + v22);
      ++v31;
      v28 = v48;
    }

    v27 = v44;
    v41 = v45;
    *v45 = v57;
    a3 = v43;
    if (v27 != v43)
    {
      v45 = v41 + 1;
      v30 = v27 + 1;
      v29 = v42;
      if (!__OFADD__(v27, 1))
      {
        continue;
      }

      __break(1u);
LABEL_23:
      a1 = v46;
      a3 = v47;
      goto LABEL_25;
    }

    break;
  }

  a1 = v46;
LABEL_25:
  sub_22EFACB94(v20, a1, &qword_27DA9E778, &unk_22EFBD450);
  return a3;
}

void *sub_22EFAAC08(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v23 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v23;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v26 = result;
    v27 = a3;
    result = 0;
    v9 = 0;
    v25 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v28 = v9;
      v14 = a4;
      v15 = *(a4 + 48) + 56 * (__clz(__rbit64(v7)) | (v9 << 6));
      v16 = *v15;
      v7 &= v7 - 1;
      v17 = *(v15 + 24);
      v18 = *(v15 + 32);
      v19 = *(v15 + 40);
      v20 = *(v15 + 48);
      v21 = *(v15 + 8);
      *v8 = *v15;
      *(v8 + 8) = v21;
      *(v8 + 24) = v17;
      *(v8 + 32) = v18;
      *(v8 + 40) = v19;
      *(v8 + 48) = v20;
      if (v11 == v27)
      {
        sub_22EF70B68(v16, v21);
        sub_22EF70B68(v17, v18);
        sub_22EF70B68(v19, v20);
        v5 = v25;
        result = v26;
        a4 = v14;
        a3 = v27;
        v23 = v28;
        goto LABEL_24;
      }

      v8 += 56;
      sub_22EF70B68(v16, v21);
      sub_22EF70B68(v17, v18);
      sub_22EF70B68(v19, v20);
      result = v11;
      v22 = __OFADD__(v11++, 1);
      a4 = v14;
      v9 = v28;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v24 = v9 + 1;
    }

    else
    {
      v24 = v10;
    }

    v23 = v24 - 1;
    a3 = result;
    v5 = v25;
    result = v26;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22EFAADD8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E800, &qword_22EFBD430) + 48);

  result = sub_22EFAA464(a4, a1, a2, v7);
  *(a4 + v8) = result;
  return result;
}

unint64_t sub_22EFAAE54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4E8, &unk_22EFBD420);
    v3 = sub_22EFB67FC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22EFACBFC(v4, &v13, &qword_27DA9E5A8, &qword_22EFBC3C0);
      v5 = v13;
      v6 = v14;
      result = sub_22EFA9460(v13, v14, MEMORY[0x277D83758], sub_22EFA9538);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22EF76360(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_22EFAAFAC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_22EFAB064(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22EFB607C();
  swift_allocObject();
  result = sub_22EFB602C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22EFB614C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22EFAB0E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22EFB607C();
  swift_allocObject();
  result = sub_22EFB602C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22EFAB164(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E438, &qword_22EFBBC60);
  v10 = sub_22EFACA14();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_22EF72654(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

unint64_t sub_22EFAB214(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E508, &qword_22EFBC0F8);
    v3 = sub_22EFB67FC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_22EF70B68(v5, v6);
      result = sub_22EFA9460(v5, v6, MEMORY[0x277CC92D8], sub_22EFA95F0);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_22EFAB33C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4F8, &qword_22EFBC0E8);
    v3 = sub_22EFB67FC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22EFA9460(v5, v6, MEMORY[0x277D83758], sub_22EFA9538);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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